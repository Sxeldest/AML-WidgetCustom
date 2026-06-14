; =========================================================
; Game Engine Function: _ZN24CWidgetRegionPoolEnglish9IsTouchedEP9CVector2D
; Address            : 0x2C1E0C - 0x2C1E24
; =========================================================

2C1E0C:  LDR             R1, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2C1E14)
2C1E0E:  LDR             R2, [R0,#0x78]
2C1E10:  ADD             R1, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2C1E12:  LDR             R1, [R1]; CWidget::m_pInitialTouchWidget ...
2C1E14:  LDR.W           R2, [R1,R2,LSL#2]
2C1E18:  MOVS            R1, #0
2C1E1A:  CMP             R0, R2
2C1E1C:  IT EQ
2C1E1E:  MOVEQ           R1, #1
2C1E20:  MOV             R0, R1
2C1E22:  BX              LR
