; =========================================================
; Game Engine Function: _ZN4CHud14DrawScriptTextEh
; Address            : 0x438AF8 - 0x438D0A
; =========================================================

438AF8:  PUSH            {R4-R7,LR}
438AFA:  ADD             R7, SP, #0xC
438AFC:  PUSH.W          {R8-R11}
438B00:  SUB             SP, SP, #4
438B02:  VPUSH           {D8-D10}
438B06:  SUB.W           SP, SP, #0x368
438B0A:  MOV             R10, R0
438B0C:  BLX             j__ZN11CTheScripts30DrawScriptSpritesAndRectanglesEh; CTheScripts::DrawScriptSpritesAndRectangles(uchar)
438B10:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B22)
438B12:  VMOV.F32        S18, #0.5
438B16:  VLDR            S16, =448.0
438B1A:  MOV.W           R8, #0
438B1E:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B20:  VLDR            S20, =640.0
438B24:  LDR.W           R9, [R0]; CTheScripts::IntroTextLines ...
438B28:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B2E)
438B2A:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B2C:  LDR             R6, [R0]; CTheScripts::IntroTextLines ...
438B2E:  LDR             R0, =(RsGlobal_ptr - 0x438B34)
438B30:  ADD             R0, PC; RsGlobal_ptr
438B32:  LDR             R0, [R0]; RsGlobal
438B34:  STR             R0, [SP,#0x3A0+var_368]
438B36:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B3C)
438B38:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B3A:  LDR             R0, [R0]; CTheScripts::IntroTextLines ...
438B3C:  STR             R0, [SP,#0x3A0+var_36C]
438B3E:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B44)
438B40:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B42:  LDR             R0, [R0]; CTheScripts::IntroTextLines ...
438B44:  STR             R0, [SP,#0x3A0+var_388]
438B46:  LDR             R0, =(RsGlobal_ptr - 0x438B4C)
438B48:  ADD             R0, PC; RsGlobal_ptr
438B4A:  LDR             R0, [R0]; RsGlobal
438B4C:  STR             R0, [SP,#0x3A0+var_370]
438B4E:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B54)
438B50:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B52:  LDR             R0, [R0]; CTheScripts::IntroTextLines ...
438B54:  STR             R0, [SP,#0x3A0+var_374]
438B56:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B5C)
438B58:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B5A:  LDR             R0, [R0]; CTheScripts::IntroTextLines ...
438B5C:  STR             R0, [SP,#0x3A0+var_38C]
438B5E:  LDR             R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x438B64)
438B60:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
438B62:  LDR             R0, [R0]; CTheScripts::IntroTextLines ...
438B64:  STR             R0, [SP,#0x3A0+var_378]
438B66:  LDR             R0, =(TheText_ptr - 0x438B6C)
438B68:  ADD             R0, PC; TheText_ptr
438B6A:  LDR             R0, [R0]; TheText
438B6C:  STR             R0, [SP,#0x3A0+var_37C]
438B6E:  LDR             R0, =(RsGlobal_ptr - 0x438B78)
438B70:  STRD.W          R6, R10, [SP,#0x3A0+var_384]
438B74:  ADD             R0, PC; RsGlobal_ptr
438B76:  LDR.W           R11, [R0]; RsGlobal
438B7A:  ADD.W           R5, R9, R8
438B7E:  LDRB.W          R0, [R5,#0x34]!
438B82:  CMP             R0, #0
438B84:  BEQ.W           loc_438CEE
438B88:  ADD.W           R0, R6, R8
438B8C:  LDRB.W          R0, [R0,#0x23]
438B90:  CMP             R0, R10
438B92:  BNE.W           loc_438CEE
438B96:  LDR             R0, [SP,#0x3A0+var_368]
438B98:  VLDR            S0, [R0,#8]
438B9C:  VCVT.F32.S32    S0, S0
438BA0:  LDR             R0, [SP,#0x3A0+var_36C]
438BA2:  ADD.W           R4, R0, R8
438BA6:  VLDR            S2, [R4,#4]
438BAA:  VDIV.F32        S0, S0, S16
438BAE:  VMUL.F32        S0, S2, S0
438BB2:  VMUL.F32        S0, S0, S18
438BB6:  VMOV            R0, S0; this
438BBA:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
438BBE:  LDR             R0, [R4,#8]
438BC0:  STR             R0, [SP,#0x3A0+var_35C]
438BC2:  ADD             R0, SP, #0x3A0+var_35C
438BC4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
438BC8:  LDRB            R0, [R4,#0xC]; this
438BCA:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
438BCE:  LDRB.W          R0, [R4,#0x24]
438BD2:  CBZ             R0, loc_438BD8
438BD4:  MOVS            R0, #2
438BD6:  B               loc_438BE6
438BD8:  LDR             R0, [SP,#0x3A0+var_388]
438BDA:  ADD             R0, R8
438BDC:  LDRB            R0, [R0,#0xD]
438BDE:  CMP             R0, #0
438BE0:  ITE EQ
438BE2:  MOVEQ           R0, #1
438BE4:  MOVNE           R0, #0; this
438BE6:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
438BEA:  LDR             R4, [SP,#0x3A0+var_370]
438BEC:  VLDR            S0, [R4,#4]
438BF0:  VCVT.F32.S32    S0, S0
438BF4:  LDR             R0, [SP,#0x3A0+var_374]
438BF6:  ADD.W           R10, R0, R8
438BFA:  VLDR            S2, [R10,#0x10]
438BFE:  VDIV.F32        S0, S0, S20
438C02:  VMUL.F32        S0, S2, S0
438C06:  VMOV            R0, S0; this
438C0A:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
438C0E:  VLDR            S0, [R4,#4]
438C12:  VCVT.F32.S32    S0, S0
438C16:  VLDR            S2, [R10,#0x14]
438C1A:  VDIV.F32        S0, S0, S20
438C1E:  VMUL.F32        S0, S2, S0
438C22:  VMOV            R0, S0; this
438C26:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
438C2A:  LDRB.W          R0, [R10,#0xE]; this
438C2E:  MOVS            R1, #0; unsigned __int8
438C30:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
438C34:  LDR.W           R0, [R10,#0x18]
438C38:  STR             R0, [SP,#0x3A0+var_360]
438C3A:  ADD             R0, SP, #0x3A0+var_360
438C3C:  BLX             j__ZN5CFont18SetBackgroundColorE5CRGBA; CFont::SetBackgroundColor(CRGBA)
438C40:  LDRB.W          R0, [R10,#0x1C]; this
438C44:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
438C48:  LDR.W           R0, [R10,#0x1D]
438C4C:  STR             R0, [SP,#0x3A0+var_364]
438C4E:  ADD             R0, SP, #0x3A0+var_364
438C50:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
438C54:  LDRB.W          R0, [R10,#0x22]
438C58:  CBZ             R0, loc_438C62
438C5A:  SXTB            R0, R0; this
438C5C:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
438C60:  B               loc_438C6E
438C62:  LDR             R0, [SP,#0x3A0+var_38C]
438C64:  ADD             R0, R8
438C66:  LDRSB.W         R0, [R0,#0x21]; this
438C6A:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
438C6E:  LDRD.W          R6, R10, [SP,#0x3A0+var_384]
438C72:  LDR             R0, [SP,#0x3A0+var_378]
438C74:  ADD.W           R4, R0, R8
438C78:  LDRB.W          R0, [R4,#0x28]; this
438C7C:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
438C80:  LDR             R0, [SP,#0x3A0+var_37C]; this
438C82:  MOV             R1, R5; CKeyGen *
438C84:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
438C88:  LDRD.W          R1, R2, [R4,#0x3C]; int
438C8C:  MOV.W           R3, #0xFFFFFFFF
438C90:  STRD.W          R3, R3, [SP,#0x3A0+var_3A0]; int
438C94:  ADD             R5, SP, #0x3A0+var_358
438C96:  STR             R3, [SP,#0x3A0+var_398]; int
438C98:  MOV.W           R3, #0xFFFFFFFF; int
438C9C:  STR             R5, [SP,#0x3A0+var_394]; int
438C9E:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
438CA2:  VLDR            S0, [R11,#4]
438CA6:  MOV             R2, R5; CFont *
438CA8:  VLDR            S2, [R11,#8]
438CAC:  VCVT.F32.S32    S0, S0
438CB0:  VCVT.F32.S32    S2, S2
438CB4:  VLDR            S8, [R4,#0x2C]
438CB8:  VLDR            S10, [R4,#0x30]
438CBC:  VSUB.F32        S8, S20, S8
438CC0:  VSUB.F32        S10, S16, S10
438CC4:  VDIV.F32        S4, S0, S20
438CC8:  VDIV.F32        S6, S2, S16
438CCC:  VMUL.F32        S4, S8, S4
438CD0:  VMUL.F32        S6, S10, S6
438CD4:  VSUB.F32        S0, S0, S4
438CD8:  VSUB.F32        S2, S2, S6
438CDC:  VMOV            R0, S0; this
438CE0:  VMOV            R1, S2; float
438CE4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
438CE8:  MOVS            R0, #0; this
438CEA:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
438CEE:  ADD.W           R8, R8, #0x44 ; 'D'
438CF2:  CMP.W           R8, #0x1980
438CF6:  BNE.W           loc_438B7A
438CFA:  ADD.W           SP, SP, #0x368
438CFE:  VPOP            {D8-D10}
438D02:  ADD             SP, SP, #4
438D04:  POP.W           {R8-R11}
438D08:  POP             {R4-R7,PC}
