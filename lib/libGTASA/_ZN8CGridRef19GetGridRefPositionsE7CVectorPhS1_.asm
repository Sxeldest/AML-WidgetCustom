; =========================================================
; Game Engine Function: _ZN8CGridRef19GetGridRefPositionsE7CVectorPhS1_
; Address            : 0x5ADA14 - 0x5ADA50
; =========================================================

5ADA14:  VMOV            S2, R0
5ADA18:  VLDR            S0, =3000.0
5ADA1C:  VLDR            S6, =600.0
5ADA20:  VMOV            S4, R1
5ADA24:  VADD.F32        S2, S2, S0
5ADA28:  LDR             R0, [SP,#arg_0]
5ADA2A:  VADD.F32        S0, S4, S0
5ADA2E:  VDIV.F32        S2, S2, S6
5ADA32:  VDIV.F32        S0, S0, S6
5ADA36:  VCVT.U32.F32    S2, S2
5ADA3A:  VCVT.U32.F32    S0, S0
5ADA3E:  VMOV            R1, S2
5ADA42:  STRB            R1, [R3]
5ADA44:  VMOV            R1, S0
5ADA48:  RSB.W           R1, R1, #9
5ADA4C:  STRB            R1, [R0]
5ADA4E:  BX              LR
