; =========================================================
; Game Engine Function: _ZN20FxInfoColourBright_c8GetValueEffffhPv
; Address            : 0x36B9A6 - 0x36BA22
; =========================================================

36B9A6:  PUSH            {R7,LR}
36B9A8:  MOV             R7, SP
36B9AA:  SUB             SP, SP, #0x40
36B9AC:  VMOV            S2, R1
36B9B0:  VLDR            S0, [R7,#8]
36B9B4:  LDRB            R1, [R0,#6]
36B9B6:  ADDS            R0, #8; this
36B9B8:  VDIV.F32        S0, S2, S0
36B9BC:  CMP             R1, #0
36B9BE:  MOV             R1, SP; float *
36B9C0:  VMOV            S2, R2
36B9C4:  IT EQ
36B9C6:  VMOVEQ.F32      S2, S0
36B9CA:  VMOV            R2, S2; float
36B9CE:  BLX             j__ZN18FxInterpInfoU255_c6GetValEPff; FxInterpInfoU255_c::GetVal(float *,float)
36B9D2:  VLDR            S0, [SP,#0x48+var_48]
36B9D6:  LDR             R0, [R7,#0x10]
36B9D8:  VCVT.U32.F32    S0, S0
36B9DC:  VMOV            R1, S0
36B9E0:  STRB            R1, [R0]
36B9E2:  VLDR            S0, [SP,#0x48+var_44]
36B9E6:  VCVT.U32.F32    S0, S0
36B9EA:  VMOV            R1, S0
36B9EE:  STRB            R1, [R0,#1]
36B9F0:  VLDR            S0, [SP,#0x48+var_40]
36B9F4:  VCVT.U32.F32    S0, S0
36B9F8:  VMOV            R1, S0
36B9FC:  STRB            R1, [R0,#2]
36B9FE:  VLDR            S0, [SP,#0x48+var_3C]
36BA02:  VCVT.U32.F32    S0, S0
36BA06:  VMOV            R1, S0
36BA0A:  STRB            R1, [R0,#3]
36BA0C:  MOVS            R1, #2
36BA0E:  VLDR            S0, [SP,#0x48+var_38]
36BA12:  VCVT.U32.F32    S0, S0
36BA16:  STR             R1, [R0,#8]
36BA18:  VMOV            R1, S0
36BA1C:  STRB            R1, [R0,#7]
36BA1E:  ADD             SP, SP, #0x40 ; '@'
36BA20:  POP             {R7,PC}
