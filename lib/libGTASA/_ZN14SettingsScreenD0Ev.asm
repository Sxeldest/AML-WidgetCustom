; =========================================================
; Game Engine Function: _ZN14SettingsScreenD0Ev
; Address            : 0x29E3FC - 0x29E40C
; =========================================================

29E3FC:  PUSH            {R7,LR}
29E3FE:  MOV             R7, SP
29E400:  BLX             j__ZN10FlowScreenD2Ev; FlowScreen::~FlowScreen()
29E404:  POP.W           {R7,LR}
29E408:  B.W             j__ZdlPv; operator delete(void *)
