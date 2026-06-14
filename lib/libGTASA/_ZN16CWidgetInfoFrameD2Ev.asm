; =========================================================
; Game Engine Function: _ZN16CWidgetInfoFrameD2Ev
; Address            : 0x2B90D8 - 0x2B9120
; =========================================================

2B90D8:  PUSH            {R7,LR}
2B90DA:  MOV             R7, SP
2B90DC:  LDR             R1, =(_ZTV16CWidgetInfoFrame_ptr - 0x2B90E6)
2B90DE:  LDR.W           LR, =(_ZN16CWidgetInfoFrame12m_pChainHeadE_ptr - 0x2B90EC)
2B90E2:  ADD             R1, PC; _ZTV16CWidgetInfoFrame_ptr
2B90E4:  LDRD.W          R3, R2, [R0,#0x90]
2B90E8:  ADD             LR, PC; _ZN16CWidgetInfoFrame12m_pChainHeadE_ptr
2B90EA:  LDR.W           R12, =(_ZN16CWidgetInfoFrame12m_pChainTailE_ptr - 0x2B90F6)
2B90EE:  LDR             R1, [R1]; `vtable for'CWidgetInfoFrame ...
2B90F0:  CMP             R3, #0
2B90F2:  ADD             R12, PC; _ZN16CWidgetInfoFrame12m_pChainTailE_ptr
2B90F4:  ADD.W           R1, R1, #8
2B90F8:  STR             R1, [R0]
2B90FA:  ADD.W           R1, R3, #0x94
2B90FE:  IT EQ
2B9100:  LDREQ.W         R1, [LR]; CWidgetInfoFrame::m_pChainHead ...
2B9104:  STR             R2, [R1]; CWidgetInfoFrame::m_pChainHead
2B9106:  LDRD.W          R1, R2, [R0,#0x90]
2B910A:  ADD.W           R3, R2, #0x90
2B910E:  CMP             R2, #0
2B9110:  IT EQ
2B9112:  LDREQ.W         R3, [R12]; CWidgetInfoFrame::m_pChainTail ...
2B9116:  STR             R1, [R3]; CWidgetInfoFrame::m_pChainTail
2B9118:  POP.W           {R7,LR}
2B911C:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
