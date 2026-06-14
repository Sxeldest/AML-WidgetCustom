; =========================================================
; Game Engine Function: _ZN14ControlsScreenD0Ev
; Address            : 0x29EA08 - 0x29EA18
; =========================================================

29EA08:  PUSH            {R7,LR}
29EA0A:  MOV             R7, SP
29EA0C:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
29EA10:  POP.W           {R7,LR}
29EA14:  B.W             j__ZdlPv; operator delete(void *)
