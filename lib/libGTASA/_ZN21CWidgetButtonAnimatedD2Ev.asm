; =========================================================
; Game Engine Function: _ZN21CWidgetButtonAnimatedD2Ev
; Address            : 0x2B4708 - 0x2B476A
; =========================================================

2B4708:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CWidgetButtonAnimated::~CWidgetButtonAnimated()'
2B470A:  ADD             R7, SP, #8
2B470C:  MOV             R4, R0
2B470E:  LDR             R0, =(_ZTV21CWidgetButtonAnimated_ptr - 0x2B4716)
2B4710:  LDR             R1, =(_ZN21CWidgetButtonAnimated12m_pChainHeadE_ptr - 0x2B471C)
2B4712:  ADD             R0, PC; _ZTV21CWidgetButtonAnimated_ptr
2B4714:  LDRD.W          R3, R2, [R4,#0xA8]
2B4718:  ADD             R1, PC; _ZN21CWidgetButtonAnimated12m_pChainHeadE_ptr
2B471A:  LDR.W           R12, =(_ZN21CWidgetButtonAnimated12m_pChainTailE_ptr - 0x2B4726)
2B471E:  LDR             R0, [R0]; `vtable for'CWidgetButtonAnimated ...
2B4720:  CMP             R3, #0
2B4722:  ADD             R12, PC; _ZN21CWidgetButtonAnimated12m_pChainTailE_ptr
2B4724:  ADD.W           R0, R0, #8
2B4728:  STR             R0, [R4]
2B472A:  ADD.W           R0, R3, #0xAC
2B472E:  IT EQ
2B4730:  LDREQ           R0, [R1]; CWidgetButtonAnimated::m_pChainHead ...
2B4732:  STR             R2, [R0]; CWidgetButtonAnimated::m_pChainHead
2B4734:  LDRD.W          R0, R1, [R4,#0xA8]
2B4738:  ADD.W           R2, R1, #0xA8
2B473C:  CMP             R1, #0
2B473E:  IT EQ
2B4740:  LDREQ.W         R2, [R12]; CWidgetButtonAnimated::m_pChainTail ...
2B4744:  STR             R0, [R2]; CWidgetButtonAnimated::m_pChainTail
2B4746:  ADD.W           R0, R4, #0xB0; this
2B474A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B474E:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B4754)
2B4750:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B4752:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B4754:  ADDS            R0, #8
2B4756:  STR             R0, [R4]
2B4758:  ADD.W           R0, R4, #0x98; this
2B475C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B4760:  MOV             R0, R4; this
2B4762:  POP.W           {R4,R6,R7,LR}
2B4766:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
