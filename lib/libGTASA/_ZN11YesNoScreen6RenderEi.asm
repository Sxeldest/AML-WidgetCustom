; =========================================================
; Game Engine Function: _ZN11YesNoScreen6RenderEi
; Address            : 0x2A8950 - 0x2A8B22
; =========================================================

2A8950:  PUSH            {R4-R7,LR}
2A8952:  ADD             R7, SP, #0xC
2A8954:  PUSH.W          {R8-R10}
2A8958:  VPUSH           {D8-D9}
2A895C:  SUB             SP, SP, #0x48
2A895E:  MOV             R4, R0
2A8960:  BLX             j__ZN16CharSelectScreen6RenderEi; CharSelectScreen::Render(int)
2A8964:  MOVS            R0, #0xFF
2A8966:  LDR             R6, [R4,#0x44]
2A8968:  STR             R0, [SP,#0x70+var_70]; unsigned __int8
2A896A:  ADD             R0, SP, #0x70+var_44; this
2A896C:  MOVS            R1, #0xF0; unsigned __int8
2A896E:  MOVS            R2, #0xF0; unsigned __int8
2A8970:  MOVS            R3, #0xF0; unsigned __int8
2A8972:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A8976:  LDR             R0, [R4]
2A8978:  LDR             R1, [R0,#0x30]
2A897A:  MOV             R0, R4
2A897C:  BLX             R1
2A897E:  MOV             R5, R0
2A8980:  LDR             R0, [R4]
2A8982:  LDR             R1, [R0,#0x30]
2A8984:  MOV             R0, R4
2A8986:  BLX             R1
2A8988:  LDR             R1, =(TheText_ptr - 0x2A8992)
2A898A:  VMOV            S16, R0
2A898E:  ADD             R1, PC; TheText_ptr
2A8990:  LDR             R1, [R1]; TheText
2A8992:  MOV             R0, R1; this
2A8994:  MOV             R1, R6; CKeyGen *
2A8996:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A899A:  VLDR            S0, =630.0
2A899E:  MOVS            R3, #0
2A89A0:  LDR             R1, [SP,#0x70+var_44]
2A89A2:  MOV             R2, R0
2A89A4:  VSUB.F32        S0, S0, S16
2A89A8:  STR             R1, [SP,#0x70+var_3C]
2A89AA:  MOVS            R0, #0
2A89AC:  MOVS            R1, #1
2A89AE:  MOVT            R3, #0x4190
2A89B2:  ADD             R6, SP, #0x70+var_3C
2A89B4:  STRD.W          R3, R1, [SP,#0x70+var_58]
2A89B8:  STR             R0, [SP,#0x70+var_50]
2A89BA:  ADD.W           R0, R3, #0xFC0000
2A89BE:  STRD.W          R1, R6, [SP,#0x70+var_70]
2A89C2:  MOVS            R3, #0
2A89C4:  STRD.W          R1, R5, [SP,#0x70+var_68]
2A89C8:  MOV             R1, R4
2A89CA:  STR             R0, [SP,#0x70+var_60]
2A89CC:  ADD             R0, SP, #0x70+var_30
2A89CE:  VSTR            S0, [SP,#0x70+var_5C]
2A89D2:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A89D6:  LDRB            R0, [R4,#0xC]
2A89D8:  CMP             R0, #0
2A89DA:  BNE.W           loc_2A8B16
2A89DE:  MOVS            R0, #0x40 ; '@'
2A89E0:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A89E4:  CMP             R0, #1
2A89E6:  BNE.W           loc_2A8B16
2A89EA:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2A89EE:  CMP             R0, #1
2A89F0:  BNE.W           loc_2A8B16
2A89F4:  LDR             R0, =(RsGlobal_ptr - 0x2A8A02)
2A89F6:  MOV.W           R8, #0xFF
2A89FA:  MOVS            R1, #0xFF; unsigned __int8
2A89FC:  MOVS            R2, #0xFF; unsigned __int8
2A89FE:  ADD             R0, PC; RsGlobal_ptr
2A8A00:  MOVS            R3, #0xFF; unsigned __int8
2A8A02:  LDR             R0, [R0]; RsGlobal
2A8A04:  VLDR            S0, [R0,#4]
2A8A08:  VLDR            S2, [R0,#8]
2A8A0C:  ADD             R0, SP, #0x70+var_34; this
2A8A0E:  VCVT.F32.S32    S16, S2
2A8A12:  VCVT.F32.S32    S18, S0
2A8A16:  STR.W           R8, [SP,#0x70+var_70]; unsigned __int8
2A8A1A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A8A1E:  VLDR            S0, =0.0
2A8A22:  VMOV.F32        S2, #12.5
2A8A26:  VLDR            S4, =480.0
2A8A2A:  VMUL.F32        S0, S18, S0
2A8A2E:  LDR             R0, =(TheText_ptr - 0x2A8A36)
2A8A30:  LDR             R1, =(aFehSel - 0x2A8A38); "FEH_SEL"
2A8A32:  ADD             R0, PC; TheText_ptr
2A8A34:  ADD             R1, PC; "FEH_SEL"
2A8A36:  LDR             R0, [R0]; TheText ; this
2A8A38:  VMAX.F32        D0, D0, D1
2A8A3C:  VLDR            S2, =-240.0
2A8A40:  VMUL.F32        S2, S18, S2
2A8A44:  VSUB.F32        S0, S18, S0
2A8A48:  VMUL.F32        S0, S0, S4
2A8A4C:  VADD.F32        S0, S0, S2
2A8A50:  VDIV.F32        S16, S0, S16
2A8A54:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A8A58:  VLDR            S0, =320.0
2A8A5C:  MOV             R2, R0
2A8A5E:  VLDR            S2, =-120.0
2A8A62:  MOVS            R1, #0
2A8A64:  VADD.F32        S0, S16, S0
2A8A68:  LDR             R0, [SP,#0x70+var_34]
2A8A6A:  MOVW            R9, #0x8000
2A8A6E:  STR             R0, [SP,#0x70+var_3C]
2A8A70:  MOVS            R0, #0
2A8A72:  MOVS            R5, #0
2A8A74:  MOVT            R0, #0x41D8
2A8A78:  MOVT            R1, #0x42F0
2A8A7C:  MOVT            R9, #0x43D7
2A8A80:  MOVS            R3, #2
2A8A82:  STRD.W          R9, R1, [SP,#0x70+var_60]; int
2A8A86:  MOV             R1, R4
2A8A88:  STRD.W          R0, R5, [SP,#0x70+var_58]; int
2A8A8C:  MOVS            R0, #1
2A8A8E:  VADD.F32        S0, S0, S2
2A8A92:  STR             R5, [SP,#0x70+var_50]
2A8A94:  STRD.W          R5, R6, [SP,#0x70+var_70]
2A8A98:  STR             R0, [SP,#0x70+var_68]
2A8A9A:  ADD             R0, SP, #0x70+var_30
2A8A9C:  VSTR            S0, [SP,#0x70+var_64]
2A8AA0:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A8AA4:  MOV.W           R0, #0x3F800000
2A8AA8:  ADD             R2, SP, #0x70+var_3C
2A8AAA:  ADD             R3, SP, #0x70+var_44
2A8AAC:  STRD.W          R5, R5, [SP,#0x70+var_3C]
2A8AB0:  STRD.W          R0, R0, [SP,#0x70+var_44]
2A8AB4:  MOVS            R0, #0
2A8AB6:  MOVS            R1, #0x40 ; '@'
2A8AB8:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
2A8ABC:  CBZ             R0, loc_2A8B16
2A8ABE:  LDR.W           R10, [R0]
2A8AC2:  MOVS            R1, #0xFF; unsigned __int8
2A8AC4:  STR.W           R8, [SP,#0x70+var_70]; unsigned __int8
2A8AC8:  ADD.W           R8, SP, #0x70+var_48
2A8ACC:  MOVS            R2, #0xFF; unsigned __int8
2A8ACE:  MOVS            R3, #0xFF; unsigned __int8
2A8AD0:  MOV             R0, R8; this
2A8AD2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A8AD6:  VMOV.F32        S0, #-25.0
2A8ADA:  VLDR            S2, [SP,#0x70+var_30]
2A8ADE:  LDRD.W          R0, R1, [SP,#0x70+var_3C]
2A8AE2:  ADD.W           R5, R9, #0xC8000
2A8AE6:  LDRD.W          R2, R6, [SP,#0x70+var_44]
2A8AEA:  STRD.W          R5, R0, [SP,#0x70+var_68]; float
2A8AEE:  ADD             R0, SP, #0x70+var_60
2A8AF0:  STM             R0!, {R1,R2,R6}
2A8AF2:  ADD.W           R0, R9, #0x28000
2A8AF6:  MOV             R1, R10; int
2A8AF8:  VADD.F32        S0, S2, S0
2A8AFC:  STR             R0, [SP,#0x70+var_70]; float
2A8AFE:  MOV             R0, R4; int
2A8B00:  MOV             R2, R8; int
2A8B02:  VMOV            R3, S0; int
2A8B06:  VMOV.F32        S0, #-5.0
2A8B0A:  VADD.F32        S0, S2, S0
2A8B0E:  VSTR            S0, [SP,#0x70+var_6C]
2A8B12:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
2A8B16:  ADD             SP, SP, #0x48 ; 'H'
2A8B18:  VPOP            {D8-D9}
2A8B1C:  POP.W           {R8-R10}
2A8B20:  POP             {R4-R7,PC}
