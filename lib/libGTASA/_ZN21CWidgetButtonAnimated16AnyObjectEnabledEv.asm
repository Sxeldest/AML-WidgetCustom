; =========================================================
; Game Engine Function: _ZN21CWidgetButtonAnimated16AnyObjectEnabledEv
; Address            : 0x2B4B90 - 0x2B4BBC
; =========================================================

2B4B90:  PUSH            {R4,R6,R7,LR}
2B4B92:  ADD             R7, SP, #8
2B4B94:  LDR             R0, =(_ZN21CWidgetButtonAnimated12m_pChainHeadE_ptr - 0x2B4B9A)
2B4B96:  ADD             R0, PC; _ZN21CWidgetButtonAnimated12m_pChainHeadE_ptr
2B4B98:  LDR             R0, [R0]; CWidgetButtonAnimated::m_pChainHead ...
2B4B9A:  LDR             R4, [R0]; CWidgetButtonAnimated::m_pChainHead
2B4B9C:  CBZ             R4, loc_2B4BB4
2B4B9E:  MOV             R0, R4; this
2B4BA0:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B4BA4:  CMP             R0, #1
2B4BA6:  BEQ             loc_2B4BB8
2B4BA8:  LDR.W           R4, [R4,#0xAC]
2B4BAC:  CMP             R4, #0
2B4BAE:  BNE             loc_2B4B9E
2B4BB0:  MOVS            R0, #0
2B4BB2:  POP             {R4,R6,R7,PC}
2B4BB4:  MOVS            R0, #0
2B4BB6:  POP             {R4,R6,R7,PC}
2B4BB8:  MOVS            R0, #1
2B4BBA:  POP             {R4,R6,R7,PC}
