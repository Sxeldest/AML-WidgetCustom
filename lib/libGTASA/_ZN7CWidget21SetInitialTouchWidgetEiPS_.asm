; =========================================================
; Game Engine Function: _ZN7CWidget21SetInitialTouchWidgetEiPS_
; Address            : 0x2B3798 - 0x2B37BA
; =========================================================

2B3798:  LDR             R2, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B37A0)
2B379A:  CMP             R1, #0
2B379C:  ADD             R2, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B379E:  LDR             R2, [R2]; CWidget::m_pInitialTouchWidget ...
2B37A0:  STR.W           R1, [R2,R0,LSL#2]
2B37A4:  IT EQ
2B37A6:  BXEQ            LR
2B37A8:  LDR             R2, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B37B0)
2B37AA:  STR             R0, [R1,#0x78]
2B37AC:  ADD             R2, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B37AE:  LDR             R2, [R2]; CWidget::m_pInitialTouchWidget ...
2B37B0:  LDR.W           R0, [R2,R0,LSL#2]
2B37B4:  LDR             R1, [R0]
2B37B6:  LDR             R1, [R1,#0x54]
2B37B8:  BX              R1
