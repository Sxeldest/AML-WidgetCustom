; =========================================================
; Game Engine Function: _ZN19FxInfoColourRange_c8GetValueEffffhPv
; Address            : 0x36B88E - 0x36B926
; =========================================================

36B88E:  PUSH            {R7,LR}
36B890:  MOV             R7, SP
36B892:  SUB             SP, SP, #0x40
36B894:  VMOV            S2, R1
36B898:  VLDR            S0, [R7,#8]
36B89C:  LDRB            R1, [R0,#6]
36B89E:  ADDS            R0, #8; this
36B8A0:  VDIV.F32        S0, S2, S0
36B8A4:  CMP             R1, #0
36B8A6:  MOV             R1, SP; float *
36B8A8:  VMOV            S2, R2
36B8AC:  IT EQ
36B8AE:  VMOVEQ.F32      S2, S0
36B8B2:  VMOV            R2, S2; float
36B8B6:  BLX             j__ZN18FxInterpInfoU255_c6GetValEPff; FxInterpInfoU255_c::GetVal(float *,float)
36B8BA:  VLDR            S0, [SP,#0x48+var_48]
36B8BE:  LDR             R0, [R7,#0x10]
36B8C0:  VCVT.U32.F32    S0, S0
36B8C4:  VMOV            R1, S0
36B8C8:  STRB            R1, [R0]
36B8CA:  VLDR            S0, [SP,#0x48+var_40]
36B8CE:  VCVT.U32.F32    S0, S0
36B8D2:  VMOV            R1, S0
36B8D6:  STRB            R1, [R0,#1]
36B8D8:  VLDR            S0, [SP,#0x48+var_38]
36B8DC:  VCVT.U32.F32    S0, S0
36B8E0:  VMOV            R1, S0
36B8E4:  STRB            R1, [R0,#2]
36B8E6:  VLDR            S0, [SP,#0x48+var_30]
36B8EA:  VCVT.U32.F32    S0, S0
36B8EE:  VMOV            R1, S0
36B8F2:  STRB            R1, [R0,#3]
36B8F4:  VLDR            S0, [SP,#0x48+var_44]
36B8F8:  VCVT.U32.F32    S0, S0
36B8FC:  VMOV            R1, S0
36B900:  STRB            R1, [R0,#4]
36B902:  VLDR            S0, [SP,#0x48+var_3C]
36B906:  VCVT.U32.F32    S0, S0
36B90A:  VMOV            R1, S0
36B90E:  STRB            R1, [R0,#5]
36B910:  MOVS            R1, #1
36B912:  VLDR            S0, [SP,#0x48+var_34]
36B916:  VCVT.U32.F32    S0, S0
36B91A:  STR             R1, [R0,#8]
36B91C:  VMOV            R1, S0
36B920:  STRB            R1, [R0,#6]
36B922:  ADD             SP, SP, #0x40 ; '@'
36B924:  POP             {R7,PC}
