; =========================================================
; Game Engine Function: _ZN19CWidgetHorseResults4DrawEv
; Address            : 0x2B882C - 0x2B8F70
; =========================================================

2B882C:  PUSH            {R4-R7,LR}
2B882E:  ADD             R7, SP, #0xC
2B8830:  PUSH.W          {R8-R11}
2B8834:  SUB             SP, SP, #4
2B8836:  VPUSH           {D8-D15}
2B883A:  SUB.W           SP, SP, #0x580
2B883E:  MOV             R4, R0
2B8840:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2B8848)
2B8844:  ADD             R0, PC; __stack_chk_guard_ptr
2B8846:  LDR             R0, [R0]; __stack_chk_guard
2B8848:  LDR             R0, [R0]
2B884A:  STR.W           R0, [R7,#var_68]
2B884E:  LDRB.W          R9, [R4,#0x4C]
2B8852:  CMP.W           R9, #0
2B8856:  BEQ.W           loc_2B8F4A
2B885A:  ADD.W           R5, R4, #0x90
2B885E:  MOV             R0, R5; char *
2B8860:  BLX             strlen
2B8864:  CBZ             R0, loc_2B887E
2B8866:  ADR.W           R1, aDummy; "DUMMY"
2B886A:  MOV             R0, R5; char *
2B886C:  BLX             strcasecmp
2B8870:  MOV             R8, R0
2B8872:  CMP.W           R8, #0
2B8876:  IT NE
2B8878:  MOVNE.W         R8, #1
2B887C:  B               loc_2B8882
2B887E:  MOV.W           R8, #0
2B8882:  ADD.W           R6, R4, #0x19C
2B8886:  MOV             R0, R6; char *
2B8888:  BLX             strlen
2B888C:  CBZ             R0, loc_2B88A0
2B888E:  ADR.W           R1, aDummy; "DUMMY"
2B8892:  MOV             R0, R6; char *
2B8894:  BLX             strcasecmp
2B8898:  CMP             R0, #0
2B889A:  IT NE
2B889C:  ADDNE.W         R8, R8, #1
2B88A0:  ADD.W           R6, R4, #0x2A8
2B88A4:  MOV             R0, R6; char *
2B88A6:  BLX             strlen
2B88AA:  CBZ             R0, loc_2B88BE
2B88AC:  ADR.W           R1, aDummy; "DUMMY"
2B88B0:  MOV             R0, R6; char *
2B88B2:  BLX             strcasecmp
2B88B6:  CMP             R0, #0
2B88B8:  IT NE
2B88BA:  ADDNE.W         R8, R8, #1
2B88BE:  ADD.W           R6, R4, #0x3B4
2B88C2:  MOV             R0, R6; char *
2B88C4:  BLX             strlen
2B88C8:  CBZ             R0, loc_2B88DC
2B88CA:  ADR.W           R1, aDummy; "DUMMY"
2B88CE:  MOV             R0, R6; char *
2B88D0:  BLX             strcasecmp
2B88D4:  CMP             R0, #0
2B88D6:  IT NE
2B88D8:  ADDNE.W         R8, R8, #1
2B88DC:  ADD.W           R6, R4, #0x4C0
2B88E0:  MOV             R0, R6; char *
2B88E2:  BLX             strlen
2B88E6:  CBZ             R0, loc_2B88FA
2B88E8:  ADR.W           R1, aDummy; "DUMMY"
2B88EC:  MOV             R0, R6; char *
2B88EE:  BLX             strcasecmp
2B88F2:  CMP             R0, #0
2B88F4:  IT NE
2B88F6:  ADDNE.W         R8, R8, #1
2B88FA:  ADDW            R6, R4, #0x5CC
2B88FE:  MOV             R0, R6; char *
2B8900:  BLX             strlen
2B8904:  CBZ             R0, loc_2B8918
2B8906:  ADR.W           R1, aDummy; "DUMMY"
2B890A:  MOV             R0, R6; char *
2B890C:  BLX             strcasecmp
2B8910:  CMP             R0, #0
2B8912:  IT NE
2B8914:  ADDNE.W         R8, R8, #1
2B8918:  ADD.W           R6, R4, #0x6D8
2B891C:  MOV             R0, R6; char *
2B891E:  BLX             strlen
2B8922:  CBZ             R0, loc_2B8936
2B8924:  ADR.W           R1, aDummy; "DUMMY"
2B8928:  MOV             R0, R6; char *
2B892A:  BLX             strcasecmp
2B892E:  CMP             R0, #0
2B8930:  IT NE
2B8932:  ADDNE.W         R8, R8, #1
2B8936:  CMP.W           R8, #7
2B893A:  BNE.W           loc_2B8F4A
2B893E:  MOVS            R0, #0; this
2B8940:  MOVS            R1, #0; unsigned __int8
2B8942:  VLDR            S16, [R4,#0x24]
2B8946:  VLDR            S18, [R4,#0x2C]
2B894A:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2B894E:  MOVS            R0, #(stderr+1); this
2B8950:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2B8954:  MOVS            R0, #(stderr+1); this
2B8956:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2B895A:  MOVS            R0, #0; this
2B895C:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2B8960:  MOVS            R0, #0; this
2B8962:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2B8966:  VMOV            S0, R9
2B896A:  VLDR            S2, =255.0
2B896E:  MOVS            R1, #0; unsigned __int8
2B8970:  MOVS            R2, #0; unsigned __int8
2B8972:  VCVT.F32.U32    S0, S0
2B8976:  MOVS            R3, #0; unsigned __int8
2B8978:  VDIV.F32        S20, S0, S2
2B897C:  VMUL.F32        S0, S20, S2
2B8980:  VCVT.U32.F32    S0, S0
2B8984:  VMOV            R0, S0
2B8988:  STR             R0, [SP,#0x5E0+var_5AC]
2B898A:  STR             R0, [SP,#0x5E0+var_5E0]; unsigned __int8
2B898C:  ADDW            R0, SP, #0x5E0+var_16C; this
2B8990:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8994:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2B8998:  LDR.W           R0, =(RsGlobal_ptr - 0x2B89A0)
2B899C:  ADD             R0, PC; RsGlobal_ptr
2B899E:  LDR             R0, [R0]; RsGlobal
2B89A0:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2B89A2:  VMOV            S0, R0
2B89A6:  VCVT.F32.S32    S0, S0
2B89AA:  VMOV            R0, S0; this
2B89AE:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2B89B2:  MOVS            R0, #(stderr+2); this
2B89B4:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2B89B8:  VSUB.F32        S0, S16, S18
2B89BC:  VMOV.F32        S2, #-6.0
2B89C0:  VMOV.F32        S4, #0.125
2B89C4:  VABS.F32        S0, S0
2B89C8:  VADD.F32        S0, S0, S2
2B89CC:  VMUL.F32        S16, S0, S4
2B89D0:  VLDR            S0, =0.021
2B89D4:  VMUL.F32        S18, S16, S0
2B89D8:  VMOV            R0, S18; this
2B89DC:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2B89E0:  LDR.W           R0, =(TheText_ptr - 0x2B89F4)
2B89E4:  VMOV.F32        S22, #0.625
2B89E8:  ADR.W           R8, aDummy; "DUMMY"
2B89EC:  MOV.W           R6, #0xFFFFFFFF
2B89F0:  ADD             R0, PC; TheText_ptr
2B89F2:  LDR.W           R10, [R0]; TheText
2B89F6:  MOV             R0, R5; char *
2B89F8:  VLDR            S24, [R4,#0x20]
2B89FC:  VLDR            S26, [R4,#0x28]
2B8A00:  BLX             strlen
2B8A04:  CBZ             R0, loc_2B8A4A
2B8A06:  MOV             R0, R5; char *
2B8A08:  MOV             R1, R8; char *
2B8A0A:  BLX             strcasecmp
2B8A0E:  CBZ             R0, loc_2B8A4A
2B8A10:  VSUB.F32        S0, S26, S24
2B8A14:  MOV             R0, R10; this
2B8A16:  MOV             R1, R5; CKeyGen *
2B8A18:  VABS.F32        S0, S0
2B8A1C:  VMUL.F32        S24, S0, S22
2B8A20:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8A24:  MOVS            R1, #(stderr+1); unsigned __int16 *
2B8A26:  MOVS            R2, #0; unsigned __int8
2B8A28:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2B8A2C:  VMOV            S0, R0
2B8A30:  VCMPE.F32       S0, S24
2B8A34:  VMRS            APSR_nzcv, FPSCR
2B8A38:  BLE             loc_2B8A4A
2B8A3A:  VDIV.F32        S0, S24, S0
2B8A3E:  VMUL.F32        S18, S18, S0
2B8A42:  VMOV            R0, S18; this
2B8A46:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2B8A4A:  ADDS            R6, #1
2B8A4C:  ADD.W           R5, R5, #0x10C
2B8A50:  CMP             R6, #6
2B8A52:  BLT             loc_2B89F6
2B8A54:  VLDR            S2, =128.0
2B8A58:  VMOV.F32        S0, #1.5
2B8A5C:  VMOV.F32        S19, #0.5
2B8A60:  ADD.W           R8, R4, #0x190
2B8A64:  VMUL.F32        S2, S20, S2
2B8A68:  ADD.W           R9, SP, #0x5E0+var_59C
2B8A6C:  VMOV.F32        S25, #1.0
2B8A70:  VLDR            S21, =0.03
2B8A74:  VMOV.I32        Q7, #0
2B8A78:  VLDR            S23, =-0.03
2B8A7C:  MOV.W           R6, #0xFFFFFFFF
2B8A80:  VMUL.F32        S20, S18, S0
2B8A84:  VMUL.F32        S22, S16, S0
2B8A88:  VCVT.U32.F32    S0, S2
2B8A8C:  LDR.W           R11, [SP,#0x5E0+var_5AC]
2B8A90:  VMOV            R0, S0
2B8A94:  STR             R0, [SP,#0x5E0+var_5A8]
2B8A96:  LDR.W           R0, =(TheText_ptr - 0x2B8AA2)
2B8A9A:  VLDR            S24, [R4,#0x2C]
2B8A9E:  ADD             R0, PC; TheText_ptr
2B8AA0:  STR             R4, [SP,#0x5E0+var_5B0]
2B8AA2:  LDR             R0, [R0]; TheText
2B8AA4:  STR             R0, [SP,#0x5E0+var_5B4]
2B8AA6:  LDR.W           R0, =(TheText_ptr - 0x2B8AAE)
2B8AAA:  ADD             R0, PC; TheText_ptr
2B8AAC:  LDR             R0, [R0]; TheText
2B8AAE:  STR             R0, [SP,#0x5E0+var_5BC]
2B8AB0:  LDR.W           R0, =(TheText_ptr - 0x2B8AB8)
2B8AB4:  ADD             R0, PC; TheText_ptr
2B8AB6:  LDR             R0, [R0]; TheText
2B8AB8:  STR             R0, [SP,#0x5E0+var_5C0]
2B8ABA:  LDR.W           R0, =(TheText_ptr - 0x2B8AC2)
2B8ABE:  ADD             R0, PC; TheText_ptr
2B8AC0:  LDR             R0, [R0]; TheText
2B8AC2:  STR             R0, [SP,#0x5E0+var_5C4]
2B8AC4:  LDR.W           R0, =(TheText_ptr - 0x2B8ACC)
2B8AC8:  ADD             R0, PC; TheText_ptr
2B8ACA:  LDR             R0, [R0]; TheText
2B8ACC:  STR             R0, [SP,#0x5E0+var_5C8]
2B8ACE:  LDR.W           R0, =(TheText_ptr - 0x2B8AD6)
2B8AD2:  ADD             R0, PC; TheText_ptr
2B8AD4:  LDR             R0, [R0]; TheText
2B8AD6:  STR             R0, [SP,#0x5E0+var_5CC]
2B8AD8:  LDR.W           R0, =(TheText_ptr - 0x2B8AE0)
2B8ADC:  ADD             R0, PC; TheText_ptr
2B8ADE:  LDR             R0, [R0]; TheText
2B8AE0:  STR             R0, [SP,#0x5E0+var_5B8]
2B8AE2:  VADD.F32        S0, S16, S24
2B8AE6:  ADDS            R2, R6, #1
2B8AE8:  LDR             R0, [R4,#0x20]
2B8AEA:  CMP             R2, #6
2B8AEC:  LDR             R1, [R4,#0x28]
2B8AEE:  VSTR            S24, [SP,#0x5E0+var_370]
2B8AF2:  STR             R0, [SP,#0x5E0+var_37C]
2B8AF4:  STR             R1, [SP,#0x5E0+var_374]
2B8AF6:  VSTR            S0, [SP,#0x5E0+var_378]
2B8AFA:  IT NE
2B8AFC:  CMPNE           R2, #0
2B8AFE:  BNE             loc_2B8B10
2B8B00:  VADD.F32        S0, S22, S24
2B8B04:  STR             R0, [SP,#0x5E0+var_37C]
2B8B06:  STR             R1, [SP,#0x5E0+var_374]
2B8B08:  VSTR            S24, [SP,#0x5E0+var_370]
2B8B0C:  VSTR            S0, [SP,#0x5E0+var_378]
2B8B10:  STR             R2, [SP,#0x5E0+var_5A4]
2B8B12:  MOV             R0, R9; this
2B8B14:  LDR             R5, [SP,#0x5E0+var_5A8]
2B8B16:  MOVS            R1, #0; unsigned __int8
2B8B18:  MOVS            R2, #0; unsigned __int8
2B8B1A:  MOVS            R3, #0; unsigned __int8
2B8B1C:  STR             R5, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8B1E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8B22:  ADD.W           R10, SP, #0x5E0+var_398
2B8B26:  MOVS            R1, #0; unsigned __int8
2B8B28:  MOVS            R2, #0; unsigned __int8
2B8B2A:  MOVS            R3, #0; unsigned __int8
2B8B2C:  MOV             R0, R10; this
2B8B2E:  STR             R5, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8B30:  MOV             R4, R9
2B8B32:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8B36:  ADD.W           R9, SP, #0x5E0+var_380
2B8B3A:  MOVS            R1, #0; unsigned __int8
2B8B3C:  MOVS            R2, #0; unsigned __int8
2B8B3E:  MOVS            R3, #0; unsigned __int8
2B8B40:  MOV             R0, R9; this
2B8B42:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8B46:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8B4A:  ADD             R0, SP, #0x5E0+var_384; this
2B8B4C:  MOVS            R1, #0; unsigned __int8
2B8B4E:  MOVS            R2, #0; unsigned __int8
2B8B50:  MOVS            R3, #0; unsigned __int8
2B8B52:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8B56:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8B5A:  STR             R0, [SP,#0x5E0+var_5E0]
2B8B5C:  ADD             R0, SP, #0x5E0+var_37C
2B8B5E:  MOV             R1, R4
2B8B60:  MOV             R2, R10
2B8B62:  MOV             R3, R9
2B8B64:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2B8B68:  CMP             R6, #4
2B8B6A:  VST1.64         {D14-D15}, [R10]
2B8B6E:  BHI.W           loc_2B8CEC
2B8B72:  LDR.W           R0, [R8]
2B8B76:  CBNZ            R0, loc_2B8BAC
2B8B78:  ADD             R0, SP, #0x5E0+var_380; this
2B8B7A:  MOVS            R1, #0x2A ; '*'; unsigned __int8
2B8B7C:  MOVS            R2, #0x60 ; '`'; unsigned __int8
2B8B7E:  MOVS            R3, #0xE4; unsigned __int8
2B8B80:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8B84:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8B88:  LDRB.W          R0, [SP,#0x5E0+var_380]
2B8B8C:  LDRB.W          R1, [SP,#0x5E0+var_37F]
2B8B90:  LDRB.W          R2, [SP,#0x5E0+var_37E]
2B8B94:  LDRB.W          R3, [SP,#0x5E0+var_37D]
2B8B98:  STRB.W          R0, [SP,#0x5E0+var_59C]
2B8B9C:  STRB.W          R1, [SP,#0x5E0+var_59B]
2B8BA0:  STRB.W          R2, [SP,#0x5E0+var_59A]
2B8BA4:  STRB.W          R3, [SP,#0x5E0+var_599]
2B8BA8:  LDR.W           R0, [R8]
2B8BAC:  MOV             R9, R4
2B8BAE:  LDR             R4, [SP,#0x5E0+var_5B0]
2B8BB0:  LDR             R6, [SP,#0x5E0+var_5A4]
2B8BB2:  CMP             R0, #1
2B8BB4:  BEQ.W           loc_2B8DD6
2B8BB8:  CMP             R0, #2
2B8BBA:  BEQ.W           loc_2B8E10
2B8BBE:  CMP             R0, #3
2B8BC0:  BEQ.W           loc_2B8E4A
2B8BC4:  CMP             R0, #4
2B8BC6:  BNE             loc_2B8BF8
2B8BC8:  ADD             R0, SP, #0x5E0+var_380; this
2B8BCA:  MOVS            R1, #0x41 ; 'A'; unsigned __int8
2B8BCC:  MOVS            R2, #0xBE; unsigned __int8
2B8BCE:  MOVS            R3, #0x97; unsigned __int8
2B8BD0:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8BD4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8BD8:  LDRB.W          R0, [SP,#0x5E0+var_380]
2B8BDC:  LDRB.W          R1, [SP,#0x5E0+var_37F]
2B8BE0:  LDRB.W          R2, [SP,#0x5E0+var_37E]
2B8BE4:  LDRB.W          R3, [SP,#0x5E0+var_37D]
2B8BE8:  STRB.W          R0, [SP,#0x5E0+var_59C]
2B8BEC:  STRB.W          R1, [SP,#0x5E0+var_59B]
2B8BF0:  STRB.W          R2, [SP,#0x5E0+var_59A]
2B8BF4:  STRB.W          R3, [SP,#0x5E0+var_599]
2B8BF8:  VLDR            S2, [SP,#0x5E0+var_378]
2B8BFC:  VMOV.F32        S10, #-2.0
2B8C00:  VLDR            S4, [SP,#0x5E0+var_370]
2B8C04:  ADD             R0, SP, #0x5E0+var_398
2B8C06:  VLDR            S8, =0.15
2B8C0A:  MOV             R1, R9
2B8C0C:  VSUB.F32        S6, S2, S4
2B8C10:  VLDR            S0, [SP,#0x5E0+var_37C]
2B8C14:  VABS.F32        S6, S6
2B8C18:  VMUL.F32        S8, S6, S8
2B8C1C:  VMUL.F32        S10, S8, S10
2B8C20:  VADD.F32        S0, S0, S8
2B8C24:  VSUB.F32        S2, S2, S8
2B8C28:  VADD.F32        S4, S4, S8
2B8C2C:  VADD.F32        S6, S6, S10
2B8C30:  VSTR            S0, [SP,#0x5E0+var_398]
2B8C34:  VSTR            S2, [SP,#0x5E0+var_394]
2B8C38:  VSTR            S4, [SP,#0x5E0+var_38C]
2B8C3C:  VADD.F32        S6, S0, S6
2B8C40:  VSTR            S6, [SP,#0x5E0+var_390]
2B8C44:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2B8C48:  VMOV            R0, S18; this
2B8C4C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2B8C50:  MOVS            R0, #(stderr+1); this
2B8C52:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2B8C56:  ADD             R0, SP, #0x5E0+var_39C; this
2B8C58:  MOVS            R1, #0xFF; unsigned __int8
2B8C5A:  MOVS            R2, #0xFF; unsigned __int8
2B8C5C:  MOVS            R3, #0xFF; unsigned __int8
2B8C5E:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8C62:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8C66:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2B8C6A:  VLDR            S0, [R4,#0x20]
2B8C6E:  MOVS            R0, #0; this
2B8C70:  VLDR            S2, [R4,#0x28]
2B8C74:  VLDR            S4, [SP,#0x5E0+var_370]
2B8C78:  VSUB.F32        S0, S2, S0
2B8C7C:  VLDR            S2, [SP,#0x5E0+var_378]
2B8C80:  VLDR            S27, [SP,#0x5E0+var_390]
2B8C84:  VADD.F32        S26, S2, S4
2B8C88:  VABS.F32        S17, S0
2B8C8C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2B8C90:  VMOV            S0, R0
2B8C94:  LDR             R0, [SP,#0x5E0+var_5B4]; this
2B8C96:  VMUL.F32        S4, S17, S21
2B8C9A:  SUB.W           R1, R8, #0x100; CKeyGen *
2B8C9E:  VMUL.F32        S0, S0, S19
2B8CA2:  VMUL.F32        S2, S26, S19
2B8CA6:  VADD.F32        S17, S27, S4
2B8CAA:  VSUB.F32        S26, S2, S0
2B8CAE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8CB2:  MOV             R2, R0; CFont *
2B8CB4:  VMOV            R1, S26; float
2B8CB8:  VMOV            R0, S17; this
2B8CBC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2B8CC0:  SUBS            R0, R6, #1; switch 5 cases
2B8CC2:  CMP             R0, #4
2B8CC4:  BHI.W           def_2B8CC8; jumptable 002B8CC8 default case
2B8CC8:  TBB.W           [PC,R0]; switch jump
2B8CCC:  DCB 3; jump table for switch statement
2B8CCD:  DCB 0xDD
2B8CCE:  DCB 0xE0
2B8CCF:  DCB 0xE9
2B8CD0:  DCB 0xF6
2B8CD1:  ALIGN 2
2B8CD2:  LDR             R0, [SP,#0x5E0+var_5BC]; jumptable 002B8CC8 case 1
2B8CD4:  ADR             R1, aFirst; "FIRST"
2B8CD6:  B               loc_2B8E90
2B8CD8:  DCFS 255.0
2B8CDC:  DCFS 0.021
2B8CE0:  DCFS 128.0
2B8CE4:  DCFS 0.03
2B8CE8:  DCFS -0.03
2B8CEC:  LDR             R5, [SP,#0x5E0+var_5B8]
2B8CEE:  SUB.W           R1, R8, #0x100; CKeyGen *
2B8CF2:  MOV             R0, R5; this
2B8CF4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8CF8:  ADD.W           R9, SP, #0x5E0+var_36C
2B8CFC:  MOV             R1, R0; unsigned __int16 *
2B8CFE:  MOV             R0, R9; unsigned __int16 *
2B8D00:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
2B8D04:  MOVS            R0, #0
2B8D06:  ADD.W           R6, SP, #0x5E0+var_168
2B8D0A:  STRB.W          R0, [SP,#0x5E0+var_164]
2B8D0E:  MOV             R0, #0x207E677E
2B8D16:  MOV             R1, R4; unsigned __int16 *
2B8D18:  STR.W           R0, [SP,#0x5E0+var_168]
2B8D1C:  MOV             R0, R6; char *
2B8D1E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B8D22:  MOV             R0, R9; unsigned __int16 *
2B8D24:  MOV             R1, R4; unsigned __int16 *
2B8D26:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
2B8D2A:  ADR             R1, aDollar; "DOLLAR"
2B8D2C:  MOV             R0, R5; this
2B8D2E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8D32:  MOV             R1, R0; unsigned __int16 *
2B8D34:  MOV             R0, R9; unsigned __int16 *
2B8D36:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
2B8D3A:  LDR.W           R2, [R8]
2B8D3E:  ADR             R1, aD_0; "%d"
2B8D40:  MOV             R0, R6
2B8D42:  BL              sub_5E6BC0
2B8D46:  MOV             R0, R6; char *
2B8D48:  MOV             R1, R4; unsigned __int16 *
2B8D4A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B8D4E:  MOV             R0, R9; unsigned __int16 *
2B8D50:  MOV             R1, R4; unsigned __int16 *
2B8D52:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
2B8D56:  VMOV            R0, S20; this
2B8D5A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2B8D5E:  ADD             R0, SP, #0x5E0+var_5A0; this
2B8D60:  MOVS            R1, #0xFF; unsigned __int8
2B8D62:  MOVS            R2, #0xFF; unsigned __int8
2B8D64:  MOVS            R3, #0xFF; unsigned __int8
2B8D66:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8D6A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8D6E:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2B8D72:  MOVS            R0, #0; this
2B8D74:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2B8D78:  VLDR            S0, [SP,#0x5E0+var_378]
2B8D7C:  MOVS            R0, #0; this
2B8D7E:  VLDR            S2, [SP,#0x5E0+var_370]
2B8D82:  VLDR            S26, [SP,#0x5E0+var_37C]
2B8D86:  VLDR            S17, [SP,#0x5E0+var_374]
2B8D8A:  VADD.F32        S27, S0, S2
2B8D8E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2B8D92:  VMOV            S0, R0
2B8D96:  MOV             R2, R9; CFont *
2B8D98:  VADD.F32        S2, S26, S17
2B8D9C:  VMUL.F32        S0, S0, S19
2B8DA0:  VMUL.F32        S4, S27, S19
2B8DA4:  VMUL.F32        S2, S2, S19
2B8DA8:  VSUB.F32        S0, S4, S0
2B8DAC:  VMOV            R0, S2; this
2B8DB0:  VMOV            R1, S0; float
2B8DB4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2B8DB8:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2B8DBC:  MOV             R9, R4
2B8DBE:  LDR             R4, [SP,#0x5E0+var_5B0]
2B8DC0:  LDR             R6, [SP,#0x5E0+var_5A4]
2B8DC2:  CMP             R6, #6
2B8DC4:  BEQ.W           loc_2B8F34
2B8DC8:  CMP             R6, #0
2B8DCA:  VMOV.F32        S0, S16
2B8DCE:  IT EQ
2B8DD0:  VMOVEQ.F32      S0, S22
2B8DD4:  B               loc_2B8F38
2B8DD6:  ADD             R0, SP, #0x5E0+var_380; this
2B8DD8:  MOVS            R1, #0xD1; unsigned __int8
2B8DDA:  MOVS            R2, #0x74 ; 't'; unsigned __int8
2B8DDC:  MOVS            R3, #0x74 ; 't'; unsigned __int8
2B8DDE:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8DE2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8DE6:  LDRB.W          R0, [SP,#0x5E0+var_380]
2B8DEA:  LDRB.W          R1, [SP,#0x5E0+var_37F]
2B8DEE:  LDRB.W          R2, [SP,#0x5E0+var_37E]
2B8DF2:  LDRB.W          R3, [SP,#0x5E0+var_37D]
2B8DF6:  STRB.W          R0, [SP,#0x5E0+var_59C]
2B8DFA:  STRB.W          R1, [SP,#0x5E0+var_59B]
2B8DFE:  STRB.W          R2, [SP,#0x5E0+var_59A]
2B8E02:  STRB.W          R3, [SP,#0x5E0+var_599]
2B8E06:  LDR.W           R0, [R8]
2B8E0A:  CMP             R0, #2
2B8E0C:  BNE.W           loc_2B8BBE
2B8E10:  ADD             R0, SP, #0x5E0+var_380; this
2B8E12:  MOVS            R1, #0xDE; unsigned __int8
2B8E14:  MOVS            R2, #0xB9; unsigned __int8
2B8E16:  MOVS            R3, #0x67 ; 'g'; unsigned __int8
2B8E18:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8E1C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8E20:  LDRB.W          R0, [SP,#0x5E0+var_380]
2B8E24:  LDRB.W          R1, [SP,#0x5E0+var_37F]
2B8E28:  LDRB.W          R2, [SP,#0x5E0+var_37E]
2B8E2C:  LDRB.W          R3, [SP,#0x5E0+var_37D]
2B8E30:  STRB.W          R0, [SP,#0x5E0+var_59C]
2B8E34:  STRB.W          R1, [SP,#0x5E0+var_59B]
2B8E38:  STRB.W          R2, [SP,#0x5E0+var_59A]
2B8E3C:  STRB.W          R3, [SP,#0x5E0+var_599]
2B8E40:  LDR.W           R0, [R8]
2B8E44:  CMP             R0, #3
2B8E46:  BNE.W           loc_2B8BC4
2B8E4A:  ADD             R0, SP, #0x5E0+var_380; this
2B8E4C:  MOVS            R1, #0x85; unsigned __int8
2B8E4E:  MOVS            R2, #0x41 ; 'A'; unsigned __int8
2B8E50:  MOVS            R3, #0xBE; unsigned __int8
2B8E52:  STR.W           R11, [SP,#0x5E0+var_5E0]; unsigned __int8
2B8E56:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B8E5A:  LDRB.W          R0, [SP,#0x5E0+var_380]
2B8E5E:  LDRB.W          R1, [SP,#0x5E0+var_37F]
2B8E62:  LDRB.W          R2, [SP,#0x5E0+var_37E]
2B8E66:  LDRB.W          R3, [SP,#0x5E0+var_37D]
2B8E6A:  STRB.W          R0, [SP,#0x5E0+var_59C]
2B8E6E:  STRB.W          R1, [SP,#0x5E0+var_59B]
2B8E72:  STRB.W          R2, [SP,#0x5E0+var_59A]
2B8E76:  STRB.W          R3, [SP,#0x5E0+var_599]
2B8E7A:  LDR.W           R0, [R8]
2B8E7E:  CMP             R0, #4
2B8E80:  BEQ.W           loc_2B8BC8
2B8E84:  B               loc_2B8BF8
2B8E86:  LDR             R0, [SP,#0x5E0+var_5C0]; jumptable 002B8CC8 case 2
2B8E88:  ADR             R1, aSecond; "SECOND"
2B8E8A:  B               loc_2B8E90
2B8E8C:  LDR             R0, [SP,#0x5E0+var_5C4]; jumptable 002B8CC8 case 3
2B8E8E:  ADR             R1, aThird; "THIRD"
2B8E90:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8E94:  MOV             R1, R0; unsigned __int16 *
2B8E96:  ADD             R0, SP, #0x5E0+var_36C; unsigned __int16 *
2B8E98:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
2B8E9C:  B               def_2B8CC8; jumptable 002B8CC8 default case
2B8E9E:  LDR             R0, [SP,#0x5E0+var_5C8]; jumptable 002B8CC8 case 4
2B8EA0:  ADR             R1, dword_2B8FA0; CKeyGen *
2B8EA2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8EA6:  MOV.W           R1, #0xFFFFFFFF
2B8EAA:  STRD.W          R1, R1, [SP,#0x5E0+var_5E0]
2B8EAE:  STR             R1, [SP,#0x5E0+var_5D8]
2B8EB0:  ADD             R1, SP, #0x5E0+var_36C
2B8EB2:  STR             R1, [SP,#0x5E0+var_5D4]
2B8EB4:  MOVS            R1, #4
2B8EB6:  B               loc_2B8ED0
2B8EB8:  LDR             R0, [SP,#0x5E0+var_5CC]; jumptable 002B8CC8 case 5
2B8EBA:  ADR             R1, dword_2B8FA0; CKeyGen *
2B8EBC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B8EC0:  MOV.W           R1, #0xFFFFFFFF
2B8EC4:  STRD.W          R1, R1, [SP,#0x5E0+var_5E0]; int
2B8EC8:  STR             R1, [SP,#0x5E0+var_5D8]; int
2B8ECA:  ADD             R1, SP, #0x5E0+var_36C
2B8ECC:  STR             R1, [SP,#0x5E0+var_5D4]; int
2B8ECE:  MOVS            R1, #byte_5; unsigned __int16 *
2B8ED0:  MOV.W           R2, #0xFFFFFFFF; int
2B8ED4:  MOV.W           R3, #0xFFFFFFFF; int
2B8ED8:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
2B8EDC:  MOVS            R0, #(stderr+2); jumptable 002B8CC8 default case
2B8EDE:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2B8EE2:  VLDR            S0, [SP,#0x5E0+var_37C]
2B8EE6:  MOVS            R0, #0; this
2B8EE8:  VLDR            S26, [SP,#0x5E0+var_374]
2B8EEC:  VLDR            S2, [SP,#0x5E0+var_378]
2B8EF0:  VSUB.F32        S0, S26, S0
2B8EF4:  VLDR            S4, [SP,#0x5E0+var_370]
2B8EF8:  VADD.F32        S17, S2, S4
2B8EFC:  VABS.F32        S27, S0
2B8F00:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2B8F04:  VMOV            S0, R0
2B8F08:  ADD             R2, SP, #0x5E0+var_36C; CFont *
2B8F0A:  VMUL.F32        S2, S17, S19
2B8F0E:  VMUL.F32        S0, S0, S19
2B8F12:  VMUL.F32        S4, S27, S23
2B8F16:  VSUB.F32        S0, S2, S0
2B8F1A:  VADD.F32        S2, S26, S4
2B8F1E:  VMOV            R1, S0; float
2B8F22:  VMOV            R0, S2; this
2B8F26:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2B8F2A:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2B8F2E:  CMP             R6, #6
2B8F30:  BNE.W           loc_2B8DC8
2B8F34:  VMOV.F32        S0, S22
2B8F38:  VADD.F32        S0, S0, S25
2B8F3C:  ADD.W           R8, R8, #0x10C
2B8F40:  CMP             R6, #6
2B8F42:  VADD.F32        S24, S24, S0
2B8F46:  BNE.W           loc_2B8AE2
2B8F4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x2B8F54)
2B8F4C:  LDR.W           R1, [R7,#var_68]
2B8F50:  ADD             R0, PC; __stack_chk_guard_ptr
2B8F52:  LDR             R0, [R0]; __stack_chk_guard
2B8F54:  LDR             R0, [R0]
2B8F56:  SUBS            R0, R0, R1
2B8F58:  ITTTT EQ
2B8F5A:  ADDEQ.W         SP, SP, #0x580
2B8F5E:  VPOPEQ          {D8-D15}
2B8F62:  ADDEQ           SP, SP, #4
2B8F64:  POPEQ.W         {R8-R11}
2B8F68:  IT EQ
2B8F6A:  POPEQ           {R4-R7,PC}
2B8F6C:  BLX             __stack_chk_fail
