; =========================================================
; Game Engine Function: _ZN21CWidgetButtonAnimatedD0Ev
; Address            : 0x2B477C - 0x2B47E2
; =========================================================

2B477C:  PUSH            {R4,R6,R7,LR}
2B477E:  ADD             R7, SP, #8
2B4780:  MOV             R4, R0
2B4782:  LDR             R0, =(_ZTV21CWidgetButtonAnimated_ptr - 0x2B478A)
2B4784:  LDR             R1, =(_ZN21CWidgetButtonAnimated12m_pChainHeadE_ptr - 0x2B4790)
2B4786:  ADD             R0, PC; _ZTV21CWidgetButtonAnimated_ptr
2B4788:  LDRD.W          R3, R2, [R4,#0xA8]
2B478C:  ADD             R1, PC; _ZN21CWidgetButtonAnimated12m_pChainHeadE_ptr
2B478E:  LDR.W           R12, =(_ZN21CWidgetButtonAnimated12m_pChainTailE_ptr - 0x2B479A)
2B4792:  LDR             R0, [R0]; `vtable for'CWidgetButtonAnimated ...
2B4794:  CMP             R3, #0
2B4796:  ADD             R12, PC; _ZN21CWidgetButtonAnimated12m_pChainTailE_ptr
2B4798:  ADD.W           R0, R0, #8
2B479C:  STR             R0, [R4]
2B479E:  ADD.W           R0, R3, #0xAC
2B47A2:  IT EQ
2B47A4:  LDREQ           R0, [R1]; CWidgetButtonAnimated::m_pChainHead ...
2B47A6:  STR             R2, [R0]; CWidgetButtonAnimated::m_pChainHead
2B47A8:  LDRD.W          R0, R1, [R4,#0xA8]
2B47AC:  ADD.W           R2, R1, #0xA8
2B47B0:  CMP             R1, #0
2B47B2:  IT EQ
2B47B4:  LDREQ.W         R2, [R12]; CWidgetButtonAnimated::m_pChainTail ...
2B47B8:  STR             R0, [R2]; CWidgetButtonAnimated::m_pChainTail
2B47BA:  ADD.W           R0, R4, #0xB0; this
2B47BE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B47C2:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B47C8)
2B47C4:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B47C6:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B47C8:  ADDS            R0, #8
2B47CA:  STR             R0, [R4]
2B47CC:  ADD.W           R0, R4, #0x98; this
2B47D0:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B47D4:  MOV             R0, R4; this
2B47D6:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B47DA:  POP.W           {R4,R6,R7,LR}
2B47DE:  B.W             j__ZdlPv; operator delete(void *)
