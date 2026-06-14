; =========================================================
; Game Engine Function: _ZN13DisplayScreenD0Ev
; Address            : 0x2A4C24 - 0x2A4C34
; =========================================================

2A4C24:  PUSH            {R7,LR}
2A4C26:  MOV             R7, SP
2A4C28:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A4C2C:  POP.W           {R7,LR}
2A4C30:  B.W             j__ZdlPv; operator delete(void *)
