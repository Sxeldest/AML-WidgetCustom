; =========================================================
; Game Engine Function: _ZN11BriefScreenD0Ev
; Address            : 0x2A6EA4 - 0x2A6EB4
; =========================================================

2A6EA4:  PUSH            {R7,LR}
2A6EA6:  MOV             R7, SP
2A6EA8:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A6EAC:  POP.W           {R7,LR}
2A6EB0:  B.W             j__ZdlPv; operator delete(void *)
