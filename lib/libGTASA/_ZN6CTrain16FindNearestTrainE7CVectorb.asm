; =========================================================
; Game Engine Function: _ZN6CTrain16FindNearestTrainE7CVectorb
; Address            : 0x580A64 - 0x580B24
; =========================================================

580A64:  PUSH            {R4-R7,LR}
580A66:  ADD             R7, SP, #0xC
580A68:  PUSH.W          {R8}
580A6C:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x580A72)
580A6E:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
580A70:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
580A72:  LDR.W           R12, [R2]; CPools::ms_pVehiclePool
580A76:  LDR.W           R2, [R12,#8]
580A7A:  CMP             R2, #0
580A7C:  BEQ             loc_580B1C
580A7E:  LDR.W           LR, [R12,#4]
580A82:  VMOV            S0, R0
580A86:  VLDR            S6, =1.0e7
580A8A:  VMOV            S2, R1
580A8E:  MOVS            R0, #0
580A90:  MOVW            R8, #0xA2C
580A94:  MOV             R4, R0
580A96:  MUL.W           R0, R2, R8
580A9A:  VMOV.F32        S4, S6
580A9E:  SUBS            R2, #1
580AA0:  SUBW            R5, R0, #0xA2C
580AA4:  LDRSB.W         R0, [LR,R2]
580AA8:  CMP             R0, #0
580AAA:  BLT             loc_580AFE
580AAC:  LDR.W           R0, [R12]
580AB0:  ADDS            R0, R0, R5
580AB2:  BEQ             loc_580AFE
580AB4:  LDR.W           R6, [R0,#0x5A0]
580AB8:  CMP             R6, #6
580ABA:  BNE             loc_580AFE
580ABC:  LDR             R6, [R0,#0x14]
580ABE:  ADD.W           R1, R6, #0x30 ; '0'
580AC2:  CMP             R6, #0
580AC4:  IT EQ
580AC6:  ADDEQ           R1, R0, #4
580AC8:  VLDR            S6, [R1]
580ACC:  VLDR            S8, [R1,#4]
580AD0:  VSUB.F32        S6, S6, S0
580AD4:  VSUB.F32        S8, S8, S2
580AD8:  VMUL.F32        S6, S6, S6
580ADC:  VMUL.F32        S8, S8, S8
580AE0:  VADD.F32        S6, S6, S8
580AE4:  VSQRT.F32       S6, S6
580AE8:  VCMPE.F32       S6, S4
580AEC:  VMRS            APSR_nzcv, FPSCR
580AF0:  BGE             loc_580AFE
580AF2:  CMP             R3, #1
580AF4:  BNE             loc_580B0A
580AF6:  LDRB.W          R1, [R0,#0x5CC]
580AFA:  LSLS            R1, R1, #0x1C
580AFC:  BMI             loc_580B0A
580AFE:  SUBS            R2, #1
580B00:  SUBW            R5, R5, #0xA2C
580B04:  ADDS            R0, R2, #1
580B06:  BNE             loc_580AA4
580B08:  B               loc_580B14
580B0A:  CMP             R2, #0
580B0C:  BNE             loc_580A94
580B0E:  POP.W           {R8}
580B12:  POP             {R4-R7,PC}
580B14:  MOV             R0, R4
580B16:  POP.W           {R8}
580B1A:  POP             {R4-R7,PC}
580B1C:  MOVS            R0, #0
580B1E:  POP.W           {R8}
580B22:  POP             {R4-R7,PC}
