; =========================================================
; Game Engine Function: _ZN4CPed18PedCanPickUpPickUpEv
; Address            : 0x31D764 - 0x31D7A2
; =========================================================

31D764:  PUSH            {R4,R6,R7,LR}
31D766:  ADD             R7, SP, #8
31D768:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D772)
31D76A:  MOVW            R1, #0x2BD; int
31D76E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D770:  LDR             R0, [R0]; CWorld::Players ...
31D772:  LDR             R0, [R0]; CWorld::Players
31D774:  LDR.W           R0, [R0,#0x440]; this
31D778:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
31D77C:  MOVS            R4, #0
31D77E:  CBZ             R0, loc_31D784
31D780:  MOV             R0, R4
31D782:  POP             {R4,R6,R7,PC}
31D784:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D78E)
31D786:  MOV.W           R1, #0x640; int
31D78A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D78C:  LDR             R0, [R0]; CWorld::Players ...
31D78E:  LDR             R0, [R0]; CWorld::Players
31D790:  LDR.W           R0, [R0,#0x440]; this
31D794:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
31D798:  CMP             R0, #0
31D79A:  IT EQ
31D79C:  MOVEQ           R4, #1
31D79E:  MOV             R0, R4
31D7A0:  POP             {R4,R6,R7,PC}
