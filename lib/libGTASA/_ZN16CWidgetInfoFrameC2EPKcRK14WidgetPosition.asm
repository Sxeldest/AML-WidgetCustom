; =========================================================
; Game Engine Function: _ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition
; Address            : 0x2B9080 - 0x2B90CC
; =========================================================

2B9080:  PUSH            {R4,R6,R7,LR}
2B9082:  ADD             R7, SP, #8
2B9084:  SUB             SP, SP, #8
2B9086:  MOVS            R4, #0
2B9088:  MOVS            R3, #0x14
2B908A:  STR             R4, [SP,#0x10+var_10]
2B908C:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2B9090:  LDR             R1, =(_ZN16CWidgetInfoFrame12m_pChainTailE_ptr - 0x2B9098)
2B9092:  LDR             R2, =(_ZTV16CWidgetInfoFrame_ptr - 0x2B909E)
2B9094:  ADD             R1, PC; _ZN16CWidgetInfoFrame12m_pChainTailE_ptr
2B9096:  LDR.W           R12, =(_ZN16CWidgetInfoFrame12m_pChainHeadE_ptr - 0x2B90A2)
2B909A:  ADD             R2, PC; _ZTV16CWidgetInfoFrame_ptr
2B909C:  LDR             R1, [R1]; CWidgetInfoFrame::m_pChainTail ...
2B909E:  ADD             R12, PC; _ZN16CWidgetInfoFrame12m_pChainHeadE_ptr
2B90A0:  LDR             R2, [R2]; `vtable for'CWidgetInfoFrame ...
2B90A2:  ADDS            R2, #8
2B90A4:  STR             R2, [R0]
2B90A6:  LDR             R2, [R1]; CWidgetInfoFrame::m_pChainTail
2B90A8:  STRD.W          R2, R4, [R0,#0x90]
2B90AC:  ADD.W           R3, R2, #0x94
2B90B0:  CMP             R2, #0
2B90B2:  IT EQ
2B90B4:  LDREQ.W         R3, [R12]; CWidgetInfoFrame::m_pChainHead ...
2B90B8:  STR             R0, [R3]; CWidgetInfoFrame::m_pChainHead
2B90BA:  STR             R0, [R1]; CWidgetInfoFrame::m_pChainTail
2B90BC:  STRD.W          R4, R4, [R0,#0xA4]
2B90C0:  STR.W           R4, [R0,#0xAC]
2B90C4:  STRB.W          R4, [R0,#0x98]
2B90C8:  ADD             SP, SP, #8
2B90CA:  POP             {R4,R6,R7,PC}
