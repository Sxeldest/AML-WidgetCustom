; =========================================================
; Game Engine Function: _ZNK36CTaskComplexSeekCoverUntilTargetDead11GetCoverPedEP4CPed
; Address            : 0x4E8F60 - 0x4E9028
; =========================================================

4E8F60:  PUSH            {R4-R7,LR}
4E8F62:  ADD             R7, SP, #0xC
4E8F64:  PUSH.W          {R8,R9,R11}
4E8F68:  VPUSH           {D8}
4E8F6C:  MOV             R9, R1
4E8F6E:  MOV             R0, R9; this
4E8F70:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4E8F74:  CMP             R0, #0
4E8F76:  BEQ             loc_4E9018
4E8F78:  VLDR            S16, =3.4028e38
4E8F7C:  ADD.W           R6, R0, #8
4E8F80:  MOV.W           R8, #0
4E8F84:  MOVS            R5, #0
4E8F86:  MOV             R0, R6; this
4E8F88:  MOV             R1, R5; int
4E8F8A:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
4E8F8E:  MOV             R4, R0
4E8F90:  CMP             R4, #0
4E8F92:  IT NE
4E8F94:  CMPNE           R4, R9
4E8F96:  BEQ             loc_4E9010
4E8F98:  LDRSB.W         R0, [R4,#0x71C]
4E8F9C:  RSB.W           R0, R0, R0,LSL#3
4E8FA0:  ADD.W           R0, R4, R0,LSL#2
4E8FA4:  ADDW            R0, R0, #0x5A4; this
4E8FA8:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E8FAC:  CBNZ            R0, loc_4E9010
4E8FAE:  MOV             R0, R4; this
4E8FB0:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4E8FB4:  CMP             R0, #1
4E8FB6:  BNE             loc_4E9010
4E8FB8:  LDR             R0, [R4,#0x14]
4E8FBA:  LDR.W           R1, [R9,#0x14]
4E8FBE:  ADD.W           R2, R0, #0x30 ; '0'
4E8FC2:  CMP             R0, #0
4E8FC4:  IT EQ
4E8FC6:  ADDEQ           R2, R4, #4
4E8FC8:  ADD.W           R0, R1, #0x30 ; '0'
4E8FCC:  CMP             R1, #0
4E8FCE:  VLDR            S0, [R2]
4E8FD2:  IT EQ
4E8FD4:  ADDEQ.W         R0, R9, #4
4E8FD8:  VLDR            D16, [R2,#4]
4E8FDC:  VLDR            S2, [R0]
4E8FE0:  VLDR            D17, [R0,#4]
4E8FE4:  VSUB.F32        S0, S2, S0
4E8FE8:  VSUB.F32        D16, D17, D16
4E8FEC:  VMUL.F32        D1, D16, D16
4E8FF0:  VMUL.F32        S0, S0, S0
4E8FF4:  VADD.F32        S0, S0, S2
4E8FF8:  VADD.F32        S0, S0, S3
4E8FFC:  VMIN.F32        D1, D0, D8
4E9000:  VCMPE.F32       S0, S16
4E9004:  VMRS            APSR_nzcv, FPSCR
4E9008:  VMOV            D8, D1
4E900C:  IT LT
4E900E:  MOVLT           R8, R4
4E9010:  ADDS            R5, #1
4E9012:  CMP             R5, #8
4E9014:  BNE             loc_4E8F86
4E9016:  B               loc_4E901C
4E9018:  MOV.W           R8, #0
4E901C:  MOV             R0, R8
4E901E:  VPOP            {D8}
4E9022:  POP.W           {R8,R9,R11}
4E9026:  POP             {R4-R7,PC}
