; =========================================================
; Game Engine Function: _ZN16SaveSelectScreenD0Ev
; Address            : 0x2A7538 - 0x2A7548
; =========================================================

2A7538:  PUSH            {R7,LR}
2A753A:  MOV             R7, SP
2A753C:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A7540:  POP.W           {R7,LR}
2A7544:  B.W             j__ZdlPv; operator delete(void *)
