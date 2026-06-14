; =========================================================
; Game Engine Function: _ZN11YesNoScreenD0Ev
; Address            : 0x2A8940 - 0x2A8950
; =========================================================

2A8940:  PUSH            {R7,LR}
2A8942:  MOV             R7, SP
2A8944:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A8948:  POP.W           {R7,LR}
2A894C:  B.W             j__ZdlPv; operator delete(void *)
