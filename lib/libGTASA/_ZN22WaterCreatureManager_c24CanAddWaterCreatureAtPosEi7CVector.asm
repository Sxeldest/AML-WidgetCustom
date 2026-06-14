; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c24CanAddWaterCreatureAtPosEi7CVector
; Address            : 0x59318C - 0x59321A
; =========================================================

59318C:  PUSH            {R4,R6,R7,LR}
59318E:  ADD             R7, SP, #8
593190:  MOVW            R12, #0x1A0C
593194:  LDR.W           R4, [R0,R12]
593198:  CBZ             R4, loc_593216
59319A:  LDR.W           R12, =(_ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr - 0x5931AE)
59319E:  MOV.W           LR, #0x2C ; ','
5931A2:  VMOV            S2, R2
5931A6:  VLDR            S6, =0.0
5931AA:  ADD             R12, PC; _ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr
5931AC:  VMOV            S4, R3
5931B0:  LDR.W           R0, [R12]; WaterCreatureManager_c::ms_waterCreatureInfos ...
5931B4:  MLA.W           R0, R1, LR, R0
5931B8:  VLDR            S0, [R0,#0xC]
5931BC:  VMUL.F32        S0, S0, S0
5931C0:  MOV             R2, R4
5931C2:  LDRB            R0, [R2,#0xC]
5931C4:  LDR             R4, [R2,#4]
5931C6:  CMP             R0, R1
5931C8:  ITT EQ
5931CA:  LDREQ           R0, [R2,#0x1C]
5931CC:  CMPEQ           R0, #0
5931CE:  BEQ             loc_5931D6
5931D0:  CMP             R4, #0
5931D2:  BNE             loc_5931C0
5931D4:  B               loc_593212
5931D6:  LDR             R0, [R2,#8]
5931D8:  LDR             R2, [R0,#0x14]
5931DA:  ADD.W           R3, R2, #0x30 ; '0'
5931DE:  CMP             R2, #0
5931E0:  IT EQ
5931E2:  ADDEQ           R3, R0, #4
5931E4:  VLDR            S8, [R3]
5931E8:  VLDR            S10, [R3,#4]
5931EC:  VSUB.F32        S8, S2, S8
5931F0:  VSUB.F32        S10, S4, S10
5931F4:  VMUL.F32        S8, S8, S8
5931F8:  VMUL.F32        S10, S10, S10
5931FC:  VADD.F32        S8, S8, S10
593200:  VADD.F32        S8, S8, S6
593204:  VCMPE.F32       S8, S0
593208:  VMRS            APSR_nzcv, FPSCR
59320C:  BGE             loc_5931D0
59320E:  MOVS            R0, #0
593210:  POP             {R4,R6,R7,PC}
593212:  MOVS            R0, #1
593214:  POP             {R4,R6,R7,PC}
593216:  MOVS            R0, #1
593218:  POP             {R4,R6,R7,PC}
