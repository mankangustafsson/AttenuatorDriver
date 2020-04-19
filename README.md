# AttenuatorDriver
Attenuator switch and relay driver similar to HP11713A/B. This project covers many firsts for me: First project using KiCad, first project published on github, first Python code (GPIB control) so please bear with me.

## Hardware
The HW design started out with the solenoid control of the attenuator switches inspired by the HP 33311 product overview pdf. After a while I decided to not care about the TTL output part and just trust the LED indicators.

Each attenuator solenoid is controlled by two ULN2803 outputs. 8 attenuators in total thus requires all outputs in two ULN2803:s.

To control coaxial relays I wanted to be able to handle latching relays that is controlled by polarity switching the coil voltage. For that task I found the SN754410 Quad Half-H Driver from Texas Instruments. There are cheaper circuits that can achieve this but this is the only one I found that could handle 28V coils.

To keep the micro controller I/O pin count as low as possible I decided to control the attenuators and relays drive circuits with plain old shift registers. So three 74HC595 gets the 24 output pin count down to just four.

I also wanted to keep my options open to which kind of display I would use, so that is why both I2C and SPI connectors are available. I ended up with an LCD1602 controlled via I2C. For input I wanted to mimic the HP 11713A so I wanted 10 push buttons so two R2R ladders handles five buttons each. But I also wanted to utilize the display and I find using rotary encoders with a push button quite powerful to navigate a simple UI.

### Power Supply
This can be improved but the current design works for me. The HW is fed with 12VDC and 24VDC to the ULN2803 controlling the first four attenuators. The second set of attenuators and the relays can also be feed directly with this 24V supply. Or they can have a lower voltage controlled by their individual LM317 voltage regulator. This mean that the first attenuator group decides the highest voltage that the other atteunators and relays can use.

To remedy this I would put one extra LM317 to control the voltage to the first attenuator group and remove the J6 and J7 jumpers. This way each attenuator group and the relay pair could have their coils voltages individually set.

### Patches
I made the faulty assumption about coaxial relays could control the LED the same way the attenuators did. They do not! So the remedy is to use two free micro controller pins (I use A1 and A2) to control the relay LED indicators. Depending on LEDs used the micro controller could probably drive them directly or you could still use Q3 and Q4 to sink the current. Regardless solution you select you need to remove R4 and R6.

## Arduino Software
First of all: Do not expect any compilation support from me. You are on your own. Arduino environment is messy when it comes to how it handles libraries used. I usually import the source code of the libraries I use into the project. However since I'm not the author of the [display library] I use you have to download it yourself. The current code also includes another library, Streaming, which I only used initially in this project so remove that include statement.

Second: Parts of the code is structured and easy to read. Some parts are not structured at all and poorly documented. I'm of the opinion that code should be written to be easy to understand by other programmers and therefore would not need much documentation. It is not currently in the "easy to understand" state.

## GPIB Control
In order to avoid the Arduino being reset every time you connect to the serial port, you need to remove the capacitor between the CH340 DTR pin and the Arduino reset pin. Note that this will make it harder to upload new software to the Arduino. You will need to push the reset button manually at the proper moment during code upload.

I've written some Python code using PyVisa to control the attenuators and relays.

[display library]:       http://www.mathertel.de/Arduino/LiquidCrystal_PCF8574.aspx

