; =========================================================
; Game Engine Function: _ZN27CWidgetRegionPoolBallInHandD0Ev
; Address            : 0x2C1D96 - 0x2C1DA6
; =========================================================

2C1D96:  PUSH            {R7,LR}
2C1D98:  MOV             R7, SP
2C1D9A:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C1D9E:  POP.W           {R7,LR}
2C1DA2:  B.W             j__ZdlPv; operator delete(void *)
