; =========================================================
; Game Engine Function: _ZN12SelectScreenD0Ev
; Address            : 0x29EE58 - 0x29EE68
; =========================================================

29EE58:  PUSH            {R7,LR}
29EE5A:  MOV             R7, SP
29EE5C:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
29EE60:  POP.W           {R7,LR}
29EE64:  B.W             j__ZdlPv; operator delete(void *)
