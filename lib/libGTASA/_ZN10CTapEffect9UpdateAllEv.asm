; =========================================================
; Game Engine Function: _ZN10CTapEffect9UpdateAllEv
; Address            : 0x2AC4DC - 0x2AC4FC
; =========================================================

2AC4DC:  PUSH            {R4,R6,R7,LR}
2AC4DE:  ADD             R7, SP, #8
2AC4E0:  LDR             R0, =(_ZN10CTapEffect12m_pChainHeadE_ptr - 0x2AC4E6)
2AC4E2:  ADD             R0, PC; _ZN10CTapEffect12m_pChainHeadE_ptr
2AC4E4:  LDR             R0, [R0]; CTapEffect::m_pChainHead ...
2AC4E6:  LDR             R0, [R0]; this
2AC4E8:  CMP             R0, #0
2AC4EA:  IT EQ
2AC4EC:  POPEQ           {R4,R6,R7,PC}
2AC4EE:  LDR             R4, [R0,#4]
2AC4F0:  BLX             j__ZN10CTapEffect6UpdateEv; CTapEffect::Update(void)
2AC4F4:  CMP             R4, #0
2AC4F6:  MOV             R0, R4
2AC4F8:  BNE             loc_2AC4EE
2AC4FA:  POP             {R4,R6,R7,PC}
