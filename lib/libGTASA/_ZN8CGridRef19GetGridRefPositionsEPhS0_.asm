; =========================================================
; Game Engine Function: _ZN8CGridRef19GetGridRefPositionsEPhS0_
; Address            : 0x5ADA58 - 0x5ADAB2
; =========================================================

5ADA58:  PUSH            {R4,R5,R7,LR}
5ADA5A:  ADD             R7, SP, #8
5ADA5C:  SUB             SP, SP, #0x18
5ADA5E:  MOV             R5, R0
5ADA60:  ADD             R0, SP, #0x20+var_14; int
5ADA62:  MOV             R4, R1
5ADA64:  MOV.W           R1, #0xFFFFFFFF
5ADA68:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5ADA6C:  MOV             R0, SP; int
5ADA6E:  MOV.W           R1, #0xFFFFFFFF
5ADA72:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5ADA76:  VLDR            S0, =3000.0
5ADA7A:  VLDR            S2, [SP,#0x20+var_20]
5ADA7E:  VLDR            S6, =600.0
5ADA82:  VADD.F32        S2, S2, S0
5ADA86:  VLDR            S4, [SP,#0x20+var_1C]
5ADA8A:  VADD.F32        S0, S4, S0
5ADA8E:  VDIV.F32        S2, S2, S6
5ADA92:  VDIV.F32        S0, S0, S6
5ADA96:  VCVT.U32.F32    S2, S2
5ADA9A:  VCVT.U32.F32    S0, S0
5ADA9E:  VMOV            R0, S2
5ADAA2:  STRB            R0, [R5]
5ADAA4:  VMOV            R0, S0
5ADAA8:  RSB.W           R0, R0, #9
5ADAAC:  STRB            R0, [R4]
5ADAAE:  ADD             SP, SP, #0x18
5ADAB0:  POP             {R4,R5,R7,PC}
