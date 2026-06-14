; =========================================================
; Game Engine Function: _ZN13FxInfoSmoke_c8GetValueEffffhPv
; Address            : 0x36BA6A - 0x36BAC4
; =========================================================

36BA6A:  PUSH            {R4,R6,R7,LR}
36BA6C:  ADD             R7, SP, #8
36BA6E:  SUB             SP, SP, #0x40
36BA70:  VMOV            S2, R1
36BA74:  VLDR            S0, [R7,#arg_0]
36BA78:  LDRB            R1, [R0,#6]
36BA7A:  ADDS            R0, #8; this
36BA7C:  VDIV.F32        S0, S2, S0
36BA80:  MOV             R4, SP
36BA82:  CMP             R1, #0
36BA84:  MOV             R1, R4; float *
36BA86:  VMOV            S2, R2
36BA8A:  IT EQ
36BA8C:  VMOVEQ.F32      S2, S0
36BA90:  VMOV            R2, S2; float
36BA94:  BLX             j__ZN18FxInterpInfoU255_c6GetValEPff; FxInterpInfoU255_c::GetVal(float *,float)
36BA98:  VLDR            S0, [SP,#0x48+var_48]
36BA9C:  ADD             R3, SP, #0x48+var_34
36BA9E:  LDR             R0, [R7,#arg_8]
36BAA0:  VCVT.S32.F32    S0, S0
36BAA4:  VMOV            R1, S0
36BAA8:  STRB.W          R1, [R0,#0x7B]
36BAAC:  ADDS            R1, R4, #4
36BAAE:  VLD1.32         {D16-D17}, [R1]
36BAB2:  ADD.W           R1, R0, #0x88
36BAB6:  ADDS            R0, #0x98
36BAB8:  VST1.32         {D16-D17}, [R1]
36BABC:  LDM             R3, {R1-R3}
36BABE:  STM             R0!, {R1-R3}
36BAC0:  ADD             SP, SP, #0x40 ; '@'
36BAC2:  POP             {R4,R6,R7,PC}
