; =========================================================
; Game Engine Function: _ZNK26CTaskComplexWanderStandard8WillChatERK4CPedS2_
; Address            : 0x5238D6 - 0x52392A
; =========================================================

5238D6:  PUSH            {R4,R5,R7,LR}
5238D8:  ADD             R7, SP, #8
5238DA:  MOV             R5, R1
5238DC:  MOV             R4, R2
5238DE:  LDR.W           R0, [R5,#0x59C]
5238E2:  CMP             R0, #0x14
5238E4:  IT NE
5238E6:  CMPNE           R0, #6
5238E8:  BEQ             loc_52391A
5238EA:  LDR.W           R0, [R4,#0x59C]
5238EE:  CMP             R0, #6
5238F0:  IT NE
5238F2:  CMPNE           R0, #0x14
5238F4:  BEQ             loc_52391A
5238F6:  MOV             R0, R5; this
5238F8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5238FC:  CBNZ            R0, loc_52391A
5238FE:  MOV             R0, R4; this
523900:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
523904:  CBNZ            R0, loc_52391A
523906:  LDR.W           R0, [R5,#0x59C]
52390A:  SUBS            R0, #7
52390C:  CMP             R0, #0xA
52390E:  BCC             loc_52391A
523910:  LDR.W           R0, [R4,#0x59C]
523914:  SUBS            R0, #7
523916:  CMP             R0, #0xA
523918:  BCS             loc_52391E
52391A:  MOVS            R0, #0
52391C:  POP             {R4,R5,R7,PC}
52391E:  MOV             R0, R5; this
523920:  MOV             R1, R4; CPed *
523922:  POP.W           {R4,R5,R7,LR}
523926:  B.W             sub_19BC08
