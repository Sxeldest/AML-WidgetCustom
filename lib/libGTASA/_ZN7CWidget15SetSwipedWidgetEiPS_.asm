; =========================================================
; Game Engine Function: _ZN7CWidget15SetSwipedWidgetEiPS_
; Address            : 0x2B3840 - 0x2B3858
; =========================================================

2B3840:  LDR             R2, =(_ZN7CWidget15m_pSwipedWidgetE_ptr - 0x2B3848)
2B3842:  CMP             R1, #0
2B3844:  ADD             R2, PC; _ZN7CWidget15m_pSwipedWidgetE_ptr
2B3846:  LDR             R2, [R2]; CWidget::m_pSwipedWidget ...
2B3848:  STR.W           R1, [R2,R0,LSL#2]
2B384C:  IT EQ
2B384E:  BXEQ            LR
2B3850:  LDR             R0, [R1]
2B3852:  LDR             R2, [R0,#0x60]
2B3854:  MOV             R0, R1
2B3856:  BX              R2
