; =========================================================
; Game Engine Function: _ZN14LanguageScreenD0Ev
; Address            : 0x2A5E18 - 0x2A5E28
; =========================================================

2A5E18:  PUSH            {R7,LR}
2A5E1A:  MOV             R7, SP
2A5E1C:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A5E20:  POP.W           {R7,LR}
2A5E24:  B.W             j__ZdlPv; operator delete(void *)
