; =========================================================
; Game Engine Function: _ZN10SaveScreenD0Ev
; Address            : 0x2A80FC - 0x2A810C
; =========================================================

2A80FC:  PUSH            {R7,LR}
2A80FE:  MOV             R7, SP
2A8100:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A8104:  POP.W           {R7,LR}
2A8108:  B.W             j__ZdlPv; operator delete(void *)
