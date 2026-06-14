; =========================================================
; Game Engine Function: _ZN15StartGameScreenD0Ev
; Address            : 0x2A7434 - 0x2A7444
; =========================================================

2A7434:  PUSH            {R7,LR}
2A7436:  MOV             R7, SP
2A7438:  BLX             j__ZN10FlowScreenD2Ev; FlowScreen::~FlowScreen()
2A743C:  POP.W           {R7,LR}
2A7440:  B.W             j__ZdlPv; operator delete(void *)
