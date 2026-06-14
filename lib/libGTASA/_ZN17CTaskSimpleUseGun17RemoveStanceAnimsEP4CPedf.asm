; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun17RemoveStanceAnimsEP4CPedf
; Address            : 0x4DBF24 - 0x4DC0CE
; =========================================================

4DBF24:  PUSH            {R4-R7,LR}
4DBF26:  ADD             R7, SP, #0xC
4DBF28:  PUSH.W          {R8}
4DBF2C:  MOV             R8, R0
4DBF2E:  MOV             R4, R1
4DBF30:  LDR.W           R0, [R8,#0x2C]; this
4DBF34:  CBZ             R0, loc_4DBF78
4DBF36:  LDRH            R1, [R0,#0x2E]
4DBF38:  TST.W           R1, #1
4DBF3C:  BNE             loc_4DBF78
4DBF3E:  LDR             R2, [R0,#0x14]
4DBF40:  VLDR            S0, [R0,#0x20]
4DBF44:  VLDR            S2, [R2,#0x10]
4DBF48:  VCMPE.F32       S0, S2
4DBF4C:  VMRS            APSR_nzcv, FPSCR
4DBF50:  BGE             loc_4DBF78
4DBF52:  LDR.W           R2, [R8,#0x30]
4DBF56:  CBZ             R2, loc_4DBF72
4DBF58:  VLDR            S2, [R2,#0x40]
4DBF5C:  VCMP.F32        S2, S0
4DBF60:  VMRS            APSR_nzcv, FPSCR
4DBF64:  BNE             loc_4DBF72
4DBF66:  LDR             R1, [R2,#0x44]; float
4DBF68:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DBF6C:  LDR.W           R0, [R8,#0x2C]
4DBF70:  LDRH            R1, [R0,#0x2E]
4DBF72:  ORR.W           R1, R1, #1
4DBF76:  STRH            R1, [R0,#0x2E]
4DBF78:  LDR             R0, [R4,#0x18]
4DBF7A:  MOVS            R1, #0x31 ; '1'
4DBF7C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DBF80:  CBZ             R0, loc_4DBF8E
4DBF82:  LDRH            R1, [R0,#0x2E]
4DBF84:  MOVS            R6, #1
4DBF86:  ORR.W           R1, R1, #4
4DBF8A:  STRH            R1, [R0,#0x2E]
4DBF8C:  B               loc_4DBF90
4DBF8E:  MOVS            R6, #0
4DBF90:  LDR             R0, [R4,#0x18]
4DBF92:  MOVS            R1, #0x32 ; '2'
4DBF94:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DBF98:  CMP             R0, #0
4DBF9A:  ITTTT NE
4DBF9C:  LDRHNE          R1, [R0,#0x2E]
4DBF9E:  ORRNE.W         R1, R1, #4
4DBFA2:  STRHNE          R1, [R0,#0x2E]
4DBFA4:  MOVNE           R6, #1
4DBFA6:  LDR             R0, [R4,#0x18]
4DBFA8:  MOVS            R1, #0x33 ; '3'
4DBFAA:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DBFAE:  CMP             R0, #0
4DBFB0:  ITTTT NE
4DBFB2:  LDRHNE          R1, [R0,#0x2E]
4DBFB4:  ORRNE.W         R1, R1, #4
4DBFB8:  STRHNE          R1, [R0,#0x2E]
4DBFBA:  MOVNE           R6, #1
4DBFBC:  LDR             R0, [R4,#0x18]
4DBFBE:  MOVS            R1, #0x34 ; '4'
4DBFC0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DBFC4:  CMP             R0, #0
4DBFC6:  ITTTT NE
4DBFC8:  LDRHNE          R1, [R0,#0x2E]
4DBFCA:  ORRNE.W         R1, R1, #4
4DBFCE:  STRHNE          R1, [R0,#0x2E]
4DBFD0:  MOVNE           R6, #1
4DBFD2:  LDR             R0, [R4,#0x18]
4DBFD4:  MOVS            R1, #0x35 ; '5'
4DBFD6:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DBFDA:  CBZ             R0, loc_4DBFF4
4DBFDC:  LDRH            R1, [R0,#0x2E]
4DBFDE:  MOVS            R6, #1
4DBFE0:  ORR.W           R1, R1, #4
4DBFE4:  STRH            R1, [R0,#0x2E]
4DBFE6:  MOV             R0, R4
4DBFE8:  MOVS            R1, #1
4DBFEA:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4DBFEE:  STR.W           R6, [R4,#0x53C]
4DBFF2:  B               loc_4DC006
4DBFF4:  MOV             R0, R4
4DBFF6:  MOVS            R1, #1
4DBFF8:  MOVS            R5, #1
4DBFFA:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4DBFFE:  CMP             R6, #1
4DC000:  STR.W           R5, [R4,#0x53C]
4DC004:  BNE             loc_4DC0B2
4DC006:  MOV             R0, R4; this
4DC008:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DC00C:  CMP             R0, #1
4DC00E:  BNE             loc_4DC088
4DC010:  MOV             R0, R4; this
4DC012:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
4DC016:  MOV             R6, R0
4DC018:  CBZ             R6, loc_4DC088
4DC01A:  MOV             R0, R6; this
4DC01C:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
4DC020:  CMP             R0, #0x32 ; '2'
4DC022:  BGT             loc_4DC048
4DC024:  MOV             R0, R6; this
4DC026:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
4DC02A:  CMN.W           R0, #0x32 ; '2'
4DC02E:  BLT             loc_4DC048
4DC030:  MOV             R0, R6; this
4DC032:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
4DC036:  CMP             R0, #0x32 ; '2'
4DC038:  BGT             loc_4DC048
4DC03A:  MOV             R0, R6; this
4DC03C:  MOV             R5, #0xFFFFFFCE
4DC040:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
4DC044:  CMP             R0, R5
4DC046:  BGE             loc_4DC088
4DC048:  LDR.W           R1, [R4,#0x4E0]; int
4DC04C:  MOVS            R2, #0; unsigned int
4DC04E:  LDR             R0, [R4,#0x18]; int
4DC050:  MOV.W           R3, #0x41000000
4DC054:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DC058:  LDRH            R1, [R0,#0x2E]
4DC05A:  MOVS            R5, #4
4DC05C:  ORR.W           R1, R1, #1
4DC060:  STRH            R1, [R0,#0x2E]
4DC062:  MOV             R0, R4
4DC064:  MOVS            R1, #4
4DC066:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4DC06A:  LDR.W           R0, [R4,#0x444]
4DC06E:  STR.W           R5, [R4,#0x53C]
4DC072:  CMP             R0, #0
4DC074:  ITTTT NE
4DC076:  MOVNE.W         R1, #0x3F800000
4DC07A:  STRNE           R1, [R0,#0x14]
4DC07C:  POPNE.W         {R8}
4DC080:  POPNE           {R4-R7,PC}
4DC082:  POP.W           {R8}
4DC086:  POP             {R4-R7,PC}
4DC088:  LDR.W           R1, [R4,#0x4E0]; int
4DC08C:  MOVS            R2, #3; unsigned int
4DC08E:  LDR             R0, [R4,#0x18]; int
4DC090:  MOV.W           R3, #0x41000000
4DC094:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DC098:  LDRH            R1, [R0,#0x2E]
4DC09A:  ORR.W           R1, R1, #1
4DC09E:  STRH            R1, [R0,#0x2E]
4DC0A0:  LDRB.W          R0, [R8,#0xF]
4DC0A4:  CMP             R0, #6
4DC0A6:  BNE             loc_4DC0B2
4DC0A8:  LDR.W           R0, [R4,#0x4E0]
4DC0AC:  SUBS            R0, #0x39 ; '9'
4DC0AE:  CMP             R0, #3
4DC0B0:  BCS             loc_4DC0B8
4DC0B2:  POP.W           {R8}
4DC0B6:  POP             {R4-R7,PC}
4DC0B8:  LDR             R0, [R4,#0x18]
4DC0BA:  MOVS            R1, #0
4DC0BC:  MOVS            R2, #0x36 ; '6'
4DC0BE:  MOV.W           R3, #0x41000000
4DC0C2:  POP.W           {R8}
4DC0C6:  POP.W           {R4-R7,LR}
4DC0CA:  B.W             sub_197F88
