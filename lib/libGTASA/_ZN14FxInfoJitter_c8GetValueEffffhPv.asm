; =========================================================
; Game Engine Function: _ZN14FxInfoJitter_c8GetValueEffffhPv
; Address            : 0x36B184 - 0x36B2A6
; =========================================================

36B184:  PUSH            {R4-R7,LR}
36B186:  ADD             R7, SP, #0xC
36B188:  PUSH.W          {R11}
36B18C:  VPUSH           {D8-D9}
36B190:  SUB             SP, SP, #0x50
36B192:  VMOV            S2, R1
36B196:  VLDR            S0, [R7,#arg_0]
36B19A:  LDRB            R1, [R0,#6]
36B19C:  ADDS            R0, #8; this
36B19E:  VDIV.F32        S0, S2, S0
36B1A2:  MOV             R4, R3
36B1A4:  CMP             R1, #0
36B1A6:  ADD             R1, SP, #0x70+var_60; float *
36B1A8:  VMOV            S2, R2
36B1AC:  IT EQ
36B1AE:  VMOVEQ.F32      S2, S0
36B1B2:  VMOV            R2, S2; float
36B1B6:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36B1BA:  BLX             rand
36B1BE:  MOVW            R5, #0x8BAD
36B1C2:  MOVW            R6, #0x2710
36B1C6:  MOVT            R5, #0x68DB
36B1CA:  VLDR            S16, =0.0002
36B1CE:  SMMUL.W         R1, R0, R5
36B1D2:  VMOV.F32        S18, #-1.0
36B1D6:  ASRS            R2, R1, #0xC
36B1D8:  ADD.W           R1, R2, R1,LSR#31
36B1DC:  MLS.W           R0, R1, R6, R0
36B1E0:  VMOV            S0, R0
36B1E4:  VCVT.F32.S32    S0, S0
36B1E8:  VMUL.F32        S0, S0, S16
36B1EC:  VADD.F32        S0, S0, S18
36B1F0:  VSTR            S0, [SP,#0x70+var_6C]
36B1F4:  BLX             rand
36B1F8:  SMMUL.W         R1, R0, R5
36B1FC:  ASRS            R2, R1, #0xC
36B1FE:  ADD.W           R1, R2, R1,LSR#31
36B202:  MLS.W           R0, R1, R6, R0
36B206:  VMOV            S0, R0
36B20A:  VCVT.F32.S32    S0, S0
36B20E:  VMUL.F32        S0, S0, S16
36B212:  VADD.F32        S0, S0, S18
36B216:  VSTR            S0, [SP,#0x70+var_68]
36B21A:  BLX             rand
36B21E:  SMMUL.W         R1, R0, R5
36B222:  ASRS            R2, R1, #0xC
36B224:  ADD.W           R1, R2, R1,LSR#31
36B228:  MLS.W           R0, R1, R6, R0
36B22C:  VMOV            S0, R0
36B230:  ADD             R0, SP, #0x70+var_6C
36B232:  VCVT.F32.S32    S0, S0
36B236:  MOV             R1, R0
36B238:  VMUL.F32        S0, S0, S16
36B23C:  VADD.F32        S0, S0, S18
36B240:  VSTR            S0, [SP,#0x70+var_64]
36B244:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
36B248:  VMOV            S0, R4
36B24C:  VLDR            S2, [SP,#0x70+var_60]
36B250:  VLDR            S4, [SP,#0x70+var_68]
36B254:  VMUL.F32        S0, S2, S0
36B258:  VLDR            S2, [SP,#0x70+var_6C]
36B25C:  VLDR            S6, [SP,#0x70+var_64]
36B260:  LDR             R0, [R7,#arg_8]
36B262:  VMUL.F32        S2, S2, S0
36B266:  VMUL.F32        S4, S0, S4
36B26A:  VMUL.F32        S0, S6, S0
36B26E:  VSTR            S2, [SP,#0x70+var_6C]
36B272:  VSTR            S4, [SP,#0x70+var_68]
36B276:  VLDR            S6, [R0]
36B27A:  VLDR            S8, [R0,#4]
36B27E:  VLDR            S10, [R0,#8]
36B282:  VADD.F32        S2, S6, S2
36B286:  VADD.F32        S4, S8, S4
36B28A:  VADD.F32        S0, S10, S0
36B28E:  VSTR            S2, [R0]
36B292:  VSTR            S4, [R0,#4]
36B296:  VSTR            S0, [R0,#8]
36B29A:  ADD             SP, SP, #0x50 ; 'P'
36B29C:  VPOP            {D8-D9}
36B2A0:  POP.W           {R11}
36B2A4:  POP             {R4-R7,PC}
