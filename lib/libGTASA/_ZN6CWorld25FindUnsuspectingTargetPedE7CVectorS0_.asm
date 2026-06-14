; =========================================================
; Game Engine Function: _ZN6CWorld25FindUnsuspectingTargetPedE7CVectorS0_
; Address            : 0x42CB94 - 0x42CCE2
; =========================================================

42CB94:  PUSH            {R4-R7,LR}
42CB96:  ADD             R7, SP, #0xC
42CB98:  PUSH.W          {R8-R11}
42CB9C:  SUB             SP, SP, #4
42CB9E:  VPUSH           {D8-D13}
42CBA2:  LDR             R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42CBA8)
42CBA4:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
42CBA6:  LDR             R2, [R2]; CPools::ms_pPedPool ...
42CBA8:  LDR             R6, [R2]; CPools::ms_pPedPool
42CBAA:  LDR             R2, [R6,#8]
42CBAC:  CMP             R2, #0
42CBAE:  BEQ.W           loc_42CCD0
42CBB2:  MOVW            R5, #0x7CC
42CBB6:  LDRD.W          R4, R12, [R7,#arg_0]
42CBBA:  MULS            R5, R2
42CBBC:  VLDR            S16, =9999.9
42CBC0:  VMOV            S18, R0
42CBC4:  VMOV            S20, R4
42CBC8:  MOV.W           R8, #0
42CBCC:  VMOV            S22, R1
42CBD0:  VMOV            S24, R12
42CBD4:  SUB.W           R4, R5, #0x38C
42CBD8:  SUBS            R5, R2, #1
42CBDA:  VMOV            S26, R3
42CBDE:  LDR             R0, [R6,#4]
42CBE0:  LDRSB           R0, [R0,R5]
42CBE2:  CMP             R0, #0
42CBE4:  BLT             loc_42CCC2
42CBE6:  LDR.W           R10, [R6]
42CBEA:  ADD.W           R11, R10, R4
42CBEE:  CMP.W           R11, #0x440
42CBF2:  BEQ             loc_42CCC2
42CBF4:  LDRB.W          R0, [R11,#8]
42CBF8:  CMP             R0, #1
42CBFA:  BNE             loc_42CCC2
42CBFC:  SUB.W           R0, R11, #0x7C8
42CC00:  ADD.W           R9, R0, #0x388
42CC04:  MOV             R0, R9; this
42CC06:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
42CC0A:  CMP             R0, #0
42CC0C:  BEQ             loc_42CCC2
42CC0E:  LDR.W           R0, [R11,#0x15C]
42CC12:  CMP             R0, #4
42CC14:  ITT NE
42CC16:  SUBNE           R0, #7
42CC18:  CMPNE           R0, #9
42CC1A:  BHI             loc_42CCC2
42CC1C:  LDR.W           R0, [R10,R4]
42CC20:  ADDS            R0, #4; this
42CC22:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
42CC26:  CBZ             R0, loc_42CC34
42CC28:  LDR             R1, [R0]
42CC2A:  LDR             R1, [R1,#0x14]
42CC2C:  BLX             R1
42CC2E:  CMP.W           R0, #0x390
42CC32:  BEQ             loc_42CCC2
42CC34:  MOVW            R0, #0xFBD4
42CC38:  MOVW            R2, #0xF838
42CC3C:  MOVT            R0, #0xFFFF
42CC40:  MOVT            R2, #0xFFFF
42CC44:  LDR.W           R0, [R11,R0]
42CC48:  ADD             R2, R10
42CC4A:  ADD             R2, R4
42CC4C:  ADD.W           R1, R0, #0x30 ; '0'
42CC50:  CMP             R0, #0
42CC52:  IT EQ
42CC54:  ADDEQ.W         R1, R2, #0x38C
42CC58:  VLDR            S2, [R1]
42CC5C:  VLDR            S4, [R1,#4]
42CC60:  VSUB.F32        S6, S18, S2
42CC64:  VSUB.F32        S0, S22, S4
42CC68:  VMUL.F32        S6, S6, S6
42CC6C:  VMUL.F32        S0, S0, S0
42CC70:  VADD.F32        S0, S6, S0
42CC74:  VSQRT.F32       S0, S0
42CC78:  VCMPE.F32       S0, S16
42CC7C:  VMRS            APSR_nzcv, FPSCR
42CC80:  BGE             loc_42CCC2
42CC82:  VSUB.F32        S4, S20, S4
42CC86:  VLDR            S6, [R1,#8]
42CC8A:  VSUB.F32        S2, S26, S2
42CC8E:  VLDR            S8, [R0,#0x10]
42CC92:  VLDR            S10, [R0,#0x14]
42CC96:  VSUB.F32        S6, S24, S6
42CC9A:  VLDR            S12, [R0,#0x18]
42CC9E:  VMUL.F32        S4, S4, S10
42CCA2:  VMUL.F32        S2, S2, S8
42CCA6:  VMUL.F32        S6, S6, S12
42CCAA:  VADD.F32        S2, S2, S4
42CCAE:  VADD.F32        S2, S2, S6
42CCB2:  VCMPE.F32       S2, #0.0
42CCB6:  VMRS            APSR_nzcv, FPSCR
42CCBA:  ITT GT
42CCBC:  VMOVGT.F32      S16, S0
42CCC0:  MOVGT           R8, R9
42CCC2:  SUBS            R5, #1
42CCC4:  SUBW            R4, R4, #0x7CC
42CCC8:  ADDS            R0, R5, #1
42CCCA:  BNE.W           loc_42CBDE
42CCCE:  B               loc_42CCD4
42CCD0:  MOV.W           R8, #0
42CCD4:  MOV             R0, R8
42CCD6:  VPOP            {D8-D13}
42CCDA:  ADD             SP, SP, #4
42CCDC:  POP.W           {R8-R11}
42CCE0:  POP             {R4-R7,PC}
