; =========================================================
; Game Engine Function: _ZN7CWidget17SetReleasedWidgetEiPS_
; Address            : 0x2B37C4 - 0x2B37DC
; =========================================================

2B37C4:  LDR             R2, =(_ZN7CWidget17m_pReleasedWidgetE_ptr - 0x2B37CC)
2B37C6:  CMP             R1, #0
2B37C8:  ADD             R2, PC; _ZN7CWidget17m_pReleasedWidgetE_ptr
2B37CA:  LDR             R2, [R2]; CWidget::m_pReleasedWidget ...
2B37CC:  STR.W           R1, [R2,R0,LSL#2]
2B37D0:  IT EQ
2B37D2:  BXEQ            LR
2B37D4:  LDR             R0, [R1]
2B37D6:  LDR             R2, [R0,#0x5C]
2B37D8:  MOV             R0, R1
2B37DA:  BX              R2
