#include "TButton.h"

#include <Arduino.h>

TButton::TButton(int pin, unsigned int threshold)
: Pin(pin),
  LastState(HIGH),
  Threshold(threshold),
  Triggered(false)
{
  pinMode(pin, INPUT_PULLUP);
  Test();
}

bool TButton::Test()
{
  uint8_t currentState = digitalRead(Pin);
  unsigned long currentStamp = millis();
  if ((LastState == HIGH && currentState == LOW)
       || (LastState == LOW && currentState == HIGH)) {
    unsigned int threshold = currentState == HIGH ? Threshold : Threshold ;
    if (!Triggered) {
      Triggered = true;
      TriggeredTimestamp = currentStamp;
    }
    else if ((currentStamp - TriggeredTimestamp) > threshold) {
      LastState = currentState;
      Triggered = false;
    }
  }
  else {
    Triggered = false;
  }
  return LastState == LOW;
}
