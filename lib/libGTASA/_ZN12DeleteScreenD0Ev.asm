; =========================================================
; Game Engine Function: _ZN12DeleteScreenD0Ev
; Address            : 0x2A7A32 - 0x2A7A42
; =========================================================

2A7A32:  PUSH            {R7,LR}
2A7A34:  MOV             R7, SP
2A7A36:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A7A3A:  POP.W           {R7,LR}
2A7A3E:  B.W             j__ZdlPv; operator delete(void *)
