; =========================================================
; Game Engine Function: _ZN15CloudWaitScreenD0Ev
; Address            : 0x2A853A - 0x2A854A
; =========================================================

2A853A:  PUSH            {R7,LR}
2A853C:  MOV             R7, SP
2A853E:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A8542:  POP.W           {R7,LR}
2A8546:  B.W             j__ZdlPv; operator delete(void *)
