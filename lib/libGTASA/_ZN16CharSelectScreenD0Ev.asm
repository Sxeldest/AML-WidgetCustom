; =========================================================
; Game Engine Function: _ZN16CharSelectScreenD0Ev
; Address            : 0x29EE48 - 0x29EE58
; =========================================================

29EE48:  PUSH            {R7,LR}
29EE4A:  MOV             R7, SP
29EE4C:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
29EE50:  POP.W           {R7,LR}
29EE54:  B.W             j__ZdlPv; operator delete(void *)
