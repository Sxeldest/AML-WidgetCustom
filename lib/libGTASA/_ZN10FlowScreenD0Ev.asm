; =========================================================
; Game Engine Function: _ZN10FlowScreenD0Ev
; Address            : 0x29D2F4 - 0x29D304
; =========================================================

29D2F4:  PUSH            {R7,LR}
29D2F6:  MOV             R7, SP
29D2F8:  BLX             j__ZN10FlowScreenD2Ev; FlowScreen::~FlowScreen()
29D2FC:  POP.W           {R7,LR}
29D300:  B.W             j__ZdlPv; operator delete(void *)
