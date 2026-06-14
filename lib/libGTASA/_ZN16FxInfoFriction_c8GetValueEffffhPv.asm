; =========================================================
; Game Engine Function: _ZN16FxInfoFriction_c8GetValueEffffhPv
; Address            : 0x36AA58 - 0x36AACA
; =========================================================

36AA58:  PUSH            {R4,R6,R7,LR}
36AA5A:  ADD             R7, SP, #8
36AA5C:  SUB             SP, SP, #0x40
36AA5E:  VMOV            S2, R1
36AA62:  VLDR            S0, [R7,#arg_0]
36AA66:  LDRB            R1, [R0,#6]
36AA68:  ADDS            R0, #8; this
36AA6A:  VDIV.F32        S0, S2, S0
36AA6E:  MOV             R4, R3
36AA70:  CMP             R1, #0
36AA72:  MOV             R1, SP; float *
36AA74:  VMOV            S2, R2
36AA78:  IT EQ
36AA7A:  VMOVEQ.F32      S2, S0
36AA7E:  VMOV            R2, S2; float
36AA82:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36AA86:  VLDR            S0, =50.0
36AA8A:  VMOV            S2, R4
36AA8E:  LDR             R0, [SP,#0x48+x]; x
36AA90:  VMUL.F32        S0, S2, S0
36AA94:  VMOV            R1, S0; y
36AA98:  BLX             powf
36AA9C:  LDR             R1, [R7,#arg_8]
36AA9E:  VMOV            S6, R0
36AAA2:  VLDR            S0, [R1,#0xC]
36AAA6:  VLDR            S2, [R1,#0x10]
36AAAA:  VLDR            S4, [R1,#0x14]
36AAAE:  VMUL.F32        S0, S6, S0
36AAB2:  VMUL.F32        S2, S6, S2
36AAB6:  VMUL.F32        S4, S6, S4
36AABA:  VSTR            S0, [R1,#0xC]
36AABE:  VSTR            S2, [R1,#0x10]
36AAC2:  VSTR            S4, [R1,#0x14]
36AAC6:  ADD             SP, SP, #0x40 ; '@'
36AAC8:  POP             {R4,R6,R7,PC}
