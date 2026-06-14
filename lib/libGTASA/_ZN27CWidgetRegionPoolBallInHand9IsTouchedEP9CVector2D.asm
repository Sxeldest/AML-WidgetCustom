; =========================================================
; Game Engine Function: _ZN27CWidgetRegionPoolBallInHand9IsTouchedEP9CVector2D
; Address            : 0x2C1CF4 - 0x2C1D0C
; =========================================================

2C1CF4:  LDR             R1, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2C1CFC)
2C1CF6:  LDR             R2, [R0,#0x78]
2C1CF8:  ADD             R1, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2C1CFA:  LDR             R1, [R1]; CWidget::m_pInitialTouchWidget ...
2C1CFC:  LDR.W           R2, [R1,R2,LSL#2]
2C1D00:  MOVS            R1, #0
2C1D02:  CMP             R0, R2
2C1D04:  IT EQ
2C1D06:  MOVEQ           R1, #1
2C1D08:  MOV             R0, R1
2C1D0A:  BX              LR
