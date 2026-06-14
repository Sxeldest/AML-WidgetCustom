; =========================================================
; Game Engine Function: _ZN8CCredits15PrintCreditTextEffPtRjfb
; Address            : 0x462A88 - 0x462BB4
; =========================================================

462A88:  PUSH            {R4-R7,LR}
462A8A:  ADD             R7, SP, #0xC
462A8C:  PUSH.W          {R8}
462A90:  VPUSH           {D8-D9}
462A94:  SUB             SP, SP, #0x10
462A96:  LDR             R0, =(RsGlobal_ptr - 0x462AA4)
462A98:  MOV             R4, R3
462A9A:  VLDR            S0, [R4]
462A9E:  MOV             R6, R1
462AA0:  ADD             R0, PC; RsGlobal_ptr
462AA2:  MOV             R5, R2
462AA4:  VMOV            S16, R6
462AA8:  LDR             R0, [R0]; RsGlobal
462AAA:  VLDR            S2, [R0,#8]
462AAE:  VCVT.F32.U32    S0, S0
462AB2:  MOVS            R0, #0; this
462AB4:  VCVT.F32.S32    S2, S2
462AB8:  VADD.F32        S0, S2, S0
462ABC:  VLDR            S2, [R7,#arg_0]
462AC0:  VSUB.F32        S18, S0, S2
462AC4:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
462AC8:  EOR.W           R0, R0, #0x80000000
462ACC:  VMOV            S0, R0
462AD0:  VCMPE.F32       S18, S0
462AD4:  VMRS            APSR_nzcv, FPSCR
462AD8:  BLE             loc_462B8C
462ADA:  LDR             R0, =(RsGlobal_ptr - 0x462AE0)
462ADC:  ADD             R0, PC; RsGlobal_ptr
462ADE:  LDR             R0, [R0]; RsGlobal
462AE0:  VLDR            S0, [R0,#8]
462AE4:  VCVT.F32.S32    S0, S0
462AE8:  VCMPE.F32       S18, S0
462AEC:  VMRS            APSR_nzcv, FPSCR
462AF0:  BGE             loc_462B8C
462AF2:  MOV             R0, R6; this
462AF4:  LDR.W           R8, [R7,#arg_4]
462AF8:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
462AFC:  ADD             R0, SP, #0x30+var_24; this
462AFE:  MOVS            R6, #0xFF
462B00:  MOVS            R1, #0; unsigned __int8
462B02:  MOVS            R2, #0; unsigned __int8
462B04:  MOVS            R3, #0; unsigned __int8
462B06:  STR             R6, [SP,#0x30+var_30]; unsigned __int8
462B08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
462B0C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
462B10:  LDR             R0, =(RsGlobal_ptr - 0x462B1C)
462B12:  VMOV            R1, S18; float
462B16:  MOV             R2, R5; CFont *
462B18:  ADD             R0, PC; RsGlobal_ptr
462B1A:  LDR             R0, [R0]; RsGlobal
462B1C:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
462B1E:  ADD.W           R0, R0, R0,LSR#31
462B22:  ASRS            R0, R0, #1
462B24:  VMOV            S0, R0
462B28:  VCVT.F32.S32    S0, S0
462B2C:  VMOV            R0, S0; this
462B30:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
462B34:  CMP.W           R8, #1
462B38:  BNE             loc_462B46
462B3A:  STR             R6, [SP,#0x30+var_30]
462B3C:  ADD             R0, SP, #0x30+var_28
462B3E:  MOVS            R1, #0xFF
462B40:  MOVS            R2, #0xFF
462B42:  MOVS            R3, #0xFF
462B44:  B               loc_462B52
462B46:  MOVS            R0, #0xD2
462B48:  MOVS            R1, #0xD2; unsigned __int8
462B4A:  STR             R0, [SP,#0x30+var_30]; unsigned __int8
462B4C:  ADD             R0, SP, #0x30+var_2C; this
462B4E:  MOVS            R2, #0xD2; unsigned __int8
462B50:  MOVS            R3, #0xD2; unsigned __int8
462B52:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
462B56:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
462B5A:  LDR             R0, =(RsGlobal_ptr - 0x462B6A)
462B5C:  VMOV.F32        S0, #-1.0
462B60:  MOV.W           R1, #0xFFFFFFFF
462B64:  MOV             R2, R5; CFont *
462B66:  ADD             R0, PC; RsGlobal_ptr
462B68:  LDR             R0, [R0]; RsGlobal
462B6A:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
462B6C:  VADD.F32        S0, S18, S0
462B70:  ADD.W           R0, R0, R0,LSR#31
462B74:  ADD.W           R0, R1, R0,ASR#1
462B78:  VMOV            S2, R0
462B7C:  VMOV            R1, S0; float
462B80:  VCVT.F32.S32    S2, S2
462B84:  VMOV            R0, S2; this
462B88:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
462B8C:  VMOV.F32        S0, #20.0
462B90:  VLDR            S2, [R4]
462B94:  VCVT.F32.U32    S2, S2
462B98:  VMUL.F32        S0, S16, S0
462B9C:  VADD.F32        S0, S0, S2
462BA0:  VCVT.U32.F32    S0, S0
462BA4:  VSTR            S0, [R4]
462BA8:  ADD             SP, SP, #0x10
462BAA:  VPOP            {D8-D9}
462BAE:  POP.W           {R8}
462BB2:  POP             {R4-R7,PC}
