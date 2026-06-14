; =========================================================
; Game Engine Function: _ZN15CProjectileInfo19IsProjectileInRangeEffffffb
; Address            : 0x5DACF8 - 0x5DAE48
; =========================================================

5DACF8:  PUSH            {R4-R7,LR}
5DACFA:  ADD             R7, SP, #0xC
5DACFC:  PUSH.W          {R8-R11}
5DAD00:  SUB             SP, SP, #4
5DAD02:  VPUSH           {D8-D13}
5DAD06:  SUB             SP, SP, #8
5DAD08:  VMOV            S26, R0
5DAD0C:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5DAD18)
5DAD0E:  LDR             R6, [R7,#arg_8]
5DAD10:  VMOV            S24, R1
5DAD14:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5DAD16:  LDR             R1, =(gaProjectileInfo_ptr - 0x5DAD28)
5DAD18:  EOR.W           R9, R6, #1
5DAD1C:  VLDR            S16, [R7,#arg_4]
5DAD20:  LDR.W           R10, [R0]; CProjectileInfo::ms_apProjectile ...
5DAD24:  ADD             R1, PC; gaProjectileInfo_ptr
5DAD26:  LDR             R0, =(gaProjectileInfo_ptr - 0x5DAD36)
5DAD28:  VMOV            S20, R3
5DAD2C:  LDR             R5, [R1]; gaProjectileInfo
5DAD2E:  VMOV            S22, R2
5DAD32:  ADD             R0, PC; gaProjectileInfo_ptr
5DAD34:  VLDR            S18, [R7,#arg_0]
5DAD38:  MOV.W           LR, #0
5DAD3C:  MOV.W           R11, #0
5DAD40:  LDR             R6, [R0]; gaProjectileInfo
5DAD42:  MOV.W           R12, #0
5DAD46:  LDR             R0, =(gaProjectileInfo_ptr - 0x5DAD4C)
5DAD48:  ADD             R0, PC; gaProjectileInfo_ptr
5DAD4A:  LDR             R0, [R0]; gaProjectileInfo
5DAD4C:  STR             R0, [SP,#0x58+var_54]
5DAD4E:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5DAD54)
5DAD50:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5DAD52:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5DAD54:  STR             R0, [SP,#0x58+var_58]
5DAD56:  ADD.W           R1, R11, R11,LSL#3
5DAD5A:  ADDS            R2, R5, R1
5DAD5C:  LDRB            R3, [R2,#0x10]
5DAD5E:  CMP             R3, #0
5DAD60:  BEQ             loc_5DAE2C
5DAD62:  LDR             R3, [R6,R1]
5DAD64:  SUBS            R3, #0x10
5DAD66:  CMP             R3, #4
5DAD68:  BHI             loc_5DAE2C
5DAD6A:  LDR.W           R4, [R10,R11]
5DAD6E:  LDR             R0, [R4,#0x14]
5DAD70:  ADD.W           R3, R0, #0x30 ; '0'
5DAD74:  CMP             R0, #0
5DAD76:  IT EQ
5DAD78:  ADDEQ           R3, R4, #4
5DAD7A:  VLDR            S0, [R3]
5DAD7E:  VCMPE.F32       S0, S26
5DAD82:  VMRS            APSR_nzcv, FPSCR
5DAD86:  BLT             loc_5DAE2C
5DAD88:  VCMPE.F32       S0, S24
5DAD8C:  VMRS            APSR_nzcv, FPSCR
5DAD90:  BGT             loc_5DAE2C
5DAD92:  VLDR            S0, [R3,#4]
5DAD96:  VCMPE.F32       S0, S22
5DAD9A:  VMRS            APSR_nzcv, FPSCR
5DAD9E:  BLT             loc_5DAE2C
5DADA0:  VCMPE.F32       S0, S20
5DADA4:  VMRS            APSR_nzcv, FPSCR
5DADA8:  BGT             loc_5DAE2C
5DADAA:  VLDR            S0, [R3,#8]
5DADAE:  VCMPE.F32       S0, S18
5DADB2:  VMRS            APSR_nzcv, FPSCR
5DADB6:  BLT             loc_5DAE2C
5DADB8:  VCMPE.F32       S0, S16
5DADBC:  MOVS            R3, #0
5DADBE:  VMRS            APSR_nzcv, FPSCR
5DADC2:  MOV.W           R0, #0
5DADC6:  IT LE
5DADC8:  MOVLE           R3, #1
5DADCA:  IT GT
5DADCC:  MOVGT           R0, #1
5DADCE:  ORRS.W          R0, R0, R9
5DADD2:  BEQ             loc_5DADDA
5DADD4:  ORR.W           R12, R12, R3
5DADD8:  B               loc_5DAE2C
5DADDA:  LDR             R0, [SP,#0x58+var_54]
5DADDC:  STRB.W          LR, [R2,#0x10]
5DADE0:  ADD.W           R8, R0, R1
5DADE4:  LDR.W           R0, [R8,#0x20]; this
5DADE8:  CBZ             R0, loc_5DADF4
5DADEA:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5DADEE:  MOVS            R0, #0
5DADF0:  STR.W           R0, [R8,#0x20]
5DADF4:  LDR             R0, [SP,#0x58+var_58]
5DADF6:  MOV             R2, #0xD8FD8FD9
5DADFE:  LDR             R0, [R0]
5DAE00:  LDRD.W          R1, R0, [R0]
5DAE04:  SUBS            R1, R4, R1
5DAE06:  ASRS            R1, R1, #2
5DAE08:  MULS            R1, R2
5DAE0A:  LDRB            R0, [R0,R1]
5DAE0C:  ORR.W           R1, R0, R1,LSL#8
5DAE10:  MOVS            R0, #3
5DAE12:  BLX.W           j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
5DAE16:  MOV             R0, R4; this
5DAE18:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5DAE1C:  LDR             R0, [R4]
5DAE1E:  LDR             R1, [R0,#4]
5DAE20:  MOV             R0, R4
5DAE22:  BLX             R1
5DAE24:  MOV.W           R12, #1
5DAE28:  MOV.W           LR, #0
5DAE2C:  ADD.W           R11, R11, #4
5DAE30:  CMP.W           R11, #0x80
5DAE34:  BNE             loc_5DAD56
5DAE36:  AND.W           R0, R12, #1
5DAE3A:  ADD             SP, SP, #8
5DAE3C:  VPOP            {D8-D13}
5DAE40:  ADD             SP, SP, #4
5DAE42:  POP.W           {R8-R11}
5DAE46:  POP             {R4-R7,PC}
