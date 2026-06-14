; =========================================================
; Game Engine Function: _ZN4CPed17GetLocalDirectionERK9CVector2D
; Address            : 0x4A4294 - 0x4A4302
; =========================================================

4A4294:  PUSH            {R4,R6,R7,LR}
4A4296:  ADD             R7, SP, #8
4A4298:  MOV             R4, R0
4A429A:  LDRD.W          R0, R1, [R1]; x
4A429E:  EOR.W           R0, R0, #0x80000000; y
4A42A2:  BLX             atan2f
4A42A6:  ADDW            R1, R4, #0x55C
4A42AA:  VMOV            S0, R0
4A42AE:  VLDR            S2, [R1]
4A42B2:  VSUB.F32        S0, S0, S2
4A42B6:  VLDR            S2, =0.7854
4A42BA:  VADD.F32        S0, S0, S2
4A42BE:  VCMPE.F32       S0, #0.0
4A42C2:  VMRS            APSR_nzcv, FPSCR
4A42C6:  BGE             loc_4A42DA
4A42C8:  VLDR            S2, =6.2832
4A42CC:  VADD.F32        S0, S0, S2
4A42D0:  VCMPE.F32       S0, #0.0
4A42D4:  VMRS            APSR_nzcv, FPSCR
4A42D8:  BLT             loc_4A42CC
4A42DA:  VLDR            S2, =1.5708
4A42DE:  VDIV.F32        S0, S0, S2
4A42E2:  VCVT.S32.F32    S0, S0
4A42E6:  VMOV            R0, S0
4A42EA:  MVNS            R1, R0
4A42EC:  CMN.W           R1, #4
4A42F0:  IT LE
4A42F2:  MOVLE           R1, #0xFFFFFFFC
4A42F6:  ADD             R1, R0
4A42F8:  ADDS            R1, #4
4A42FA:  BIC.W           R1, R1, #3
4A42FE:  SUBS            R0, R0, R1
4A4300:  POP             {R4,R6,R7,PC}
