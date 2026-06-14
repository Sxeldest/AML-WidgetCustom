; =========================================================
; Game Engine Function: _ZN10GameScreenD0Ev
; Address            : 0x2A4A84 - 0x2A4A94
; =========================================================

2A4A84:  PUSH            {R7,LR}
2A4A86:  MOV             R7, SP
2A4A88:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A4A8C:  POP.W           {R7,LR}
2A4A90:  B.W             j__ZdlPv; operator delete(void *)
