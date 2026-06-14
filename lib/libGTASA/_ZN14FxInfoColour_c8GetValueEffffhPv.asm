; =========================================================
; Game Engine Function: _ZN14FxInfoColour_c8GetValueEffffhPv
; Address            : 0x36B3EE - 0x36B458
; =========================================================

36B3EE:  PUSH            {R7,LR}
36B3F0:  MOV             R7, SP
36B3F2:  SUB             SP, SP, #0x40
36B3F4:  VMOV            S2, R1
36B3F8:  VLDR            S0, [R7,#8]
36B3FC:  LDRB            R1, [R0,#6]
36B3FE:  ADDS            R0, #8; this
36B400:  VDIV.F32        S0, S2, S0
36B404:  CMP             R1, #0
36B406:  MOV             R1, SP; float *
36B408:  VMOV            S2, R2
36B40C:  IT EQ
36B40E:  VMOVEQ.F32      S2, S0
36B412:  VMOV            R2, S2; float
36B416:  BLX             j__ZN18FxInterpInfoU255_c6GetValEPff; FxInterpInfoU255_c::GetVal(float *,float)
36B41A:  VLDR            S0, [SP,#0x48+var_48]
36B41E:  LDR             R0, [R7,#0x10]
36B420:  VCVT.S32.F32    S0, S0
36B424:  VMOV            R1, S0
36B428:  STRB            R1, [R0]
36B42A:  VLDR            S0, [SP,#0x48+var_44]
36B42E:  VCVT.S32.F32    S0, S0
36B432:  VMOV            R1, S0
36B436:  STRB            R1, [R0,#1]
36B438:  VLDR            S0, [SP,#0x48+var_40]
36B43C:  VCVT.S32.F32    S0, S0
36B440:  VMOV            R1, S0
36B444:  STRB            R1, [R0,#2]
36B446:  VLDR            S0, [SP,#0x48+var_3C]
36B44A:  VCVT.S32.F32    S0, S0
36B44E:  VMOV            R1, S0
36B452:  STRB            R1, [R0,#3]
36B454:  ADD             SP, SP, #0x40 ; '@'
36B456:  POP             {R7,PC}
