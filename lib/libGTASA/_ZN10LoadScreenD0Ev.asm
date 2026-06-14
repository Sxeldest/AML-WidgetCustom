; =========================================================
; Game Engine Function: _ZN10LoadScreenD0Ev
; Address            : 0x2A7520 - 0x2A7530
; =========================================================

2A7520:  PUSH            {R7,LR}
2A7522:  MOV             R7, SP
2A7524:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A7528:  POP.W           {R7,LR}
2A752C:  B.W             j__ZdlPv; operator delete(void *)
