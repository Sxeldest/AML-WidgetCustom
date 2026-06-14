; =========================================================
; Game Engine Function: _ZN8CPickups16RenderPickUpTextEv
; Address            : 0x320ACC - 0x320C2A
; =========================================================

320ACC:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x320AD2)
320ACE:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
320AD0:  LDR             R0, [R0]; CPickups::NumMessages ...
320AD2:  LDRH            R0, [R0]; CPickups::NumMessages
320AD4:  CMP             R0, #0
320AD6:  IT EQ
320AD8:  BXEQ            LR
320ADA:  PUSH            {R4-R7,LR}
320ADC:  ADD             R7, SP, #0x14+var_8
320ADE:  PUSH.W          {R8-R11}
320AE2:  SUB             SP, SP, #4
320AE4:  VPUSH           {D8}
320AE8:  SUB             SP, SP, #0x20 ; ' '
320AEA:  LDR             R1, =(_ZN8CPickups9aMessagesE_ptr - 0x320AFC)
320AEC:  VMOV.F32        S16, #30.0
320AF0:  MOVW            R8, #0x6667
320AF4:  MOV.W           R9, #0
320AF8:  ADD             R1, PC; _ZN8CPickups9aMessagesE_ptr
320AFA:  MOVT            R8, #0x6666
320AFE:  LDR             R1, [R1]; CPickups::aMessages ...
320B00:  ADD.W           R6, R1, #0x20 ; ' '
320B04:  LDR             R1, =(gGxtString_ptr - 0x320B0A)
320B06:  ADD             R1, PC; gGxtString_ptr
320B08:  LDR             R1, [R1]; gGxtString
320B0A:  STR             R1, [SP,#0x50+var_3C]
320B0C:  LDR             R1, =(RsGlobal_ptr - 0x320B12)
320B0E:  ADD             R1, PC; RsGlobal_ptr
320B10:  LDR.W           R11, [R1]; RsGlobal
320B14:  LDR             R1, =(_ZN8CPickups11NumMessagesE_ptr - 0x320B1A)
320B16:  ADD             R1, PC; _ZN8CPickups11NumMessagesE_ptr
320B18:  LDR             R1, [R1]; CPickups::NumMessages ...
320B1A:  STR             R1, [SP,#0x50+var_38]
320B1C:  LDR             R1, =(gString_ptr - 0x320B22)
320B1E:  ADD             R1, PC; gString_ptr
320B20:  LDR.W           R10, [R1]; gString
320B24:  LDR             R1, =(gGxtString_ptr - 0x320B2A)
320B26:  ADD             R1, PC; gGxtString_ptr
320B28:  LDR             R5, [R1]; gGxtString
320B2A:  B               loc_320B62
320B2C:  LDR             R4, [R6]
320B2E:  CMP             R4, #0
320B30:  BEQ             loc_320BFE
320B32:  LDRB.W          R0, [R6,#-8]
320B36:  LSLS            R0, R0, #0x1E
320B38:  BPL             loc_320B7C
320B3A:  MOVS            R0, #0
320B3C:  MOVS            R1, #0; unsigned __int16 *
320B3E:  STRD.W          R0, R0, [SP,#0x50+var_50]; int
320B42:  MOVS            R2, #0; int
320B44:  STR             R0, [SP,#0x50+var_48]; int
320B46:  MOV             R0, R4; this
320B48:  LDR.W           R8, [SP,#0x50+var_3C]
320B4C:  MOVS            R3, #0; int
320B4E:  STR.W           R8, [SP,#0x50+var_44]; int
320B52:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
320B56:  MOV             R4, R8
320B58:  MOV             R8, #0x66666667
320B60:  B               loc_320B7C
320B62:  LDR.W           R2, [R6,#-4]
320B66:  CMP             R2, #0
320B68:  BEQ             loc_320B2C
320B6A:  ADR             R1, off_320C38
320B6C:  MOV             R0, R10
320B6E:  BL              sub_5E6BC0
320B72:  MOV             R0, R10; char *
320B74:  MOV             R1, R5; unsigned __int16 *
320B76:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
320B7A:  MOV             R4, R5
320B7C:  MOVS            R0, #(stderr+1); this
320B7E:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
320B82:  MOVS            R0, #0; this
320B84:  MOVS            R1, #0; unsigned __int8
320B86:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
320B8A:  VLDR            S0, [R6,#-0x10]
320B8E:  LDR.W           R0, [R11,#(dword_9FC900 - 0x9FC8FC)]
320B92:  VDIV.F32        S0, S0, S16
320B96:  SMMUL.W         R0, R0, R8
320B9A:  ASRS            R1, R0, #8; float
320B9C:  ADD.W           R0, R1, R0,LSR#31
320BA0:  VMOV            S2, R0
320BA4:  VCVT.F32.S32    S2, S2
320BA8:  VMIN.F32        D0, D0, D1
320BAC:  VMOV            R0, S0; this
320BB0:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
320BB4:  MOVS            R0, #0; this
320BB6:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
320BBA:  LDR.W           R0, [R11,#(dword_9FC900 - 0x9FC8FC)]
320BBE:  VMOV            S0, R0
320BC2:  VCVT.F32.S32    S0, S0
320BC6:  VMOV            R0, S0; this
320BCA:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
320BCE:  LDRB.W          R0, [R6,#-9]
320BD2:  LDRB.W          R1, [R6,#-0xC]; unsigned __int8
320BD6:  LDRB.W          R2, [R6,#-0xB]; unsigned __int8
320BDA:  LDRB.W          R3, [R6,#-0xA]; unsigned __int8
320BDE:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
320BE0:  ADD             R0, SP, #0x50+var_34; this
320BE2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
320BE6:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
320BEA:  MOVS            R0, #(stderr+3); this
320BEC:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
320BF0:  LDRD.W          R0, R1, [R6,#-0x20]; float
320BF4:  MOV             R2, R4; CFont *
320BF6:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
320BFA:  LDR             R0, [SP,#0x50+var_38]
320BFC:  LDRH            R0, [R0]
320BFE:  ADD.W           R9, R9, #1
320C02:  ADDS            R6, #0x24 ; '$'
320C04:  UXTH            R1, R0
320C06:  SXTH.W          R2, R9
320C0A:  CMP             R2, R1
320C0C:  BLT             loc_320B62
320C0E:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x320C16)
320C10:  MOVS            R1, #0
320C12:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
320C14:  LDR             R0, [R0]; CPickups::NumMessages ...
320C16:  STRH            R1, [R0]; CPickups::NumMessages
320C18:  ADD             SP, SP, #0x20 ; ' '
320C1A:  VPOP            {D8}
320C1E:  ADD             SP, SP, #4
320C20:  POP.W           {R8-R11}
320C24:  POP.W           {R4-R7,LR}
320C28:  BX              LR
