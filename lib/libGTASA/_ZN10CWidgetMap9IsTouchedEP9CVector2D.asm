; =========================================================
; Game Engine Function: _ZN10CWidgetMap9IsTouchedEP9CVector2D
; Address            : 0x2BBF7C - 0x2BBFB0
; =========================================================

2BBF7C:  PUSH            {R4,R5,R7,LR}
2BBF7E:  ADD             R7, SP, #8
2BBF80:  SUB             SP, SP, #8
2BBF82:  MOV             R5, R1
2BBF84:  MOV             R4, R0
2BBF86:  CBZ             R5, loc_2BBF98
2BBF88:  LDR             R1, [R4,#0x78]; int
2BBF8A:  MOV             R0, SP; this
2BBF8C:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2BBF90:  LDRD.W          R0, R1, [SP,#0x10+var_10]
2BBF94:  STRD.W          R0, R1, [R5]
2BBF98:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2BBFA0)
2BBF9A:  LDR             R1, [R4,#0x78]
2BBF9C:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2BBF9E:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2BBFA0:  LDR.W           R1, [R0,R1,LSL#2]
2BBFA4:  MOVS            R0, #0
2BBFA6:  CMP             R4, R1
2BBFA8:  IT EQ
2BBFAA:  MOVEQ           R0, #1
2BBFAC:  ADD             SP, SP, #8
2BBFAE:  POP             {R4,R5,R7,PC}
