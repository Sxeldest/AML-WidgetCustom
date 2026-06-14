; =========================================================
; Game Engine Function: _ZN13CCarEnterExit15QuitEnteringCarEP4CPedP8CVehicleib
; Address            : 0x50A95C - 0x50AA58
; =========================================================

50A95C:  PUSH            {R4-R7,LR}
50A95E:  ADD             R7, SP, #0xC
50A960:  PUSH.W          {R8,R9,R11}
50A964:  MOV             R4, R0
50A966:  MOV             R5, R1
50A968:  LDR             R0, [R4,#0x18]
50A96A:  MOVS            R1, #0x10
50A96C:  MOV             R9, R3
50A96E:  MOV             R8, R2
50A970:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClumpj; RpAnimBlendClumpGetFirstAssociation(RpClump *,uint)
50A974:  CBZ             R0, loc_50A990
50A976:  MOVS            R6, #0xC47A0000
50A97C:  LDRH            R1, [R0,#0x2E]
50A97E:  STR             R6, [R0,#0x1C]
50A980:  ORR.W           R1, R1, #4
50A984:  STRH            R1, [R0,#0x2E]
50A986:  MOVS            R1, #0x10; unsigned int
50A988:  BLX             j__Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociationj; RpAnimBlendGetNextAssociation(CAnimBlendAssociation *,uint)
50A98C:  CMP             R0, #0
50A98E:  BNE             loc_50A97C
50A990:  MOV             R0, R4; this
50A992:  BLX             j__ZN4CPed22RestartNonPartialAnimsEv; CPed::RestartNonPartialAnims(void)
50A996:  LDR             R0, [R4,#0x18]
50A998:  MOVS            R1, #3
50A99A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
50A99E:  CBNZ            R0, loc_50A9B2
50A9A0:  LDR.W           R1, [R4,#0x4E0]; int
50A9A4:  MOVS            R3, #0
50A9A6:  LDR             R0, [R4,#0x18]; int
50A9A8:  MOVT            R3, #0x447A
50A9AC:  MOVS            R2, #3; unsigned int
50A9AE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50A9B2:  CMP.W           R9, #1
50A9B6:  ITTT EQ
50A9B8:  LDREQ.W         R0, [R5,#0x42C]
50A9BC:  BICEQ.W         R0, R0, #0x80000
50A9C0:  STREQ.W         R0, [R5,#0x42C]
50A9C4:  LDRB.W          R0, [R5,#0x489]
50A9C8:  CMP             R0, #0
50A9CA:  ITT NE
50A9CC:  SUBNE           R0, #1
50A9CE:  STRBNE.W        R0, [R5,#0x489]
50A9D2:  LDR.W           R0, [R5,#0x5A0]
50A9D6:  CMP             R0, #9
50A9D8:  BEQ             loc_50A9FC
50A9DA:  LDR.W           R0, [R5,#0x388]
50A9DE:  LDRB.W          R0, [R0,#0xCD]
50A9E2:  LSLS            R0, R0, #0x1E
50A9E4:  BMI             loc_50A9FC
50A9E6:  SUB.W           R0, R8, #8; switch 4 cases
50A9EA:  CMP             R0, #3
50A9EC:  BHI             def_50A9EE; jumptable 0050A9EE default case
50A9EE:  TBB.W           [PC,R0]; switch jump
50A9F2:  DCB 2; jump table for switch statement
50A9F3:  DCB 0x19
50A9F4:  DCB 0x1C
50A9F5:  DCB 0x22
50A9F6:  MOV             R0, R5; jumptable 0050A9EE case 8
50A9F8:  MOVS            R1, #4
50A9FA:  B               loc_50AA46
50A9FC:  ORR.W           R0, R8, #2
50AA00:  CMP             R0, #0xB
50AA02:  BEQ             loc_50AA0E
50AA04:  CMP             R0, #0xA
50AA06:  BNE             loc_50AA16
50AA08:  MOV             R0, R5
50AA0A:  MOVS            R1, #5
50AA0C:  B               loc_50AA12
50AA0E:  MOV             R0, R5; this
50AA10:  MOVS            R1, #0xA; unsigned __int8
50AA12:  BLX             j__ZN8CVehicle19ClearGettingInFlagsEh; CVehicle::ClearGettingInFlags(uchar)
50AA16:  LDRB.W          R0, [R5,#0x628]
50AA1A:  AND.W           R0, R0, #0xF7
50AA1E:  STRB.W          R0, [R5,#0x628]
50AA22:  B               def_50A9EE; jumptable 0050A9EE default case
50AA24:  MOV             R0, R5; jumptable 0050A9EE case 9
50AA26:  MOVS            R1, #8
50AA28:  B               loc_50AA46
50AA2A:  LDRB.W          R0, [R5,#0x48C]; jumptable 0050A9EE case 10
50AA2E:  CBZ             R0, loc_50AA42
50AA30:  MOV             R0, R5
50AA32:  MOVS            R1, #1
50AA34:  B               loc_50AA46
50AA36:  LDRB.W          R0, [R5,#0x48C]; jumptable 0050A9EE case 11
50AA3A:  CBZ             R0, loc_50AA42
50AA3C:  MOV             R0, R5
50AA3E:  MOVS            R1, #2
50AA40:  B               loc_50AA46
50AA42:  MOV             R0, R5; this
50AA44:  MOVS            R1, #3; unsigned __int8
50AA46:  BLX             j__ZN8CVehicle19ClearGettingInFlagsEh; CVehicle::ClearGettingInFlags(uchar)
50AA4A:  LDR             R0, [R4,#0x1C]; jumptable 0050A9EE default case
50AA4C:  ORR.W           R0, R0, #1
50AA50:  STR             R0, [R4,#0x1C]
50AA52:  POP.W           {R8,R9,R11}
50AA56:  POP             {R4-R7,PC}
