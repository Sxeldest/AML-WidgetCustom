; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormationC2EP9CPedGroupP4CPediif
; Address            : 0x5447A0 - 0x544838
; =========================================================

5447A0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexFollowLeaderInFormation::CTaskComplexFollowLeaderInFormation(CPedGroup *, CPed *, int, int, float)'
5447A2:  ADD             R7, SP, #0xC
5447A4:  PUSH.W          {R8}
5447A8:  MOV             R6, R3
5447AA:  MOV             R8, R2
5447AC:  MOV             R5, R1
5447AE:  MOV             R4, R0
5447B0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5447B4:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x5447C2)
5447B6:  MOVS            R1, #4
5447B8:  VLDR            S0, [R7,#arg_4]
5447BC:  CMP             R6, #1
5447BE:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
5447C0:  STR             R5, [R4,#0xC]
5447C2:  STR             R1, [R4,#0x20]
5447C4:  MOV             R1, R4
5447C6:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
5447C8:  LDR             R2, [R7,#arg_0]
5447CA:  VSTR            S0, [R4,#0x24]
5447CE:  ADD.W           R0, R0, #8
5447D2:  STR             R0, [R4]
5447D4:  STR.W           R8, [R1,#0x10]!; CEntity **
5447D8:  BEQ             loc_5447EA
5447DA:  CBZ             R6, loc_5447FC
5447DC:  ADDS            R0, R6, #1
5447DE:  BNE             loc_5447F8
5447E0:  ADDS            R0, R2, #1
5447E2:  CMP             R0, #3
5447E4:  BCS             loc_5447F8
5447E6:  ADR             R2, dword_544848
5447E8:  B               loc_5447F2
5447EA:  ADDS            R0, R2, #1
5447EC:  CMP             R0, #3
5447EE:  BCS             loc_5447F8
5447F0:  ADR             R2, dword_54483C
5447F2:  LDR.W           R0, [R2,R0,LSL#2]
5447F6:  B               loc_54480A
5447F8:  MOVS            R0, #0
5447FA:  B               loc_54480A
5447FC:  CMP             R2, #1
5447FE:  MOV             R0, R2
544800:  IT NE
544802:  MOVNE           R0, #0
544804:  ADDS            R2, #1
544806:  IT EQ
544808:  MOVEQ           R0, #6
54480A:  LDR             R2, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x544814)
54480C:  CMP.W           R8, #0
544810:  ADD             R2, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
544812:  LDR             R2, [R2]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
544814:  LDR.W           R3, [R2,R0,LSL#3]
544818:  ADD.W           R0, R2, R0,LSL#3
54481C:  MOV.W           R2, #0
544820:  STR             R3, [R4,#0x14]
544822:  LDR             R0, [R0,#4]
544824:  STRD.W          R0, R2, [R4,#0x18]
544828:  ITT NE
54482A:  MOVNE           R0, R8; this
54482C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
544830:  MOV             R0, R4
544832:  POP.W           {R8}
544836:  POP             {R4-R7,PC}
