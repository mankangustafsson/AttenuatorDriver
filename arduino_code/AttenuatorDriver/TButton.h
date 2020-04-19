#ifndef TBUTTON_H
#define TBUTTON_H

class TButton
{
public:
  TButton(int pin, unsigned int onThreshold);
  bool Test();  
private:
  const int Pin;
  int LastState;
  unsigned int Threshold;
  bool Triggered;
  unsigned long TriggeredTimestamp;
};

#endif

