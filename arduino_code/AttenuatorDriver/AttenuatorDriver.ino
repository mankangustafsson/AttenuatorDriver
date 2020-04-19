#include <Streaming.h>
#include "LiquidCrystal_PCF8574.h"
#include "TButton.h"

const int SER_DATA = 7;
const int SER_CLK = 8;
const int SER_LATCH = 9;
const int SER_ENABLE = A0;

const int BUTTONS_G1 = A6;
const int BUTTONS_G2 = A7;

const int RELAY_1_LED = A1;
const int RELAY_2_LED = A2;

const int ENCODER_DATA = 2;
const int ENCODER_CLK = 3;
const int ENCODER_BTN = 4;

const int POWER_LED = 5;

const int SPI_CE = 12;

class TRelayDriver
{
public:
  TRelayDriver()
  {
    pinMode(SER_DATA, OUTPUT);
    pinMode(SER_CLK, OUTPUT);
    pinMode(SER_LATCH, OUTPUT);
    pinMode(SER_ENABLE, OUTPUT);
    digitalWrite(SER_ENABLE, LOW);
    Send(0x00, 0x00, 0x00, true);
  }

  void Set(uint8_t att1, uint8_t att2, bool relay1, bool relay2)
  {
    // char msg[100];
    // sprintf(msg, "Setting 0x%02x 0x%02x %u %u\n", att1, att2, relay1, relay2);
    // Serial << msg;
    if (att1 != Attenuator1
        || att2 != Attenuator2
        || relay1 != Relay1
        || relay2 != Relay2) {
      uint8_t relayData = 0;
      if (relay1 != Relay1) {
        relayData |= relay1 ? 0x21 : 0x03;
      }
      // Always set relay 2, and no need to pull the other way
      relayData |= relay2 ? 0x44 : 0x00; //0x50;
      // Only send changed bits for attenuators
      Send(att1 & (att1 ^ Attenuator1),
           att2 & (att2 ^ Attenuator2),
           relayData, true);
      Attenuator1 = att1;
      Attenuator2 = att2;
      Relay1 = relay1;
      Relay2 = relay2;
      // Relay 2 is non-latching so keep pulling
      relayData = Relay2 ? 0x44 : 0x00;
      delay(150);
      Send(0x00, 0x00, relayData, true);
    }
  }
private:    
  void Send(uint8_t data0, uint8_t data1, uint8_t data2, bool silent = false)
  {
    if (!CheckAttenuator(data0)
        || !CheckAttenuator(data1)
        || !CheckRelays(data2)) {
      return;
    }
    if (!silent) {
      char msg[100];
      sprintf(msg, "Sending 0x%02x 0x%02x 0x%02x\n", data0, data1, data2);
      Serial << msg;
    }
    digitalWrite(SER_LATCH, LOW);
    shiftOut(SER_DATA, SER_CLK, LSBFIRST, data2);
    shiftOut(SER_DATA, SER_CLK, LSBFIRST, data1);
    shiftOut(SER_DATA, SER_CLK, LSBFIRST, data0);
    digitalWrite(SER_LATCH, HIGH);
  }

  bool CheckAttenuator(uint8_t data)
  {
    uint8_t check = (data & (data << 1)) & 0b10101010;
    if (check != 0) {
      char msg[100];
      sprintf(msg, "Invalid attenuator setting: 0x%02x\n", data);
      Serial << msg;
      return false;
    }
    return true;
  }

  bool CheckRelays(uint8_t data)
  {
    if (((data & 0x01) != 0                // If RELAY_1_EN high
         && (data & 0x22) == 0x22)         // Both RELAY_1A and 1B can't be high
        || (((data & 0x40) != 0            // or if RELAY_2_EN high
             && (data & 0x14) == 0x14))) { // Both RELAY_2A and 2B can't be high
      char msg[100];
      sprintf(msg, "Invalid relay setting: 0x%02x\n", data);
      Serial << msg;
      return false;
    }
    return true;
  }

  uint8_t Attenuator1 = 0;
  uint8_t Attenuator2 = 0;
  bool Relay1 = false;
  bool Relay2 = false;
};

class TButtonGroup
{
public:
  TButtonGroup(int inputPin)
    : InputPin(inputPin)
  {
    pinMode(InputPin, INPUT);
    uint8_t t;
    GetStatus(t);
  }
  bool GetStatus(uint8_t& status)
  {
    unsigned long currentStamp = millis();
    int16_t v = analogRead(InputPin);
    if (abs(v - LastState) > 8) {
      LastState = v;
      StableTime = currentStamp;
    }
    else if ((currentStamp - StableTime) > 300) {
      status = 0;
      for (int16_t n = 4; n >= 0; --n) {
        uint16_t bit = 1 << (n + 5);
        if (v > (bit - 8)) {
          status |= (1 << (4-n));
          v -= (bit - 3);
          if (v < 0) {
            v = 0;
          }
        }
      }
      return true;
    }
    return false;
  }
private:
  int InputPin;
  unsigned long StableTime;
  int16_t LastState = 0;
};

TRelayDriver Driver;
LiquidCrystal_PCF8574 Display(0x27);
TButtonGroup Buttons[2] = { TButtonGroup(BUTTONS_G1),
                            TButtonGroup(BUTTONS_G2) };
uint16_t ButtonStatus = 0;
TButton EncoderButton(ENCODER_BTN, 30);

enum TMode
{
 MODE_INIT,
 MODE_BUTTONS,
 MODE_ENCODER,
 MODE_REMOTE
};

TMode Mode = MODE_INIT;
uint8_t AttenuationMap[10] = { 40, 40, 20, 10, 4, 4, 2, 1, 0, 0};
int16_t SelectAttenuation;
int16_t SelectRelays;
int16_t encoder = 0;

void CheckRemoteMessage()
{
  // Process incoming data
  String s;
  bool received = false;
  while (Serial.available() > 0 && !received) {
    char c = Serial.read();
    switch (c) {
    case 0:
    case 10:
    case ' ': // remove spaces and tabs in incoming data
    case '\t':
      break;
    case 13:
      received = true;
      break;
    default:
      s += c;
      break;
    }
  }
  if (s.length() == 0) {
    return;
  }
  Mode = MODE_REMOTE;
  UpdateDisplay(ButtonStatus);
  uint16_t buttonStatus = ButtonStatus;

  s.toUpperCase();
  //Serial << "s " << s << endl;
  while (s.length() > 0) {
    if (s.startsWith("ID") || s.startsWith("*IDN?")) {
      Serial << "HP11713AB SA5PMG edition v1.0\n";
    }
    else if (s.startsWith("PR")) {
      Mode = MODE_BUTTONS;
      buttonStatus = 0;
    }
    else if (s.startsWith("ATT")) {
      // 11713B attenuator commands here
      auto j = s.indexOf(':');
      if (j == -1) {
        goto next;
      }
      String t = s.substring(j + 1);

      if (t.startsWith("BANK1:")
          || t.startsWith(":")) {
        auto k = t.indexOf(':');
        t = t.substring(k + 1);
      }
      if (t.startsWith("X")
          || t.startsWith("Y")) {
        if (t.charAt(1) == '?') {
          int o = t.charAt(0) == 'Y' ? 4 : 0;
          unsigned int attenuation = 0;
          for (int n = 0 + o; n < 4 + o; ++n) {
            if ((buttonStatus & (1 << n)) != 0) {
              attenuation += AttenuationMap[n];
            }
          }
          Serial << "Att " << t.charAt(0) << ": " << attenuation << endl;
        }
        else {
          String as;
          for (int n = 1; n < t.length(); ++n) {
            auto c = t.charAt(n);
            if (isDigit(c)) {
              as += c;
            }
            else {
              break;
            }
          }
          if (as.length() > 0) {
            unsigned int attenuation = as.toInt();
            Serial << "Att " << t.charAt(0) << ": " << attenuation << endl;
            if (t.charAt(0) == 'X'
                && (attenuation % 10) == 0
                && attenuation <= 110) {
              for (int n = 0; n < 4; ++n) {
                if (attenuation >= AttenuationMap[n]) {
                  buttonStatus |= (1 << n);
                  attenuation -= AttenuationMap[n];
                }
                else {
                  buttonStatus &= 0xffff ^ (1 << n);
                }
              }
            }
            else if (t.charAt(0) == 'Y'
                     && attenuation <= 11) {
              for (int n = 4; n < 8; ++n) {
                if (attenuation >= AttenuationMap[n]) {
                  buttonStatus |= (1 << n);
                  attenuation -= AttenuationMap[n];
                }
                else {
                  buttonStatus &= 0xffff ^ (1 << n);
                }
              }
            }
          }
        }
      }
    }
    else if (s.startsWith(":ROUT")
             || s.startsWith(":CLOS")
             || s.startsWith(":OPE")) {
      // 11713B switch(relay) commands here
      auto i = s.indexOf('@');
      if (i == -1) {
        goto next;
      }
      bool closing = false;
      bool found = false;
      if (s.indexOf(":CLOS") != -1) {
        closing = true;
        found = true;
      }
      if (s.indexOf(":OPE") != -1) {
        found = true;
        if (closing) {
          goto next;
        }
      }
      if (!found) {
        goto next;
      }
      String t = s.substring(i + 1);
      auto j = t.indexOf(':');
      if (j == -1) {
        // explicit channels
        for (int n = 0; n < t.length() - 3; n += 4) {
          int channel = t.substring(n, n + 3).toInt() - 101;
          if (channel >= 0 && channel < 10) {
            if (closing) {
              buttonStatus |= (1 << channel);
            }
            else {
              buttonStatus &= 0xffff ^ (1 << channel);
            }
          }
        }
      }
      else {
        // channel range
        int from = t.substring(0, j).toInt() - 101;
        if (from >= 0 && (j + 4) <= t.length()) {
          int to = t.substring(j + 1, j + 4).toInt() - 101;
          if (to < 10) {
            for (int n = from; n <= to; ++n) {
              if (closing) {
                buttonStatus |= (1 << n);
              }
              else {
                buttonStatus &= 0xffff ^ (1 << n);
              }
            }
          }
        }
      }
    }
    else {
      // 11713A Ax By commands
      int on = 0;
      int off = 0;
      enum TState { CMD, ON, OFF, END };
      TState state = CMD;

      for (int n = 0; n < s.length(); ++n) {
        char c = s.charAt(n);
        switch (state) {
        case CMD:
          switch (c) {
          case 'A':
            state = ON;
            break;
          case 'B':
            state = OFF;
            break;
          default:
            state = END;
            break;
          }
          break;
        case ON:
        case OFF:
          if (isDigit(c)) {
            uint16_t bit = c - '0';
            bit = bit == 0 ? 9 : --bit;
            if (state == ON) {
              buttonStatus |= (1 << bit);
            }
            else {
              buttonStatus &= (0xffff ^ (1 << bit));
            }
          }
          else {
            state = CMD;
            --n;
          }
          break;
        case END:
          n += s.length();
          //Serial << "Parse error at " << n << " in " << as << endl;
          break;
        }
      }
    }
  next:
    auto i = s.indexOf(';');
    if (i == -1) {
      break;
    }
    s = s.substring(i + 1);
  }

  if (buttonStatus != ButtonStatus) {
    SetOutputs(buttonStatus);
    UpdateDisplay(buttonStatus);
    ButtonStatus = buttonStatus;
  }
}

void setup()
{
  analogReference(DEFAULT);
  pinMode(RELAY_1_LED, OUTPUT);
  digitalWrite(RELAY_1_LED, LOW);
  pinMode(RELAY_2_LED, OUTPUT);
  digitalWrite(RELAY_2_LED, LOW);
  pinMode(ENCODER_DATA, INPUT_PULLUP);
  pinMode(ENCODER_CLK, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(ENCODER_CLK), update_encoder, CHANGE);
  attachInterrupt(digitalPinToInterrupt(ENCODER_DATA), update_encoder, CHANGE);
  pinMode(POWER_LED, OUTPUT);
  digitalWrite(POWER_LED, HIGH);
  pinMode(SPI_CE, OUTPUT);
  digitalWrite(SPI_CE, LOW);
  Serial.begin(115200);
  Display.begin(16,2);
  Display.setBacklight(255);
  Display.print("SA5PMG HP11713AB");
  Display.setCursor(0, 1);
  Display.print(__DATE__);
  delay(1200);
}

void UpdateDisplay(uint16_t buttonStatus)
{
  String buttonString;
  uint8_t attenuation = 0;
  for (int n = 0; n < 10; ++n) {
    if ((buttonStatus & (1 << n)) != 0) {
      buttonString += String((n + 1) % 10, DEC);
      attenuation += AttenuationMap[n];
    }
    else {
      buttonString += ' ';
    }
    if ((n + 1) % 4 == 0) {
      buttonString += ' ';
    }
  }
  switch (Mode) {
  case MODE_INIT:
    Mode = MODE_BUTTONS;
    // fall thru
  case MODE_BUTTONS:
    buttonString += " BTN";
    break;
  case MODE_ENCODER:
    buttonString += " ENC";
    break;
  case MODE_REMOTE:
    buttonString += " REM";
    break;
  }
  char msg[100];
  sprintf(msg, "Attenuation: %3d\0", attenuation);
  Display.noCursor();
  Display.setCursor(0, 0);
  Display.print(msg);
  Display.setCursor(0, 1);
  Display.print(buttonString);
}

uint8_t ConvertToAttenuator(uint8_t buttonStatus)
{
  if ((buttonStatus & 0xf0) != 0) {
    Serial << "Invalid button status " << buttonStatus << endl;
    return 0;
  }
  uint8_t attenuator = 0;
  for (int n = 0; n < 4; ++n) {
    attenuator |= (buttonStatus & (1 << n)) != 0 ?
      1 << (7 - (2 * n + 1)) : 1 << (7 - 2 * n);
  }
  return attenuator;
}

void SetOutputs(uint16_t buttonStatus)
{
  uint8_t att1 = ConvertToAttenuator(buttonStatus & 0x0f);
  uint8_t att2 = ConvertToAttenuator((buttonStatus >> 4) & 0x0f);
  bool relay1 = buttonStatus & 0x100;
  bool relay2 = buttonStatus & 0x200;
  digitalWrite(RELAY_1_LED, relay1 ? HIGH : LOW);
  digitalWrite(RELAY_2_LED, relay2 ? HIGH : LOW);
  Driver.Set(att1, att2, relay1, relay2);
}

inline int8_t read_encoder()
{
  int8_t enc_states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
  static uint8_t old_AB = 0;
  old_AB <<= 2;                 
  old_AB |= ( (PIND >> 2) & 0x03 );
  return enc_states[(old_AB & 0x0f)];
}

void update_encoder()
{
  encoder -= read_encoder();
}

bool read_button()
{
  static bool s = false;
  bool b = EncoderButton.Test();
  if (b != s) {
    s = b;
    if (!s) {
      return true;
    }
  }
  return false;
}

enum TEncoderState
{
   STATE_ATT,
   STATE_RELAY,
   STATE_SET
};
TEncoderState EncoderState;
enum TEncoderSetState
{
   SET_OK,
   SET_CANCEL,
   SET_EXIT
};
TEncoderSetState EncoderSetState = SET_OK;

void EnterEncoderMode()
{
  Mode = MODE_ENCODER;
  EncoderState = STATE_ATT;
  EncoderSetState = SET_OK;
  SelectAttenuation = 0;
  for (int n = 0; n < 8; ++n) {
    if ((ButtonStatus & (1 << n)) != 0) {
      SelectAttenuation += AttenuationMap[n];
    }
  }
  SelectRelays = ButtonStatus & 0x300;
}

void loop()
{
  uint8_t b1;
  uint8_t b2;
  uint16_t buttonStatus = ButtonStatus;
  if (Buttons[0].GetStatus(b1)
      && Buttons[1].GetStatus(b2)) {
    buttonStatus = (b2 << 5) | b1;
  }
  if (Mode == MODE_INIT
      || (Mode == MODE_BUTTONS
          && buttonStatus != ButtonStatus)) {
    ButtonStatus = buttonStatus;
    if (Mode == MODE_BUTTONS) {
      SetOutputs(buttonStatus);
    }
    UpdateDisplay(buttonStatus);
  }
  CheckRemoteMessage();

  bool updateScreen = false;
  bool buttonClick = read_button();
  if (buttonClick && Mode != MODE_ENCODER) {
    EnterEncoderMode();
    buttonClick = false;
    updateScreen = true;
  }

  if (Mode == MODE_ENCODER) {
    if (buttonClick) {
      updateScreen = true;
      switch (EncoderState) {
      case STATE_ATT:
        EncoderState = STATE_RELAY;
        break;
      case STATE_RELAY:
        EncoderState = STATE_SET;
        break;
      case STATE_SET:
        switch(EncoderSetState) {
        case SET_OK:
          {
            buttonStatus = 0;
            int16_t attenuation = SelectAttenuation;
            for (int n = 0; n < 8; ++n) {
              if (attenuation >= AttenuationMap[n]) {
                buttonStatus |= (1 << n);
                attenuation -= AttenuationMap[n];
              }
              else {
                buttonStatus &= (0xffff ^ (1 << n));
              }
            }
            buttonStatus |= SelectRelays;
            if (buttonStatus != ButtonStatus) {
              ButtonStatus = buttonStatus;
              SetOutputs(buttonStatus);
            }
            EncoderState = STATE_ATT;
          }
          break;
        case SET_CANCEL:
          EnterEncoderMode();
          break;
        case SET_EXIT:
          Mode = MODE_INIT;
          goto end_of_loop;
          break;
        }
      }
    }
    static uint16_t current = 0;
    int16_t delta = (encoder - current);
    if (delta != 0 && !buttonClick) {
      updateScreen = true;
      current = encoder;
      switch (EncoderState) {
      case STATE_ATT:
        SelectAttenuation += delta;
        SelectAttenuation = SelectAttenuation > 121 ? 121 : SelectAttenuation;
        SelectAttenuation = SelectAttenuation < 0 ? 0 : SelectAttenuation;
        break;
      case STATE_RELAY:
        if (delta > 0) {
          SelectRelays = (SelectRelays + 0x100) & 0x300;
        }
        else {
          SelectRelays = (SelectRelays - 0x100) & 0x300;
        }
        break;
      case STATE_SET:
        switch (EncoderSetState) {
        case SET_OK:
          EncoderSetState = (delta > 0) ? SET_CANCEL : SET_EXIT;
          break;
        case SET_CANCEL:
          EncoderSetState = (delta > 0) ? SET_EXIT : SET_OK;
          break;
        case SET_EXIT:
          EncoderSetState = (delta > 0) ? SET_OK : SET_CANCEL;
          break;
        }
      }
    }
    if (updateScreen) {
      char msg[100];
      sprintf(msg, "Attenuation: %3d\0", SelectAttenuation);
      Display.cursor();
      Display.setCursor(0, 0);
      Display.print(msg);
      Display.setCursor(0, 1);
      Display.print("Switch:");
      Display.print(SelectRelays & 0x100 ? '9' : '_');
      Display.print(SelectRelays & 0x200 ? '0' : '_');
      switch (EncoderSetState) {
      case SET_OK: 
        Display.print("    Set");
        break;
      case SET_CANCEL:
        Display.print(" Cancel");
        break;
      case SET_EXIT:
        Display.print("   Exit");
        break;
      }
      switch (EncoderState) {
      case STATE_ATT:
        Display.setCursor(15, 0);
        break;
      case STATE_RELAY:
        Display.setCursor(6, 1);
        break;
      case STATE_SET:
        Display.setCursor(15, 1);
        break;
      }
    }
  }
 end_of_loop:
  delay(20);
}
