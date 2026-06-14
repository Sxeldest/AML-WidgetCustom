; =========================================================
; Game Engine Function: _ZNK18CEventKnockOffBike10AffectsPedEP4CPed
; Address            : 0x3756EC - 0x37576E
; =========================================================

3756EC:  PUSH            {R4,R5,R7,LR}
3756EE:  ADD             R7, SP, #8
3756F0:  MOV             R4, R1
3756F2:  MOV             R5, R0
3756F4:  MOV             R0, R4; this
3756F6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3756FA:  CMP             R0, #1
3756FC:  BNE             loc_37570E
3756FE:  LDR             R1, [R5,#0x38]
375700:  CBZ             R1, loc_375712
375702:  LDRB.W          R0, [R1,#0x3A]
375706:  AND.W           R0, R0, #0xF8
37570A:  CMP             R0, #0x60 ; '`'
37570C:  BNE             loc_375712
37570E:  MOVS            R0, #0
375710:  POP             {R4,R5,R7,PC}
375712:  LDR.W           R0, [R4,#0x48C]
375716:  AND.W           R0, R0, #0x18000000
37571A:  TEQ.W           R0, #0x8000000
37571E:  BNE             loc_375734
375720:  LDRB.W          R0, [R5,#0x35]
375724:  LSLS            R0, R0, #0x1E
375726:  MOV.W           R0, #0
37572A:  BPL             locret_375768
37572C:  CMP             R1, #0
37572E:  IT EQ
375730:  POPEQ           {R4,R5,R7,PC}
375732:  B               loc_375736
375734:  CBZ             R1, loc_37576A
375736:  LDR.W           R0, [R1,#0x464]
37573A:  CMP             R0, R4
37573C:  BEQ             loc_37575A
37573E:  LDR.W           R0, [R1,#0x468]
375742:  CMP             R0, R4
375744:  BEQ             loc_375766
375746:  LDR.W           R0, [R1,#0x46C]
37574A:  CMP             R0, R4
37574C:  ITT NE
37574E:  LDRNE.W         R0, [R1,#0x470]
375752:  CMPNE           R0, R4
375754:  BEQ             loc_375766
375756:  MOVS            R0, #0
375758:  POP             {R4,R5,R7,PC}
37575A:  LDRB.W          R0, [R5,#0x35]
37575E:  ORR.W           R0, R0, #1
375762:  STRB.W          R0, [R5,#0x35]
375766:  MOVS            R0, #1
375768:  POP             {R4,R5,R7,PC}
37576A:  MOVS            R0, #0
37576C:  POP             {R4,R5,R7,PC}
