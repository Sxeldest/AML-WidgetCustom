; =========================================================
; Game Engine Function: _ZNK29CPedPotentialCollisionScanner34ScanForPedPotentialCollisionEventsERK4CPedPS0_
; Address            : 0x4BBB70 - 0x4BBDEE
; =========================================================

4BBB70:  PUSH            {R4-R7,LR}
4BBB72:  ADD             R7, SP, #0xC
4BBB74:  PUSH.W          {R8-R11}
4BBB78:  SUB             SP, SP, #4
4BBB7A:  VPUSH           {D8-D11}
4BBB7E:  SUB             SP, SP, #0x48
4BBB80:  MOV             R4, R1
4BBB82:  CMP             R2, #0
4BBB84:  ITT NE
4BBB86:  LDRBNE          R0, [R4,#0x1C]
4BBB88:  MOVSNE.W        R0, R0,LSL#31
4BBB8C:  BEQ.W           loc_4BBDE0
4BBB90:  LDR.W           R0, [R4,#0x440]
4BBB94:  ADDS            R0, #4; this
4BBB96:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BBB9A:  MOV             R5, R0
4BBB9C:  CMP             R5, #0
4BBB9E:  BEQ.W           loc_4BBDE0
4BBBA2:  MOV             R0, R5; this
4BBBA4:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BBBA8:  CMP             R0, #0
4BBBAA:  BEQ.W           loc_4BBDE0
4BBBAE:  LDR.W           R0, [R4,#0x440]
4BBBB2:  ADDS            R0, #4; this
4BBBB4:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BBBB8:  MOV             R6, R0
4BBBBA:  CMP             R6, #0
4BBBBC:  BEQ.W           loc_4BBDE0
4BBBC0:  MOV             R0, R6; this
4BBBC2:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BBBC6:  CMP             R0, #0
4BBBC8:  ITT NE
4BBBCA:  LDRNE           R0, [R6,#8]
4BBBCC:  CMPNE           R0, #1
4BBBCE:  BEQ.W           loc_4BBDE0
4BBBD2:  VMOV.F32        S16, #6.25
4BBBD6:  LDR.W           R0, [R4,#0x440]
4BBBDA:  ADD.W           R8, R4, #4
4BBBDE:  ADD.W           R11, SP, #0x88+var_7C
4BBBE2:  ADD.W           R10, R0, #0x130
4BBBE6:  MOV.W           R9, #0
4BBBEA:  MOVS            R6, #0
4BBBEC:  ADD.W           R1, R5, #0xC
4BBBF0:  STR             R1, [SP,#0x88+var_80]
4BBBF2:  LDR.W           R5, [R10,R9,LSL#2]
4BBBF6:  CMP             R5, #0
4BBBF8:  BEQ             loc_4BBCCE
4BBBFA:  MOV             R0, R5; this
4BBBFC:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BBC00:  CMP             R0, #1
4BBC02:  BNE             loc_4BBCCE
4BBC04:  LDRB            R0, [R5,#0x1C]
4BBC06:  LSLS            R0, R0, #0x1F
4BBC08:  BEQ             loc_4BBCCE
4BBC0A:  LDR             R0, [R4,#0x14]
4BBC0C:  MOV             R3, R8
4BBC0E:  LDR             R1, [R5,#0x14]
4BBC10:  CMP             R0, #0
4BBC12:  IT NE
4BBC14:  ADDNE.W         R3, R0, #0x30 ; '0'
4BBC18:  ADD.W           R2, R1, #0x30 ; '0'
4BBC1C:  CMP             R1, #0
4BBC1E:  VLDR            S0, [R3]
4BBC22:  VLDR            S2, [R3,#4]
4BBC26:  VLDR            S4, [R3,#8]
4BBC2A:  IT EQ
4BBC2C:  ADDEQ           R2, R5, #4; CVector *
4BBC2E:  VLDR            S6, [R2]
4BBC32:  VLDR            S8, [R2,#4]
4BBC36:  VSUB.F32        S18, S6, S0
4BBC3A:  VLDR            S0, [R0,#0x10]
4BBC3E:  VSUB.F32        S20, S8, S2
4BBC42:  VLDR            S2, [R0,#0x14]
4BBC46:  VLDR            S10, [R2,#8]
4BBC4A:  VLDR            S6, [R0,#0x18]
4BBC4E:  VSUB.F32        S22, S10, S4
4BBC52:  VMUL.F32        S0, S18, S0
4BBC56:  VMUL.F32        S2, S20, S2
4BBC5A:  VMUL.F32        S4, S22, S6
4BBC5E:  VADD.F32        S0, S0, S2
4BBC62:  VADD.F32        S0, S0, S4
4BBC66:  VCMPE.F32       S0, #0.0
4BBC6A:  VMRS            APSR_nzcv, FPSCR
4BBC6E:  BLE             loc_4BBCCE
4BBC70:  MOVS            R0, #0
4BBC72:  MOVW            R1, #0x3333
4BBC76:  STR             R0, [SP,#0x88+var_88]; unsigned __int8
4BBC78:  MOVS            R0, #0xFF
4BBC7A:  STR             R0, [SP,#0x88+var_84]; unsigned __int8
4BBC7C:  MOV             R0, R11; this
4BBC7E:  MOVT            R1, #0x3F33; float
4BBC82:  MOVS            R3, #0; unsigned __int8
4BBC84:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
4BBC88:  LDR             R0, [R4,#0x14]
4BBC8A:  ADD             R1, SP, #0x88+var_58
4BBC8C:  STR             R1, [SP,#0x88+var_88]; CVector *
4BBC8E:  MOV             R1, R8
4BBC90:  CMP             R0, #0
4BBC92:  ADD             R3, SP, #0x88+var_4C; CVector *
4BBC94:  IT NE
4BBC96:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
4BBC9A:  LDR             R2, [SP,#0x88+var_80]; CVector *
4BBC9C:  MOV             R0, R11; this
4BBC9E:  BLX             j__ZNK10CColSphere13IntersectEdgeERK7CVectorS2_RS0_S3_; CColSphere::IntersectEdge(CVector const&,CVector const&,CVector&,CVector&)
4BBCA2:  CMP             R0, #1
4BBCA4:  BNE             loc_4BBCCE
4BBCA6:  VMUL.F32        S0, S20, S20
4BBCAA:  VMUL.F32        S2, S18, S18
4BBCAE:  VMUL.F32        S4, S22, S22
4BBCB2:  VADD.F32        S0, S2, S0
4BBCB6:  VADD.F32        S0, S0, S4
4BBCBA:  VMIN.F32        D1, D0, D8
4BBCBE:  VCMPE.F32       S0, S16
4BBCC2:  VMRS            APSR_nzcv, FPSCR
4BBCC6:  VMOV            D8, D1
4BBCCA:  IT LT
4BBCCC:  MOVLT           R6, R5
4BBCCE:  ADD.W           R9, R9, #1
4BBCD2:  CMP.W           R9, #0x10
4BBCD6:  BNE             loc_4BBBF2
4BBCD8:  CMP             R6, #0
4BBCDA:  BEQ.W           loc_4BBDE0
4BBCDE:  LDR.W           R0, [R6,#0x440]
4BBCE2:  ADDS            R0, #4; this
4BBCE4:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BBCE8:  CMP             R0, #0
4BBCEA:  BEQ             loc_4BBDA0
4BBCEC:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BBCF0:  CMP             R0, #0
4BBCF2:  BEQ             loc_4BBDA0
4BBCF4:  LDR             R0, [R6,#0x14]
4BBCF6:  LDR             R1, [R4,#0x14]
4BBCF8:  VLDR            S0, [R0,#0x10]
4BBCFC:  VLDR            S6, [R1,#0x10]
4BBD00:  VLDR            S2, [R0,#0x14]
4BBD04:  VLDR            S8, [R1,#0x14]
4BBD08:  VMUL.F32        S0, S6, S0
4BBD0C:  VLDR            S4, [R0,#0x18]
4BBD10:  VMUL.F32        S2, S8, S2
4BBD14:  VLDR            S10, [R1,#0x18]
4BBD18:  VMUL.F32        S4, S10, S4
4BBD1C:  VADD.F32        S0, S0, S2
4BBD20:  VLDR            S2, =0.923
4BBD24:  VADD.F32        S0, S0, S4
4BBD28:  VCMPE.F32       S0, S2
4BBD2C:  VMRS            APSR_nzcv, FPSCR
4BBD30:  BLT             loc_4BBDA0
4BBD32:  VMOV.F32        S0, #1.0
4BBD36:  VCMPE.F32       S16, S0
4BBD3A:  VMRS            APSR_nzcv, FPSCR
4BBD3E:  BLE             loc_4BBDA0
4BBD40:  VLDR            S0, =50.0
4BBD44:  VLDR            S4, [R6,#0x4C]
4BBD48:  VLDR            S2, [R6,#0x48]
4BBD4C:  VMUL.F32        S4, S4, S0
4BBD50:  VMUL.F32        S0, S2, S0
4BBD54:  VMUL.F32        S2, S4, S4
4BBD58:  VMUL.F32        S0, S0, S0
4BBD5C:  VMOV.F32        S4, #0.25
4BBD60:  VADD.F32        S2, S0, S2
4BBD64:  VLDR            S0, =0.0
4BBD68:  VADD.F32        S2, S2, S0
4BBD6C:  VADD.F32        S2, S2, S4
4BBD70:  VLDR            S4, =0.01
4BBD74:  VCMPE.F32       S2, S4
4BBD78:  VMRS            APSR_nzcv, FPSCR
4BBD7C:  BLT             loc_4BBDA0
4BBD7E:  VLDR            D16, =2.06158464e11
4BBD82:  VLDR            D17, [R4,#0x48]
4BBD86:  VMUL.F32        D16, D17, D16
4BBD8A:  VMUL.F32        D2, D16, D16
4BBD8E:  VADD.F32        S4, S4, S5
4BBD92:  VADD.F32        S0, S4, S0
4BBD96:  VCMPE.F32       S2, S0
4BBD9A:  VMRS            APSR_nzcv, FPSCR
4BBD9E:  BGT             loc_4BBDE0
4BBDA0:  LDR.W           R0, [R4,#0x440]
4BBDA4:  ADDS            R0, #4; this
4BBDA6:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BBDAA:  MOV             R5, R0
4BBDAC:  CBZ             R5, loc_4BBDBE
4BBDAE:  MOV             R0, R5; this
4BBDB0:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BBDB4:  CMP             R0, #0
4BBDB6:  ITE NE
4BBDB8:  LDRNE           R3, [R5,#8]
4BBDBA:  MOVEQ           R3, #1
4BBDBC:  B               loc_4BBDC0
4BBDBE:  MOVS            R3, #1; int
4BBDC0:  ADD             R5, SP, #0x88+var_7C
4BBDC2:  LDR             R2, [SP,#0x88+var_80]; CVector *
4BBDC4:  MOV             R1, R6; CPed *
4BBDC6:  MOV             R0, R5; this
4BBDC8:  BLX             j__ZN26CEventPotentialWalkIntoPedC2EP4CPedRK7CVectori; CEventPotentialWalkIntoPed::CEventPotentialWalkIntoPed(CPed *,CVector const&,int)
4BBDCC:  LDR.W           R0, [R4,#0x440]
4BBDD0:  MOV             R1, R5; CEvent *
4BBDD2:  MOVS            R2, #0; bool
4BBDD4:  ADDS            R0, #0x68 ; 'h'; this
4BBDD6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4BBDDA:  MOV             R0, R5; this
4BBDDC:  BLX             j__ZN26CEventPotentialWalkIntoPedD2Ev; CEventPotentialWalkIntoPed::~CEventPotentialWalkIntoPed()
4BBDE0:  ADD             SP, SP, #0x48 ; 'H'
4BBDE2:  VPOP            {D8-D11}
4BBDE6:  ADD             SP, SP, #4
4BBDE8:  POP.W           {R8-R11}
4BBDEC:  POP             {R4-R7,PC}
