; =========================================================
; Game Engine Function: _ZN27CWidgetRegionBasketBallJumpD0Ev
; Address            : 0x2BFF10 - 0x2BFF20
; =========================================================

2BFF10:  PUSH            {R7,LR}
2BFF12:  MOV             R7, SP
2BFF14:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BFF18:  POP.W           {R7,LR}
2BFF1C:  B.W             j__ZdlPv; operator delete(void *)
