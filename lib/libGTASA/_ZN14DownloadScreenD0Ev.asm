; =========================================================
; Game Engine Function: _ZN14DownloadScreenD0Ev
; Address            : 0x2A7D90 - 0x2A7DA0
; =========================================================

2A7D90:  PUSH            {R7,LR}
2A7D92:  MOV             R7, SP
2A7D94:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A7D98:  POP.W           {R7,LR}
2A7D9C:  B.W             j__ZdlPv; operator delete(void *)
