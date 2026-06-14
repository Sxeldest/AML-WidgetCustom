; =========================================================
; Game Engine Function: _ZN27CWidgetRegionBasketBallJump14OnInitialTouchEv
; Address            : 0x2BFEF8 - 0x2BFF0A
; =========================================================

2BFEF8:  PUSH            {R4,R6,R7,LR}
2BFEFA:  ADD             R7, SP, #8
2BFEFC:  MOV             R4, R0
2BFEFE:  BLX             j__ZN7CWidget14OnInitialTouchEv; CWidget::OnInitialTouch(void)
2BFF02:  MOVS            R0, #1
2BFF04:  STRB.W          R0, [R4,#0x90]
2BFF08:  POP             {R4,R6,R7,PC}
