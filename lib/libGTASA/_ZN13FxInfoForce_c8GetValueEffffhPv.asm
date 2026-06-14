; =========================================================
; Game Engine Function: _ZN13FxInfoForce_c8GetValueEffffhPv
; Address            : 0x36A99A - 0x36AA0E
; =========================================================

36A99A:  PUSH            {R4,R6,R7,LR}
36A99C:  ADD             R7, SP, #8
36A99E:  SUB             SP, SP, #0x40
36A9A0:  VMOV            S2, R1
36A9A4:  VLDR            S0, [R7,#arg_0]
36A9A8:  LDRB            R1, [R0,#6]
36A9AA:  ADDS            R0, #8; this
36A9AC:  VDIV.F32        S0, S2, S0
36A9B0:  MOV             R4, R3
36A9B2:  CMP             R1, #0
36A9B4:  MOV             R1, SP; float *
36A9B6:  VMOV            S2, R2
36A9BA:  IT EQ
36A9BC:  VMOVEQ.F32      S2, S0
36A9C0:  VMOV            R2, S2; float
36A9C4:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36A9C8:  VMOV            S0, R4
36A9CC:  VLDR            S2, [SP,#0x48+var_48]
36A9D0:  LDR             R0, [R7,#arg_8]
36A9D2:  VMUL.F32        S2, S2, S0
36A9D6:  VLDR            S4, [R0,#0xC]
36A9DA:  VLDR            S6, [R0,#0x10]
36A9DE:  VLDR            S8, [R0,#0x14]
36A9E2:  VADD.F32        S2, S4, S2
36A9E6:  VLDR            S4, [SP,#0x48+var_44]
36A9EA:  VMUL.F32        S4, S4, S0
36A9EE:  VADD.F32        S4, S6, S4
36A9F2:  VLDR            S6, [SP,#0x48+var_40]
36A9F6:  VSTR            S2, [R0,#0xC]
36A9FA:  VMUL.F32        S0, S6, S0
36A9FE:  VSTR            S4, [R0,#0x10]
36AA02:  VADD.F32        S0, S8, S0
36AA06:  VSTR            S0, [R0,#0x14]
36AA0A:  ADD             SP, SP, #0x40 ; '@'
36AA0C:  POP             {R4,R6,R7,PC}
