; =========================================================
; Game Engine Function: _ZN8OkScreenD0Ev
; Address            : 0x2A8B9C - 0x2A8BAC
; =========================================================

2A8B9C:  PUSH            {R7,LR}
2A8B9E:  MOV             R7, SP
2A8BA0:  BLX             j__ZN12SelectScreenD2Ev; SelectScreen::~SelectScreen()
2A8BA4:  POP.W           {R7,LR}
2A8BA8:  B.W             j__ZdlPv; operator delete(void *)
