; =========================================================
; Game Engine Function: _ZN11StatsScreenD0Ev
; Address            : 0x2A5FF8 - 0x2A6008
; =========================================================

2A5FF8:  PUSH            {R7,LR}
2A5FFA:  MOV             R7, SP
2A5FFC:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A6000:  POP.W           {R7,LR}
2A6004:  B.W             j__ZdlPv; operator delete(void *)
