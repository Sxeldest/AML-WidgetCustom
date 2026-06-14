; =========================================================
; Game Engine Function: _ZN7CWidget14IsPinchZoomingEP9CVector2D
; Address            : 0x2B34E8 - 0x2B34FC
; =========================================================

2B34E8:  LDR             R1, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2B34EE)
2B34EA:  ADD             R1, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2B34EC:  LDR             R1, [R1]; CWidget::m_pPinchZoomWidget ...
2B34EE:  LDR             R2, [R1]; CWidget::m_pPinchZoomWidget
2B34F0:  MOVS            R1, #0
2B34F2:  CMP             R2, R0
2B34F4:  IT EQ
2B34F6:  MOVEQ           R1, #1
2B34F8:  MOV             R0, R1
2B34FA:  BX              LR
