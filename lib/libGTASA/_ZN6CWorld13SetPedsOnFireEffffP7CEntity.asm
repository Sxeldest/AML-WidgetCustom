; =========================================================
; Game Engine Function: _ZN6CWorld13SetPedsOnFireEffffP7CEntity
; Address            : 0x42A9EC - 0x42AB68
; =========================================================

42A9EC:  PUSH            {R4-R7,LR}
42A9EE:  ADD             R7, SP, #0xC
42A9F0:  PUSH.W          {R8-R11}
42A9F4:  SUB             SP, SP, #4
42A9F6:  VPUSH           {D8-D14}
42A9FA:  SUB             SP, SP, #0x10
42A9FC:  LDR             R6, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42AA02)
42A9FE:  ADD             R6, PC; _ZN6CPools11ms_pPedPoolE_ptr
42AA00:  LDR             R6, [R6]; CPools::ms_pPedPool ...
42AA02:  LDR             R5, [R6]; CPools::ms_pPedPool
42AA04:  LDR             R4, [R5,#8]
42AA06:  CMP             R4, #0
42AA08:  BEQ.W           loc_42AB5A
42AA0C:  VMOV            S22, R0
42AA10:  MOVW            R0, #0x7CC
42AA14:  MULS            R0, R4
42AA16:  VMOV.F32        S24, #5.0
42AA1A:  VMOV.F32        S26, #1.0
42AA1E:  VMOV.F32        S28, #0.5
42AA22:  LDR.W           R12, [R7,#arg_0]
42AA26:  VMOV            S20, R1
42AA2A:  MOVW            R1, #0xF834
42AA2E:  MOVW            R9, #0xFEF2
42AA32:  MOVT            R1, #0xFFFF
42AA36:  SUB.W           R6, R0, #0x380
42AA3A:  LDR             R0, =(gFireManager_ptr - 0x42AA48)
42AA3C:  VMOV            S16, R3
42AA40:  SUB.W           R11, R1, R12
42AA44:  ADD             R0, PC; gFireManager_ptr
42AA46:  VMOV            S18, R2
42AA4A:  SUBS            R4, #1
42AA4C:  MOVW            R8, #0x44C
42AA50:  LDR             R0, [R0]; gFireManager
42AA52:  MOVT            R9, #0xFFFF
42AA56:  MOV.W           LR, #2
42AA5A:  STR             R0, [SP,#0x68+var_5C]
42AA5C:  B               loc_42AB26
42AA5E:  ADD.W           R0, R10, R9,LSL#2
42AA62:  LDR             R0, [R0,#0x30]
42AA64:  TST.W           R0, #0x80000
42AA68:  BNE             loc_42AB50
42AA6A:  LDR.W           R3, [R10,R9,LSL#2]
42AA6E:  ADD.W           R2, R3, #0x30 ; '0'
42AA72:  CMP             R3, #0
42AA74:  IT EQ
42AA76:  SUBEQ.W         R2, R10, #0x448
42AA7A:  VLDR            S0, [R2,#8]
42AA7E:  VSUB.F32        S0, S0, S18
42AA82:  VABS.F32        S0, S0
42AA86:  VCMPE.F32       S0, S24
42AA8A:  VMRS            APSR_nzcv, FPSCR
42AA8E:  BGE             loc_42AB50
42AA90:  VLDR            S0, [R2]
42AA94:  ADD             R1, R11
42AA96:  ADD             R1, R6
42AA98:  VMOV.F32        S2, S26
42AA9C:  VSUB.F32        S0, S0, S22
42AAA0:  CMN.W           R1, #0x380
42AAA4:  IT EQ
42AAA6:  VMOVEQ.F32      S2, S28
42AAAA:  VABS.F32        S4, S0
42AAAE:  VMUL.F32        S0, S2, S16
42AAB2:  VCMPE.F32       S4, S0
42AAB6:  VMRS            APSR_nzcv, FPSCR
42AABA:  BGE             loc_42AB50
42AABC:  VLDR            S2, [R2,#4]
42AAC0:  VSUB.F32        S2, S2, S20
42AAC4:  VABS.F32        S2, S2
42AAC8:  VCMPE.F32       S2, S0
42AACC:  VMRS            APSR_nzcv, FPSCR
42AAD0:  BGE             loc_42AB50
42AAD2:  CMP.W           R12, #0
42AAD6:  IT NE
42AAD8:  ANDSNE.W        R0, R0, #0x400000
42AADC:  BEQ             loc_42AAFC
42AADE:  LDRB.W          R0, [R12,#0x3A]
42AAE2:  AND.W           R0, R0, #7
42AAE6:  CMP             R0, #3
42AAE8:  BNE             loc_42AB50
42AAEA:  MOV             R0, R12; this
42AAEC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
42AAF0:  LDR.W           R12, [R7,#arg_0]
42AAF4:  MOV.W           LR, #2
42AAF8:  CMP             R0, #1
42AAFA:  BNE             loc_42AB50
42AAFC:  MOVS            R0, #1
42AAFE:  MOVW            R3, #0xCCCD
42AB02:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
42AB04:  MOVW            R0, #0x1B58
42AB08:  STRD.W          R0, LR, [SP,#0x68+var_64]; unsigned int
42AB0C:  SUBW            R1, R10, #0x44C; CEntity *
42AB10:  LDR             R0, [SP,#0x68+var_5C]; this
42AB12:  MOV             R2, R12; CEntity *
42AB14:  MOVT            R3, #0x3F4C; float
42AB18:  MOV             R10, R12
42AB1A:  BLX             j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
42AB1E:  MOV.W           LR, #2
42AB22:  MOV             R12, R10
42AB24:  B               loc_42AB50
42AB26:  LDR             R0, [R5,#4]
42AB28:  LDRSB           R0, [R0,R4]
42AB2A:  CMP             R0, #0
42AB2C:  BLT             loc_42AB50
42AB2E:  LDR             R1, [R5]
42AB30:  ADD.W           R10, R1, R6
42AB34:  CMP             R10, R8
42AB36:  ITT NE
42AB38:  LDRNE           R0, [R1,R6]
42AB3A:  CMPNE           R0, #0x37 ; '7'
42AB3C:  BEQ             loc_42AB50
42AB3E:  LDRB.W          R0, [R10,#0x39]
42AB42:  LSLS            R0, R0, #0x1F
42AB44:  ITT EQ
42AB46:  LDREQ.W         R0, [R10,#0x2EC]
42AB4A:  CMPEQ           R0, #0
42AB4C:  BEQ.W           loc_42AA5E
42AB50:  SUBS            R4, #1
42AB52:  SUBW            R6, R6, #0x7CC
42AB56:  ADDS            R0, R4, #1
42AB58:  BNE             loc_42AB26
42AB5A:  ADD             SP, SP, #0x10
42AB5C:  VPOP            {D8-D14}
42AB60:  ADD             SP, SP, #4
42AB62:  POP.W           {R8-R11}
42AB66:  POP             {R4-R7,PC}
