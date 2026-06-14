; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard23InternalFlushQueuedTextEv
; Address            : 0x294E9C - 0x295072
; =========================================================

294E9C:  PUSH            {R4-R7,LR}
294E9E:  ADD             R7, SP, #0xC
294EA0:  PUSH.W          {R8-R11}
294EA4:  SUB             SP, SP, #4
294EA6:  VPUSH           {D8-D14}
294EAA:  SUB             SP, SP, #0x20
294EAC:  MOV             R11, R0
294EAE:  LDR.W           R0, [R11,#0x14]
294EB2:  CMP             R0, #1
294EB4:  BLT.W           loc_29505E
294EB8:  LDR             R0, =(RsGlobal_ptr - 0x294ECA)
294EBA:  VMOV.F32        S22, #0.5
294EBE:  VLDR            S16, =640.0
294EC2:  ADD.W           R9, SP, #0x78+var_60
294EC6:  ADD             R0, PC; RsGlobal_ptr
294EC8:  VLDR            S18, =0.045
294ECC:  VLDR            S20, =0.9
294ED0:  MOV.W           R10, #0
294ED4:  LDR             R0, [R0]; RsGlobal
294ED6:  STR             R0, [SP,#0x78+var_64]
294ED8:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294EDE)
294EDA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294EDC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294EDE:  STR             R0, [SP,#0x78+var_68]
294EE0:  LDR             R0, =(TheText_ptr - 0x294EE6)
294EE2:  ADD             R0, PC; TheText_ptr
294EE4:  LDR             R0, [R0]; TheText
294EE6:  STR             R0, [SP,#0x78+var_6C]
294EE8:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x294EEE)
294EEA:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
294EEC:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
294EEE:  STR             R0, [SP,#0x78+var_70]
294EF0:  B               loc_294FB4
294EF2:  LDR.W           R0, [R1,#-4]
294EF6:  CMP             R0, #0x63 ; 'c'
294EF8:  BGT.W           loc_295052
294EFC:  LDR             R1, [SP,#0x78+var_68]
294EFE:  LDR             R2, [R1,#4]
294F00:  CBZ             R2, loc_294F20
294F02:  LDR             R1, [SP,#0x78+var_70]
294F04:  MOVS            R3, #0
294F06:  LDR             R1, [R1,#8]
294F08:  ADDS            R1, #4
294F0A:  LDR.W           R6, [R1,#-4]
294F0E:  CMP             R6, R0
294F10:  BEQ             loc_294F24
294F12:  ADDS            R3, #1
294F14:  ADDS            R1, #0xC
294F16:  CMP             R3, R2
294F18:  BCC             loc_294F0A
294F1A:  LDR             R1, =(aKeyUnk - 0x294F20); "KEY_UNK"
294F1C:  ADD             R1, PC; "KEY_UNK"
294F1E:  B               loc_294F24
294F20:  LDR             R1, =(aKeyUnk - 0x294F26); "KEY_UNK"
294F22:  ADD             R1, PC; "KEY_UNK"
294F24:  LDR             R0, [SP,#0x78+var_6C]; this
294F26:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
294F2A:  VLDR            S0, [R8,#0x24]
294F2E:  MOV             R6, R0
294F30:  VMUL.F32        S24, S0, S18
294F34:  VMOV            R0, S24; this
294F38:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
294F3C:  MOV             R0, R6; this
294F3E:  MOVS            R1, #(stderr+1); unsigned __int16 *
294F40:  MOVS            R2, #0; unsigned __int8
294F42:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
294F46:  VLDR            S0, [R8,#0x24]
294F4A:  VMOV            S4, R0
294F4E:  VMUL.F32        S2, S0, S20
294F52:  VCMPE.F32       S4, S2
294F56:  VMRS            APSR_nzcv, FPSCR
294F5A:  BLE             loc_294F74
294F5C:  VDIV.F32        S0, S2, S4
294F60:  ADD.W           R4, R8, #0x24 ; '$'
294F64:  VMUL.F32        S0, S24, S0
294F68:  VMOV            R0, S0; this
294F6C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
294F70:  VLDR            S0, [R4]
294F74:  MOVS            R0, #0; this
294F76:  VLDR            S24, [R8,#0x1C]
294F7A:  VLDR            S26, [R8,#0x20]
294F7E:  VMUL.F32        S28, S0, S22
294F82:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
294F86:  VMOV            S0, R0
294F8A:  MOV             R2, R6; CFont *
294F8C:  VADD.F32        S2, S26, S28
294F90:  VMUL.F32        S0, S0, S22
294F94:  VADD.F32        S4, S24, S28
294F98:  VSUB.F32        S0, S2, S0
294F9C:  VMOV            R0, S4; this
294FA0:  VMOV            R1, S0; float
294FA4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
294FA8:  MOVS            R0, #0; this
294FAA:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
294FAE:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
294FB2:  B               loc_295052
294FB4:  MOVS            R0, #0; this
294FB6:  MOVS            R1, #0; unsigned __int8
294FB8:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
294FBC:  MOVS            R0, #0; this
294FBE:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
294FC2:  LDR             R0, [SP,#0x78+var_64]
294FC4:  LDR             R0, [R0,#4]
294FC6:  VMOV            S0, R0
294FCA:  VCVT.F32.S32    S0, S0
294FCE:  VDIV.F32        S0, S0, S16
294FD2:  VMUL.F32        S0, S0, S16
294FD6:  VMOV            R0, S0; this
294FDA:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
294FDE:  MOVS            R0, #(stderr+1); this
294FE0:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
294FE4:  MOVS            R0, #(stderr+1); this
294FE6:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
294FEA:  MOVS            R0, #(stderr+1); this
294FEC:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
294FF0:  ADD.W           R0, R10, R10,LSL#1
294FF4:  MOVS            R1, #0xFF; unsigned __int8
294FF6:  MOVS            R2, #0xFF; unsigned __int8
294FF8:  MOVS            R3, #0xFF; unsigned __int8
294FFA:  ADD.W           R8, R11, R0,LSL#3
294FFE:  LDRB.W          R0, [R8,#0x28]
295002:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
295004:  ADD             R0, SP, #0x78+var_5C; this
295006:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29500A:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
29500E:  LDRB.W          R0, [R8,#0x28]
295012:  MOVS            R1, #0; unsigned __int8
295014:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
295016:  MOV             R0, R9; this
295018:  MOVS            R2, #0; unsigned __int8
29501A:  MOVS            R3, #0; unsigned __int8
29501C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
295020:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
295024:  LDR.W           R0, [R11,#8]
295028:  CBZ             R0, loc_295052
29502A:  LDR.W           R1, [R11,#0xC]
29502E:  ADD.W           R2, R8, #0x2C ; ','
295032:  LDR.W           R3, [R8,#0x18]
295036:  MOVS            R6, #0
295038:  ADDS            R1, #4
29503A:  LDR             R4, [R1]
29503C:  CMP             R4, R3
29503E:  BNE             loc_29504A
295040:  LDRB            R4, [R2]
295042:  LDRB            R5, [R1,#4]
295044:  CMP             R5, R4
295046:  BEQ.W           loc_294EF2
29504A:  ADDS            R6, #1
29504C:  ADDS            R1, #0x14
29504E:  CMP             R6, R0
295050:  BCC             loc_29503A
295052:  LDR.W           R0, [R11,#0x14]
295056:  ADD.W           R10, R10, #1
29505A:  CMP             R10, R0
29505C:  BLT             loc_294FB4
29505E:  MOVS            R0, #0
295060:  STR.W           R0, [R11,#0x14]
295064:  ADD             SP, SP, #0x20 ; ' '
295066:  VPOP            {D8-D14}
29506A:  ADD             SP, SP, #4
29506C:  POP.W           {R8-R11}
295070:  POP             {R4-R7,PC}
