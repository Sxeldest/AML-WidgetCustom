; =========================================================
; Game Engine Function: _ZN14MainMenuScreenD0Ev
; Address            : 0x29BFEC - 0x29BFFC
; =========================================================

29BFEC:  PUSH            {R7,LR}
29BFEE:  MOV             R7, SP
29BFF0:  BLX             j__ZN10FlowScreenD2Ev; FlowScreen::~FlowScreen()
29BFF4:  POP.W           {R7,LR}
29BFF8:  B.W             j__ZdlPv; operator delete(void *)
