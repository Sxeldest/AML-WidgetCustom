; =========================================================
; Game Engine Function: _ZNK21CEventObjectCollision10AffectsPedEP4CPed
; Address            : 0x3715FC - 0x37162E
; =========================================================

3715FC:  PUSH            {R4,R6,R7,LR}
3715FE:  ADD             R7, SP, #8
371600:  MOV             R4, R1
371602:  LDR.W           R1, [R4,#0x100]
371606:  CBZ             R1, loc_37160C
371608:  MOVS            R0, #0
37160A:  POP             {R4,R6,R7,PC}
37160C:  LDR             R0, [R0,#0x14]
37160E:  CMP             R0, #0
371610:  BEQ             loc_371608
371612:  LDRB.W          R0, [R0,#0x44]
371616:  LSLS            R0, R0, #0x1A
371618:  BMI             loc_371608
37161A:  MOV             R0, R4; this
37161C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371620:  CMP             R0, #0
371622:  BNE             loc_371608
371624:  MOV             R0, R4; this
371626:  POP.W           {R4,R6,R7,LR}
37162A:  B.W             sub_196874
