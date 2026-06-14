; =========================================================
; Game Engine Function: _ZN10MenuScreen8DrawBackEb
; Address            : 0x297850 - 0x297F56
; =========================================================

297850:  PUSH            {R4-R7,LR}
297852:  ADD             R7, SP, #0xC
297854:  PUSH.W          {R8-R11}
297858:  SUB             SP, SP, #4
29785A:  VPUSH           {D8-D13}
29785E:  SUB             SP, SP, #0xA0
297860:  MOV             R10, R0
297862:  LDR.W           R0, =(RsGlobal_ptr - 0x297870)
297866:  VLDR            S20, =1.35
29786A:  MOV             R8, R1
29786C:  ADD             R0, PC; RsGlobal_ptr
29786E:  VLDR            S16, =480.0
297872:  LDR             R5, [R0]; RsGlobal
297874:  VLDR            S2, [R5,#8]
297878:  VLDR            S0, [R5,#4]
29787C:  VCVT.F32.S32    S18, S2
297880:  VCVT.F32.S32    S22, S0
297884:  VMUL.F32        S2, S18, S20
297888:  VDIV.F32        S2, S2, S16
29788C:  VMOV            R0, S2; this
297890:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
297894:  VLDR            S2, =0.0
297898:  VMOV.F32        S4, #12.5
29789C:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
29789E:  VMUL.F32        S6, S22, S2
2978A2:  VMOV            S0, R0
2978A6:  MOVS            R0, #0; this
2978A8:  VCVT.F32.S32    S0, S0
2978AC:  VMAX.F32        D2, D3, D2
2978B0:  VLDR            S6, =-240.0
2978B4:  VSUB.F32        S4, S22, S4
2978B8:  VMUL.F32        S2, S0, S2
2978BC:  VMUL.F32        S22, S22, S6
2978C0:  VMUL.F32        S26, S4, S16
2978C4:  VSUB.F32        S24, S0, S2
2978C8:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2978CC:  VMOV            S0, R0
2978D0:  VADD.F32        S4, S26, S22
2978D4:  VSUB.F32        S2, S24, S0
2978D8:  VLDR            S0, [R5,#8]
2978DC:  VLDR            S24, =320.0
2978E0:  VCVT.F32.S32    S0, S0
2978E4:  VDIV.F32        S22, S4, S18
2978E8:  VMUL.F32        S2, S2, S16
2978EC:  VLDR            S18, =440.5
2978F0:  VDIV.F32        S2, S2, S0
2978F4:  VCMPE.F32       S2, S18
2978F8:  VMRS            APSR_nzcv, FPSCR
2978FC:  BGE             loc_29794A
2978FE:  VMUL.F32        S0, S0, S20
297902:  VDIV.F32        S0, S0, S16
297906:  VMOV            R0, S0; this
29790A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
29790E:  LDR.W           R0, =(RsGlobal_ptr - 0x29791A)
297912:  VLDR            S2, =-0.0
297916:  ADD             R0, PC; RsGlobal_ptr
297918:  LDR             R4, [R0]; RsGlobal
29791A:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
29791C:  VMOV            S0, R0
297920:  MOVS            R0, #0; this
297922:  VCVT.F32.S32    S0, S0
297926:  VMUL.F32        S2, S0, S2
29792A:  VADD.F32        S18, S0, S2
29792E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
297932:  VMOV            S0, R0
297936:  VLDR            S2, [R4,#8]
29793A:  VSUB.F32        S0, S18, S0
29793E:  VCVT.F32.S32    S2, S2
297942:  VMUL.F32        S0, S0, S16
297946:  VDIV.F32        S18, S0, S2
29794A:  LDR.W           R0, =(gMobileMenu_ptr - 0x297956)
29794E:  VADD.F32        S16, S22, S24
297952:  ADD             R0, PC; gMobileMenu_ptr
297954:  LDR             R0, [R0]; gMobileMenu
297956:  LDRB.W          R0, [R0,#(byte_6E00DA - 0x6E006C)]
29795A:  CMP             R0, #0
29795C:  BEQ             loc_2979DE
29795E:  LDR.W           R0, =(lastDevice_ptr - 0x29796A)
297962:  LDR.W           R2, =(gMobileMenu_ptr - 0x297970)
297966:  ADD             R0, PC; lastDevice_ptr
297968:  VLDR            S0, =-120.0
29796C:  ADD             R2, PC; gMobileMenu_ptr
29796E:  LDR             R0, [R0]; lastDevice
297970:  VADD.F32        S2, S16, S0
297974:  LDR             R1, [R0]
297976:  LDR             R0, [R2]; gMobileMenu
297978:  ADD.W           R0, R0, R1,LSL#3
29797C:  VLDR            S0, [R0,#0x70]
297980:  MOVS            R0, #0
297982:  VCMPE.F32       S0, S2
297986:  VMRS            APSR_nzcv, FPSCR
29798A:  BLT             loc_2979E0
29798C:  VCMPE.F32       S0, S16
297990:  VMRS            APSR_nzcv, FPSCR
297994:  BGT             loc_2979E0
297996:  LDR.W           R0, =(gMobileMenu_ptr - 0x29799E)
29799A:  ADD             R0, PC; gMobileMenu_ptr
29799C:  LDR             R0, [R0]; gMobileMenu
29799E:  ADD.W           R0, R0, R1,LSL#3
2979A2:  VLDR            S0, [R0,#0x74]
2979A6:  MOVS            R0, #0
2979A8:  VCMPE.F32       S0, S18
2979AC:  VMRS            APSR_nzcv, FPSCR
2979B0:  BLT             loc_2979E0
2979B2:  VMOV.F32        S2, #27.0
2979B6:  VADD.F32        S2, S18, S2
2979BA:  VCMPE.F32       S0, S2
2979BE:  VMRS            APSR_nzcv, FPSCR
2979C2:  BGT             loc_2979E0
2979C4:  LDR.W           R0, =(gMobileMenu_ptr - 0x2979CC)
2979C8:  ADD             R0, PC; gMobileMenu_ptr
2979CA:  LDR             R0, [R0]; gMobileMenu
2979CC:  ADD.W           R0, R0, R1,LSL#2
2979D0:  LDR.W           R1, [R0,#0x90]
2979D4:  MOVS            R0, #0
2979D6:  CMP             R1, #3
2979D8:  IT EQ
2979DA:  MOVEQ           R0, #1
2979DC:  B               loc_2979E0
2979DE:  MOVS            R0, #0
2979E0:  LDR.W           R1, =(IsDownloadBack_ptr - 0x2979E8)
2979E4:  ADD             R1, PC; IsDownloadBack_ptr
2979E6:  LDR             R1, [R1]; IsDownloadBack
2979E8:  LDRB            R1, [R1]
2979EA:  CBZ             R1, loc_2979FE
2979EC:  CMP             R0, #1
2979EE:  BNE             loc_297A10
2979F0:  MOVS            R0, #0xFF
2979F2:  MOVS            R1, #0xF0
2979F4:  STR             R0, [SP,#0xF0+var_F0]
2979F6:  ADD             R0, SP, #0xF0+var_58
2979F8:  MOVS            R2, #0xF0
2979FA:  MOVS            R3, #0xF0
2979FC:  B               loc_297A1C
2979FE:  CMP             R0, #1
297A00:  BNE             loc_297A60
297A02:  MOVS            R0, #0xFF
297A04:  MOVS            R1, #0xF0
297A06:  STR             R0, [SP,#0xF0+var_F0]
297A08:  ADD             R0, SP, #0xF0+var_5C
297A0A:  MOVS            R2, #0xF0
297A0C:  MOVS            R3, #0xF0
297A0E:  B               loc_297A6C
297A10:  MOVS            R0, #0xFF
297A12:  MOVS            R1, #0xFF; unsigned __int8
297A14:  STR             R0, [SP,#0xF0+var_F0]; unsigned __int8
297A16:  ADD             R0, SP, #0xF0+var_58; this
297A18:  MOVS            R2, #0xFF; unsigned __int8
297A1A:  MOVS            R3, #0xFF; unsigned __int8
297A1C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297A20:  LDR.W           R0, =(TheText_ptr - 0x297A2C)
297A24:  ADR.W           R1, aExit; "EXIT"
297A28:  ADD             R0, PC; TheText_ptr
297A2A:  LDR             R0, [R0]; TheText ; this
297A2C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
297A30:  MOV             R2, R0
297A32:  VLDR            S0, =-120.0
297A36:  MOVS            R0, #0
297A38:  LDR             R1, [SP,#0xF0+var_58]
297A3A:  B               loc_297A8A
297A3C:  DCFS 1.35
297A40:  DCFS 480.0
297A44:  DCFS 0.0
297A48:  DCFS -240.0
297A4C:  DCFS 320.0
297A50:  DCFS 440.5
297A54:  DCFS -0.0
297A58:  DCFS -120.0
297A5C:  DCFS -32.0
297A60:  MOVS            R0, #0xFF
297A62:  MOVS            R1, #0xFF; unsigned __int8
297A64:  STR             R0, [SP,#0xF0+var_F0]; unsigned __int8
297A66:  ADD             R0, SP, #0xF0+var_5C; this
297A68:  MOVS            R2, #0xFF; unsigned __int8
297A6A:  MOVS            R3, #0xFF; unsigned __int8
297A6C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297A70:  LDR.W           R0, =(TheText_ptr - 0x297A7C)
297A74:  ADR.W           R1, aFedsTb; "FEDS_TB"
297A78:  ADD             R0, PC; TheText_ptr
297A7A:  LDR             R0, [R0]; TheText ; this
297A7C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
297A80:  LDR             R1, [SP,#0xF0+var_5C]
297A82:  MOV             R2, R0
297A84:  VLDR            S0, =-120.0
297A88:  MOVS            R0, #0
297A8A:  VADD.F32        S0, S16, S0
297A8E:  MOVS            R3, #0
297A90:  STR             R1, [SP,#0xF0+var_A0]
297A92:  MOVS            R1, #0x41D80000
297A98:  MOVT            R3, #0x42F0
297A9C:  STRD.W          R3, R1, [SP,#0xF0+var_DC]; int
297AA0:  ADD             R3, SP, #0xF0+var_A0
297AA2:  STRD.W          R0, R0, [SP,#0xF0+var_D4]
297AA6:  MOVS            R1, #1
297AA8:  VSTR            S0, [SP,#0xF0+var_E4]
297AAC:  VSTR            S18, [SP,#0xF0+var_E0]
297AB0:  STRD.W          R0, R3, [SP,#0xF0+var_F0]
297AB4:  ADD             R0, SP, #0xF0+var_80
297AB6:  STR             R1, [SP,#0xF0+var_E8]; float
297AB8:  MOV             R1, R10
297ABA:  MOVS            R3, #2
297ABC:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
297AC0:  LDR             R0, [SP,#0xF0+var_80]
297AC2:  VMOV            S20, R0
297AC6:  MOVS            R0, #0x41 ; 'A'
297AC8:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297ACC:  CMP             R0, #1
297ACE:  BNE             loc_297ADA
297AD0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
297AD4:  CMP             R0, #2
297AD6:  BNE.W           loc_297C78
297ADA:  VMOV.F32        S0, #4.0
297ADE:  VLDR            S6, =-32.0
297AE2:  VMOV.F32        S2, #-4.0
297AE6:  ADR.W           R0, dword_297F60
297AEA:  VMOV.F32        S4, #23.0
297AEE:  ADD             R6, SP, #0xF0+var_A0
297AF0:  VADD.F32        S6, S20, S6
297AF4:  VLD1.64         {D16-D17}, [R0@128]
297AF8:  ADR.W           R0, dword_297F70
297AFC:  ADD             R5, SP, #0xF0+var_B0
297AFE:  VLD1.64         {D18-D19}, [R0@128]
297B02:  MOV             R0, R6
297B04:  MOVS            R4, #0xFF
297B06:  MOVS            R1, #0xFF; unsigned __int8
297B08:  VADD.F32        S0, S18, S0
297B0C:  VST1.32         {D16-D17}, [R0]!
297B10:  VADD.F32        S2, S20, S2
297B14:  MOVS            R2, #0xFF; unsigned __int8
297B16:  VADD.F32        S4, S18, S4
297B1A:  VST1.32         {D18-D19}, [R0]
297B1E:  MOV             R0, R5; this
297B20:  MOVS            R3, #0xFF; unsigned __int8
297B22:  VSTR            S6, [SP,#0xF0+var_70]
297B26:  VSTR            S6, [SP,#0xF0+var_68]
297B2A:  STR             R4, [SP,#0xF0+var_F0]; unsigned __int8
297B2C:  VSTR            S0, [SP,#0xF0+var_7C]
297B30:  VSTR            S2, [SP,#0xF0+var_80]
297B34:  VSTR            S2, [SP,#0xF0+var_78]
297B38:  VSTR            S4, [SP,#0xF0+var_74]
297B3C:  VSTR            S0, [SP,#0xF0+var_6C]
297B40:  VSTR            S4, [SP,#0xF0+var_64]
297B44:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297B48:  ADDS            R0, R5, #4; this
297B4A:  MOVS            R1, #0xFF; unsigned __int8
297B4C:  MOVS            R2, #0xFF; unsigned __int8
297B4E:  MOVS            R3, #0xFF; unsigned __int8
297B50:  STR             R4, [SP,#0xF0+var_F0]; unsigned __int8
297B52:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297B56:  ADD.W           R0, R5, #8; this
297B5A:  MOVS            R1, #0xFF; unsigned __int8
297B5C:  MOVS            R2, #0xFF; unsigned __int8
297B5E:  MOVS            R3, #0xFF; unsigned __int8
297B60:  STR             R4, [SP,#0xF0+var_F0]; unsigned __int8
297B62:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297B66:  ADD.W           R0, R5, #0xC; this
297B6A:  MOVS            R1, #0xFF; unsigned __int8
297B6C:  MOVS            R2, #0xFF; unsigned __int8
297B6E:  MOVS            R3, #0xFF; unsigned __int8
297B70:  STR             R4, [SP,#0xF0+var_F0]; unsigned __int8
297B72:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297B76:  LDR.W           R1, [R10,#4]
297B7A:  MOVS            R0, #0
297B7C:  ADD             R2, SP, #0xF0+var_80
297B7E:  STRD.W          R5, R0, [SP,#0xF0+var_F0]
297B82:  MOV             R0, R10
297B84:  MOV             R3, R6
297B86:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBAb; MenuScreen::DrawSprite(RwTexture *,CVector2D *,CVector2D *,CRGBA *,bool)
297B8A:  MOVS            R0, #0x40 ; '@'
297B8C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297B90:  CMP             R0, #1
297B92:  BNE.W           loc_297DBE
297B96:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
297B9A:  CMP             R0, #1
297B9C:  BNE.W           loc_297DBE
297BA0:  CMP.W           R8, #0
297BA4:  BEQ.W           loc_297DBE
297BA8:  LDR.W           R0, =(gMobileMenu_ptr - 0x297BBA)
297BAC:  MOVS            R5, #0
297BAE:  STRD.W          R5, R5, [SP,#0xF0+var_80]
297BB2:  MOV.W           R1, #0x3F800000
297BB6:  ADD             R0, PC; gMobileMenu_ptr
297BB8:  LDR             R0, [R0]; gMobileMenu
297BBA:  LDRB.W          R0, [R0,#(byte_6E00D9 - 0x6E006C)]
297BBE:  STRD.W          R1, R1, [SP,#0xF0+var_A0]
297BC2:  CMP             R0, #0
297BC4:  BEQ.W           loc_297CF8
297BC8:  LDR.W           R0, =(_ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr - 0x297BD4)
297BCC:  LDR.W           R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x297BD6)
297BD0:  ADD             R0, PC; _ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr
297BD2:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
297BD4:  LDR             R0, [R0]; CTheScripts::HideAllFrontEndMapBlips ...
297BD6:  LDR             R1, [R1]; CTheScripts::bPlayerIsOffTheMap ...
297BD8:  LDRB            R0, [R0]; CTheScripts::HideAllFrontEndMapBlips
297BDA:  LDRB            R1, [R1]; CTheScripts::bPlayerIsOffTheMap
297BDC:  ORRS            R0, R1
297BDE:  LSLS            R0, R0, #0x18
297BE0:  BNE.W           loc_297DBE
297BE4:  LDR.W           R0, =(gMobileMenu_ptr - 0x297BF2)
297BE8:  MOVS            R6, #0xFF
297BEA:  MOVS            R1, #0xFF; unsigned __int8
297BEC:  MOVS            R2, #0xFF; unsigned __int8
297BEE:  ADD             R0, PC; gMobileMenu_ptr
297BF0:  MOVS            R3, #0xFF; unsigned __int8
297BF2:  STR             R6, [SP,#0xF0+var_F0]; unsigned __int8
297BF4:  LDR             R0, [R0]; gMobileMenu
297BF6:  LDR             R4, [R0,#(dword_6E00B4 - 0x6E006C)]
297BF8:  ADD             R0, SP, #0xF0+var_B4; this
297BFA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297BFE:  LDR             R0, =(TheText_ptr - 0x297C0A)
297C00:  ADR             R2, aFehWay; "FEH_WAY"
297C02:  ADR             R1, aFehRem; "FEH_REM"
297C04:  CMP             R4, #0
297C06:  ADD             R0, PC; TheText_ptr
297C08:  IT EQ
297C0A:  MOVEQ           R1, R2; CKeyGen *
297C0C:  LDR             R0, [R0]; TheText ; this
297C0E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
297C12:  VMOV.F32        S20, #-25.0
297C16:  VLDR            S0, =-90.0
297C1A:  MOVS            R1, #0
297C1C:  MOVS            R3, #0
297C1E:  VADD.F32        S0, S16, S0
297C22:  MOV             R2, R0
297C24:  LDR             R0, [SP,#0xF0+var_B4]
297C26:  MOVT            R1, #0x41D8
297C2A:  MOVT            R3, #0x42B4
297C2E:  STR             R0, [SP,#0xF0+var_54]
297C30:  STRD.W          R3, R1, [SP,#0xF0+var_DC]
297C34:  ADD             R3, SP, #0xF0+var_54
297C36:  MOVS            R0, #0
297C38:  MOVS            R1, #1
297C3A:  VADD.F32        S2, S18, S20
297C3E:  STRD.W          R0, R0, [SP,#0xF0+var_D4]
297C42:  VSTR            S0, [SP,#0xF0+var_E4]
297C46:  VSTR            S2, [SP,#0xF0+var_E0]
297C4A:  STRD.W          R0, R3, [SP,#0xF0+var_F0]
297C4E:  ADD             R0, SP, #0xF0+var_B0
297C50:  STR             R1, [SP,#0xF0+var_E8]
297C52:  MOV             R1, R10
297C54:  MOVS            R3, #2
297C56:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
297C5A:  ADD             R2, SP, #0xF0+var_80
297C5C:  ADD             R3, SP, #0xF0+var_A0
297C5E:  MOVS            R0, #0
297C60:  MOVS            R1, #0x40 ; '@'
297C62:  VLDR            S22, [SP,#0xF0+var_B0]
297C66:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
297C6A:  CMP             R0, #0
297C6C:  BEQ.W           loc_297DBE
297C70:  LDR             R5, [R0]
297C72:  STR             R6, [SP,#0xF0+var_F0]
297C74:  ADD             R6, SP, #0xF0+var_B8
297C76:  B               loc_297D74
297C78:  MOVS            R0, #0
297C7A:  ADD             R2, SP, #0xF0+var_80
297C7C:  STRD.W          R0, R0, [SP,#0xF0+var_80]
297C80:  MOV.W           R0, #0x3F800000
297C84:  ADD             R3, SP, #0xF0+var_A0
297C86:  STRD.W          R0, R0, [SP,#0xF0+var_A0]
297C8A:  MOVS            R0, #0
297C8C:  MOVS            R1, #0x41 ; 'A'
297C8E:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
297C92:  CMP             R0, #0
297C94:  BEQ.W           loc_297B8A
297C98:  ADD             R6, SP, #0xF0+var_60
297C9A:  LDR             R5, [R0]
297C9C:  MOVS            R0, #0xFF
297C9E:  MOVS            R1, #0xFF; unsigned __int8
297CA0:  STR             R0, [SP,#0xF0+var_F0]; float
297CA2:  MOV             R0, R6; this
297CA4:  MOVS            R2, #0xFF; unsigned __int8
297CA6:  MOVS            R3, #0xFF; unsigned __int8
297CA8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297CAC:  VMOV.F32        S0, #-25.0
297CB0:  LDRD.W          R0, R1, [SP,#0xF0+var_80]
297CB4:  VMOV.F32        S2, #5.0
297CB8:  LDRD.W          R2, R4, [SP,#0xF0+var_A0]
297CBC:  VMOV.F32        S4, #-5.0
297CC0:  ADD.W           R12, SP, #0xF0+var_E4
297CC4:  STM.W           R12, {R0-R2,R4}
297CC8:  MOV             R0, R10; int
297CCA:  MOV             R1, R5; int
297CCC:  MOV             R2, R6; int
297CCE:  VADD.F32        S0, S20, S0
297CD2:  VADD.F32        S2, S18, S2
297CD6:  VADD.F32        S4, S20, S4
297CDA:  VMOV            R3, S0; int
297CDE:  VMOV.F32        S0, #25.0
297CE2:  VSTR            S2, [SP,#0xF0+var_F0]
297CE6:  VSTR            S4, [SP,#0xF0+var_EC]
297CEA:  VADD.F32        S0, S18, S0
297CEE:  VSTR            S0, [SP,#0xF0+var_E8]
297CF2:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
297CF6:  B               loc_297B8A
297CF8:  ADD             R0, SP, #0xF0+var_BC; this
297CFA:  MOVS            R6, #0xFF
297CFC:  MOVS            R1, #0xFF; unsigned __int8
297CFE:  MOVS            R2, #0xFF; unsigned __int8
297D00:  MOVS            R3, #0xFF; unsigned __int8
297D02:  STR             R6, [SP,#0xF0+var_F0]; unsigned __int8
297D04:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297D08:  LDR             R0, =(TheText_ptr - 0x297D14)
297D0A:  VMOV.F32        S20, #-25.0
297D0E:  LDR             R1, =(aFehSel - 0x297D1A); "FEH_SEL"
297D10:  ADD             R0, PC; TheText_ptr
297D12:  VLDR            S0, =-120.0
297D16:  ADD             R1, PC; "FEH_SEL"
297D18:  LDR             R0, [R0]; TheText ; this
297D1A:  VADD.F32        S22, S16, S0
297D1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
297D22:  MOV             R2, R0
297D24:  LDR             R0, [SP,#0xF0+var_BC]
297D26:  VADD.F32        S0, S18, S20
297D2A:  MOVS            R1, #0
297D2C:  STR             R0, [SP,#0xF0+var_54]
297D2E:  MOVS            R0, #0x41D80000
297D34:  MOVT            R1, #0x42F0
297D38:  STRD.W          R1, R0, [SP,#0xF0+var_DC]; int
297D3C:  ADD             R1, SP, #0xF0+var_54
297D3E:  MOVS            R0, #1
297D40:  STRD.W          R5, R5, [SP,#0xF0+var_D4]
297D44:  VSTR            S22, [SP,#0xF0+var_E4]
297D48:  MOVS            R3, #2
297D4A:  STRD.W          R5, R1, [SP,#0xF0+var_F0]
297D4E:  MOV             R1, R10
297D50:  STR             R0, [SP,#0xF0+var_E8]; float
297D52:  ADD             R0, SP, #0xF0+var_B0
297D54:  VSTR            S0, [SP,#0xF0+var_E0]
297D58:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
297D5C:  ADD             R2, SP, #0xF0+var_80
297D5E:  ADD             R3, SP, #0xF0+var_A0
297D60:  MOVS            R0, #0
297D62:  MOVS            R1, #0x40 ; '@'
297D64:  VLDR            S22, [SP,#0xF0+var_B0]
297D68:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
297D6C:  CBZ             R0, loc_297DBE
297D6E:  LDR             R5, [R0]
297D70:  STR             R6, [SP,#0xF0+var_F0]; float
297D72:  ADD             R6, SP, #0xF0+var_C0
297D74:  MOV             R0, R6; this
297D76:  MOVS            R1, #0xFF; unsigned __int8
297D78:  MOVS            R2, #0xFF; unsigned __int8
297D7A:  MOVS            R3, #0xFF; unsigned __int8
297D7C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297D80:  VADD.F32        S0, S22, S20
297D84:  LDR             R0, [SP,#0xF0+var_80]
297D86:  VMOV.F32        S2, #-5.0
297D8A:  LDR             R1, [SP,#0xF0+var_7C]
297D8C:  LDR             R2, [SP,#0xF0+var_A0]
297D8E:  ADD.W           R12, SP, #0xF0+var_E4
297D92:  LDR             R4, [SP,#0xF0+var_9C]
297D94:  STM.W           R12, {R0-R2,R4}
297D98:  MOV             R0, R10; int
297D9A:  MOV             R1, R5; int
297D9C:  MOV             R2, R6; int
297D9E:  VMOV            R3, S0; int
297DA2:  VMOV.F32        S0, #-20.0
297DA6:  VADD.F32        S2, S22, S2
297DAA:  VADD.F32        S0, S18, S0
297DAE:  VSTR            S0, [SP,#0xF0+var_F0]
297DB2:  VSTR            S2, [SP,#0xF0+var_EC]
297DB6:  VSTR            S18, [SP,#0xF0+var_E8]
297DBA:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
297DBE:  LDR             R0, =(gMobileMenu_ptr - 0x297DC4)
297DC0:  ADD             R0, PC; gMobileMenu_ptr
297DC2:  LDR             R0, [R0]; gMobileMenu
297DC4:  LDRB.W          R0, [R0,#(byte_6E00D9 - 0x6E006C)]
297DC8:  CMP             R0, #0
297DCA:  BEQ.W           loc_297F48
297DCE:  LDR             R0, =(mapModeOpacity_ptr - 0x297DD8)
297DD0:  VMOV.F32        S2, #1.0
297DD4:  ADD             R0, PC; mapModeOpacity_ptr
297DD6:  LDR             R0, [R0]; mapModeOpacity ; this
297DD8:  VLDR            S0, [R0]
297DDC:  VCMP.F32        S0, S2
297DE0:  VMRS            APSR_nzcv, FPSCR
297DE4:  BNE.W           loc_297F48
297DE8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
297DEC:  CMP             R0, #1
297DEE:  BNE.W           loc_297F48
297DF2:  MOVS            R0, #0x60 ; '`'
297DF4:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297DF8:  CMP             R0, #1
297DFA:  BNE.W           loc_297F48
297DFE:  MOVS            R0, #0x61 ; 'a'
297E00:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
297E04:  CMP             R0, #1
297E06:  BNE.W           loc_297F48
297E0A:  ADD             R0, SP, #0xF0+var_C4; this
297E0C:  MOV.W           R9, #0xFF
297E10:  MOVS            R1, #0xFF; unsigned __int8
297E12:  MOVS            R2, #0xFF; unsigned __int8
297E14:  MOVS            R3, #0xFF; unsigned __int8
297E16:  STR.W           R9, [SP,#0xF0+var_F0]; unsigned __int8
297E1A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297E1E:  LDR             R0, =(TheText_ptr - 0x297E26)
297E20:  ADR             R1, aFeiZoo; "FEI_ZOO"
297E22:  ADD             R0, PC; TheText_ptr
297E24:  LDR             R0, [R0]; TheText ; this
297E26:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
297E2A:  VLDR            S0, =-120.0
297E2E:  MOVS            R1, #0
297E30:  MOV             R2, R0
297E32:  LDR             R0, [SP,#0xF0+var_C4]
297E34:  VADD.F32        S0, S16, S0
297E38:  MOVW            R8, #0
297E3C:  STR             R0, [SP,#0xF0+var_A0]
297E3E:  MOVS            R0, #0
297E40:  MOVT            R1, #0x42F0
297E44:  MOVT            R8, #0x41C8
297E48:  SUB.W           R3, R8, #0x280000
297E4C:  STRD.W          R3, R1, [SP,#0xF0+var_E0]; int
297E50:  MOVS            R4, #0
297E52:  MOVT            R0, #0x41D8
297E56:  ADD             R1, SP, #0xF0+var_A0
297E58:  STRD.W          R0, R4, [SP,#0xF0+var_D8]; int
297E5C:  MOVS            R0, #1
297E5E:  STR             R4, [SP,#0xF0+var_D0]
297E60:  VSTR            S0, [SP,#0xF0+var_E4]
297E64:  MOVS            R3, #2
297E66:  STRD.W          R4, R1, [SP,#0xF0+var_F0]
297E6A:  MOV             R1, R10
297E6C:  STR             R0, [SP,#0xF0+var_E8]
297E6E:  ADD             R0, SP, #0xF0+var_80
297E70:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
297E74:  MOV.W           R0, #0x3F800000
297E78:  ADD             R2, SP, #0xF0+var_80
297E7A:  ADD             R3, SP, #0xF0+var_A0
297E7C:  LDR.W           R11, [SP,#0xF0+var_80]
297E80:  STRD.W          R4, R4, [SP,#0xF0+var_80]
297E84:  MOVS            R1, #0x61 ; 'a'
297E86:  STRD.W          R0, R0, [SP,#0xF0+var_A0]
297E8A:  MOVS            R0, #0
297E8C:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
297E90:  CBZ             R0, loc_297EE6
297E92:  LDR             R5, [R0]
297E94:  MOVS            R1, #0xFF; unsigned __int8
297E96:  STR.W           R9, [SP,#0xF0+var_F0]; unsigned __int8
297E9A:  ADD.W           R9, SP, #0xF0+var_C8
297E9E:  MOVS            R2, #0xFF; unsigned __int8
297EA0:  MOVS            R3, #0xFF; unsigned __int8
297EA2:  MOV             R0, R9; this
297EA4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297EA8:  VMOV.F32        S0, #-25.0
297EAC:  LDRD.W          R0, R1, [SP,#0xF0+var_80]
297EB0:  VMOV            S2, R11
297EB4:  LDRD.W          R2, R4, [SP,#0xF0+var_A0]
297EB8:  ADD.W           R6, R8, #0x6C0000
297EBC:  STRD.W          R6, R0, [SP,#0xF0+var_E8]; float
297EC0:  ADD             R0, SP, #0xF0+var_E0
297EC2:  STM             R0!, {R1,R2,R4}
297EC4:  MOV             R0, R10; int
297EC6:  MOV             R1, R5; int
297EC8:  MOV             R2, R9; int
297ECA:  STR.W           R8, [SP,#0xF0+var_F0]; float
297ECE:  VADD.F32        S0, S2, S0
297ED2:  VMOV            R3, S0; int
297ED6:  VMOV.F32        S0, #-5.0
297EDA:  VADD.F32        S0, S2, S0
297EDE:  VSTR            S0, [SP,#0xF0+var_EC]
297EE2:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
297EE6:  ADD             R2, SP, #0xF0+var_80
297EE8:  ADD             R3, SP, #0xF0+var_A0
297EEA:  MOVS            R0, #0
297EEC:  MOVS            R1, #0x60 ; '`'
297EEE:  BLX             j__ZN4CHID13GetHelpSpriteEPKc10HIDMappingP9CVector2DS4_; CHID::GetHelpSprite(char const*,HIDMapping,CVector2D *,CVector2D *)
297EF2:  CBZ             R0, loc_297F48
297EF4:  ADD.W           R9, SP, #0xF0+var_CC
297EF8:  LDR             R5, [R0]
297EFA:  MOVS            R0, #0xFF
297EFC:  MOVS            R1, #0xFF; unsigned __int8
297EFE:  STR             R0, [SP,#0xF0+var_F0]; unsigned __int8
297F00:  MOV             R0, R9; this
297F02:  MOVS            R2, #0xFF; unsigned __int8
297F04:  MOVS            R3, #0xFF; unsigned __int8
297F06:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
297F0A:  VLDR            S0, =-45.0
297F0E:  VMOV            S2, R11
297F12:  LDRD.W          R0, R1, [SP,#0xF0+var_80]
297F16:  ADD.W           R4, R8, #0x6C0000
297F1A:  VADD.F32        S0, S2, S0
297F1E:  LDRD.W          R2, R6, [SP,#0xF0+var_A0]
297F22:  STRD.W          R4, R0, [SP,#0xF0+var_E8]; float
297F26:  ADD             R0, SP, #0xF0+var_E0
297F28:  STM             R0!, {R1,R2,R6}
297F2A:  MOV             R0, R10; int
297F2C:  MOV             R1, R5; int
297F2E:  MOV             R2, R9; int
297F30:  STR.W           R8, [SP,#0xF0+var_F0]; float
297F34:  VMOV            R3, S0; int
297F38:  VMOV.F32        S0, #-25.0
297F3C:  VADD.F32        S0, S2, S0
297F40:  VSTR            S0, [SP,#0xF0+var_EC]
297F44:  BLX             j__ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_; MenuScreen::DrawSprite(RwTexture *,CRGBA,CVector2D,CVector2D,CVector2D,CVector2D)
297F48:  ADD             SP, SP, #0xA0
297F4A:  VPOP            {D8-D13}
297F4E:  ADD             SP, SP, #4
297F50:  POP.W           {R8-R11}
297F54:  POP             {R4-R7,PC}
