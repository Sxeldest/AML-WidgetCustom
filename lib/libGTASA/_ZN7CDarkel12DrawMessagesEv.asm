; =========================================================
; Game Engine Function: _ZN7CDarkel12DrawMessagesEv
; Address            : 0x3039FC - 0x303E16
; =========================================================

3039FC:  PUSH            {R4-R7,LR}
3039FE:  ADD             R7, SP, #0xC
303A00:  PUSH.W          {R8-R11}
303A04:  SUB             SP, SP, #4
303A06:  VPUSH           {D8-D15}
303A0A:  SUB             SP, SP, #0x30
303A0C:  LDR.W           R0, =(_ZN7CDarkel6StatusE_ptr - 0x303A14)
303A10:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
303A12:  LDR             R0, [R0]; CDarkel::Status ...
303A14:  LDRH            R0, [R0]; CDarkel::Status
303A16:  CMP             R0, #4
303A18:  BEQ             loc_303A24
303A1A:  CMP             R0, #2
303A1C:  BEQ             loc_303A5E
303A1E:  CMP             R0, #1
303A20:  BNE.W           loc_303E08
303A24:  LDR.W           R0, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303A34)
303A28:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303A36)
303A2C:  LDR.W           R2, =(_ZN7CDarkel25bStandardSoundAndMessagesE_ptr - 0x303A38)
303A30:  ADD             R0, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
303A32:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303A34:  ADD             R2, PC; _ZN7CDarkel25bStandardSoundAndMessagesE_ptr
303A36:  LDR             R0, [R0]; CDarkel::TimeOfFrenzyStart ...
303A38:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
303A3A:  LDR             R2, [R2]; CDarkel::bStandardSoundAndMessages ...
303A3C:  LDR             R0, [R0]; CDarkel::TimeOfFrenzyStart
303A3E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
303A40:  LDRB            R2, [R2]; CDarkel::bStandardSoundAndMessages
303A42:  SUBS            R0, R1, R0
303A44:  CBZ             R2, loc_303AAE
303A46:  MOVW            R1, #0xBB8
303A4A:  CMP             R0, R1
303A4C:  BCC             loc_303ACA
303A4E:  MOVW            R1, #0x2AF7
303A52:  CMP             R0, R1
303A54:  BHI             loc_303ACA
303A56:  LDR.W           R0, =(_ZN7CDarkel13pStartMessageE_ptr - 0x303A5E)
303A5A:  ADD             R0, PC; _ZN7CDarkel13pStartMessageE_ptr
303A5C:  B               loc_303AB8
303A5E:  LDR             R0, =(_ZN7CDarkel25bStandardSoundAndMessagesE_ptr - 0x303A64)
303A60:  ADD             R0, PC; _ZN7CDarkel25bStandardSoundAndMessagesE_ptr
303A62:  LDR             R0, [R0]; CDarkel::bStandardSoundAndMessages ...
303A64:  LDRB            R0, [R0]; CDarkel::bStandardSoundAndMessages
303A66:  CMP             R0, #0
303A68:  BEQ.W           loc_303E08
303A6C:  LDR             R0, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303A74)
303A6E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303A76)
303A70:  ADD             R0, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
303A72:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303A74:  LDR             R0, [R0]; CDarkel::TimeOfFrenzyStart ...
303A76:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
303A78:  LDR             R0, [R0]; CDarkel::TimeOfFrenzyStart
303A7A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
303A7C:  SUBS            R0, R1, R0
303A7E:  MOVW            R1, #0x1387
303A82:  CMP             R0, R1
303A84:  BHI.W           loc_303E08
303A88:  LDR             R0, =(TheText_ptr - 0x303A90)
303A8A:  ADR             R1, aKillpa; "KILLPA"
303A8C:  ADD             R0, PC; TheText_ptr
303A8E:  LDR             R0, [R0]; TheText ; this
303A90:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
303A94:  MOVW            R1, #(elf_hash_bucket+0xABC); unsigned __int16 *
303A98:  MOVS            R2, #0; unsigned int
303A9A:  ADD             SP, SP, #0x30 ; '0'
303A9C:  VPOP            {D8-D15}
303AA0:  ADD             SP, SP, #4
303AA2:  POP.W           {R8-R11}
303AA6:  POP.W           {R4-R7,LR}
303AAA:  B.W             j_j__ZN9CMessages13AddBigMessageEPtjt; j_CMessages::AddBigMessage(ushort *,uint,ushort)
303AAE:  LSRS            R0, R0, #6
303AB0:  CMP             R0, #0x7C ; '|'
303AB2:  BHI             loc_303ACA
303AB4:  LDR             R0, =(_ZN7CDarkel13pStartMessageE_ptr - 0x303ABA)
303AB6:  ADD             R0, PC; _ZN7CDarkel13pStartMessageE_ptr
303AB8:  LDR             R0, [R0]; CDarkel::pStartMessage ...
303ABA:  LDR             R0, [R0]; this
303ABC:  CMP             R0, #0
303ABE:  ITTT NE
303AC0:  MOVWNE          R1, #(elf_hash_bucket+0xABC); unsigned __int16 *
303AC4:  MOVNE           R2, #0; unsigned int
303AC6:  BLXNE           j__ZN9CMessages13AddBigMessageEPtjt; CMessages::AddBigMessage(ushort *,uint,ushort)
303ACA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x303AD0)
303ACC:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
303ACE:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
303AD0:  LDR.W           R0, [R0,#(dword_6F3A54 - 0x6F3794)]
303AD4:  CMP             R0, #0
303AD6:  BEQ.W           loc_303E08
303ADA:  LDR             R1, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x303AE0)
303ADC:  ADD             R1, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
303ADE:  LDR             R1, [R1]; CHud::bDrawingVitalStats ...
303AE0:  LDRB            R1, [R1]; CHud::bDrawingVitalStats
303AE2:  CMP             R1, #0
303AE4:  BNE.W           loc_303E08
303AE8:  LDR             R1, =(_ZN7CDarkel9TimeLimitE_ptr - 0x303AEE)
303AEA:  ADD             R1, PC; _ZN7CDarkel9TimeLimitE_ptr
303AEC:  LDR             R1, [R1]; CDarkel::TimeLimit ...
303AEE:  LDR             R1, [R1]; CDarkel::TimeLimit
303AF0:  CMP             R1, #1
303AF2:  BLT.W           loc_303E08
303AF6:  VLDR            S0, [R0,#0x24]
303AFA:  VMOV.F32        S2, #-2.0
303AFE:  VLDR            S16, [R0,#0x2C]
303B02:  VMOV.F32        S4, #3.0
303B06:  ADD.W           R9, SP, #0x90+var_74
303B0A:  VLDR            S24, [R0,#0x20]
303B0E:  VSUB.F32        S0, S0, S16
303B12:  VLDR            S20, [R0,#0x28]
303B16:  MOV.W           R11, #0x80
303B1A:  MOV             R0, R9; this
303B1C:  MOVS            R1, #0; unsigned __int8
303B1E:  MOVS            R2, #0; unsigned __int8
303B20:  MOVS            R3, #0; unsigned __int8
303B22:  VSTR            S16, [SP,#0x90+var_64]
303B26:  VSTR            S24, [SP,#0x90+var_70]
303B2A:  VSTR            S20, [SP,#0x90+var_68]
303B2E:  VABS.F32        S0, S0
303B32:  VADD.F32        S0, S0, S2
303B36:  VDIV.F32        S18, S0, S4
303B3A:  VADD.F32        S26, S16, S18
303B3E:  VSTR            S26, [SP,#0x90+var_6C]
303B42:  STR.W           R11, [SP,#0x90+var_90]; unsigned __int8
303B46:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303B4A:  ADD             R5, SP, #0x90+var_78
303B4C:  MOVS            R1, #0; unsigned __int8
303B4E:  MOVS            R2, #0; unsigned __int8
303B50:  MOVS            R3, #0; unsigned __int8
303B52:  MOV             R0, R5; this
303B54:  STR.W           R11, [SP,#0x90+var_90]; unsigned __int8
303B58:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303B5C:  ADD             R6, SP, #0x90+var_7C
303B5E:  MOV.W           R10, #0xFF
303B62:  MOVS            R1, #0; unsigned __int8
303B64:  MOVS            R2, #0; unsigned __int8
303B66:  MOV             R0, R6; this
303B68:  MOVS            R3, #0; unsigned __int8
303B6A:  STR.W           R10, [SP,#0x90+var_90]; unsigned __int8
303B6E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303B72:  ADD             R4, SP, #0x90+var_80
303B74:  MOVS            R1, #0; unsigned __int8
303B76:  MOVS            R2, #0; unsigned __int8
303B78:  MOVS            R3, #0; unsigned __int8
303B7A:  MOV             R0, R4; this
303B7C:  STR.W           R10, [SP,#0x90+var_90]; unsigned __int8
303B80:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303B84:  ADD.W           R8, SP, #0x90+var_70
303B88:  MOV             R1, R9
303B8A:  MOV             R2, R5
303B8C:  MOV             R3, R6
303B8E:  MOV             R0, R8
303B90:  STR             R4, [SP,#0x90+var_90]
303B92:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
303B96:  VADD.F32        S0, S18, S18
303B9A:  ADD.W           R9, SP, #0x90+var_74
303B9E:  VMOV.F32        S22, #1.0
303BA2:  MOVS            R1, #0; unsigned __int8
303BA4:  MOV             R0, R9; this
303BA6:  MOVS            R2, #0; unsigned __int8
303BA8:  MOVS            R3, #0; unsigned __int8
303BAA:  VADD.F32        S0, S16, S0
303BAE:  VADD.F32        S2, S26, S22
303BB2:  VADD.F32        S0, S0, S22
303BB6:  VSTR            S0, [SP,#0x90+var_6C]
303BBA:  VSTR            S24, [SP,#0x90+var_70]
303BBE:  VSTR            S20, [SP,#0x90+var_68]
303BC2:  VSTR            S2, [SP,#0x90+var_64]
303BC6:  STR.W           R11, [SP,#0x90+var_90]; unsigned __int8
303BCA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303BCE:  ADD             R5, SP, #0x90+var_78
303BD0:  MOVS            R1, #0; unsigned __int8
303BD2:  MOVS            R2, #0; unsigned __int8
303BD4:  MOVS            R3, #0; unsigned __int8
303BD6:  MOV             R0, R5; this
303BD8:  STR.W           R11, [SP,#0x90+var_90]; unsigned __int8
303BDC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303BE0:  ADD             R6, SP, #0x90+var_7C
303BE2:  MOVS            R1, #0; unsigned __int8
303BE4:  MOVS            R2, #0; unsigned __int8
303BE6:  MOVS            R3, #0; unsigned __int8
303BE8:  MOV             R0, R6; this
303BEA:  STR.W           R10, [SP,#0x90+var_90]; unsigned __int8
303BEE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303BF2:  MOV             R0, R4; this
303BF4:  MOVS            R1, #0; unsigned __int8
303BF6:  MOVS            R2, #0; unsigned __int8
303BF8:  MOVS            R3, #0; unsigned __int8
303BFA:  STR.W           R10, [SP,#0x90+var_90]; unsigned __int8
303BFE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303C02:  MOV             R0, R8
303C04:  MOV             R1, R9
303C06:  MOV             R2, R5
303C08:  MOV             R3, R6
303C0A:  STR             R4, [SP,#0x90+var_90]
303C0C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
303C10:  MOVS            R0, #0; this
303C12:  MOVS            R1, #0; unsigned __int8
303C14:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
303C18:  MOVS            R0, #(stderr+1); this
303C1A:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
303C1E:  MOVS            R0, #(stderr+2); this
303C20:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
303C24:  MOVS            R0, #0; this
303C26:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
303C2A:  MOVS            R0, #0; this
303C2C:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
303C30:  LDR             R0, =(RsGlobal_ptr - 0x303C36)
303C32:  ADD             R0, PC; RsGlobal_ptr
303C34:  LDR             R0, [R0]; RsGlobal
303C36:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
303C38:  VMOV            S0, R0
303C3C:  VCVT.F32.S32    S0, S0
303C40:  VMOV            R0, S0; this
303C44:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
303C48:  ADD             R0, SP, #0x90+var_84; this
303C4A:  MOVS            R1, #0; unsigned __int8
303C4C:  MOVS            R2, #0; unsigned __int8
303C4E:  MOVS            R3, #0; unsigned __int8
303C50:  STR.W           R10, [SP,#0x90+var_90]; unsigned __int8
303C54:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
303C58:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
303C5C:  LDR             R0, =(HudColour_ptr - 0x303C66)
303C5E:  ADD             R4, SP, #0x90+var_88
303C60:  MOVS            R2, #5
303C62:  ADD             R0, PC; HudColour_ptr
303C64:  LDR             R1, [R0]; HudColour ; unsigned __int8
303C66:  MOV             R0, R4; this
303C68:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
303C6C:  MOV             R0, R4
303C6E:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
303C72:  VLDR            S0, =0.0325
303C76:  VMUL.F32        S0, S18, S0
303C7A:  VMOV            R0, S0; this
303C7E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
303C82:  MOVS            R0, #(stderr+1); this
303C84:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
303C88:  VSUB.F32        S0, S20, S24
303C8C:  MOVS            R0, #0; this
303C8E:  VMOV.F32        S26, #0.5
303C92:  VABS.F32        S30, S0
303C96:  VMUL.F32        S28, S18, S26
303C9A:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
303C9E:  VLDR            S0, =0.03
303CA2:  VMOV            S2, R0
303CA6:  LDR             R0, =(TheText_ptr - 0x303CBA)
303CA8:  VADD.F32        S17, S16, S28
303CAC:  VMUL.F32        S30, S30, S0
303CB0:  ADR             R1, aRacTim_0; "RAC_TIM"
303CB2:  VMUL.F32        S0, S2, S26
303CB6:  ADD             R0, PC; TheText_ptr
303CB8:  LDR             R0, [R0]; TheText ; this
303CBA:  VADD.F32        S24, S24, S30
303CBE:  VSUB.F32        S19, S17, S0
303CC2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
303CC6:  VMOV            R4, S24
303CCA:  MOV             R2, R0; CFont *
303CCC:  VMOV            R1, S19; float
303CD0:  MOV             R0, R4; this
303CD2:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
303CD6:  MOVS            R0, #(stderr+2); this
303CD8:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
303CDC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x303CE6)
303CDE:  LDR             R1, =(_ZN7CDarkel17TimeOfFrenzyStartE_ptr - 0x303CE8)
303CE0:  LDR             R2, =(_ZN7CDarkel9TimeLimitE_ptr - 0x303CEA)
303CE2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
303CE4:  ADD             R1, PC; _ZN7CDarkel17TimeOfFrenzyStartE_ptr
303CE6:  ADD             R2, PC; _ZN7CDarkel9TimeLimitE_ptr
303CE8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
303CEA:  LDR             R1, [R1]; CDarkel::TimeOfFrenzyStart ...
303CEC:  LDR             R2, [R2]; CDarkel::TimeLimit ...
303CEE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
303CF0:  LDR             R1, [R1]; CDarkel::TimeOfFrenzyStart
303CF2:  LDR             R2, [R2]; CDarkel::TimeLimit
303CF4:  SUBS            R0, R1, R0
303CF6:  ADDS            R6, R0, R2
303CF8:  MOV             R0, #0x45E7B273
303D00:  UMULL.W         R0, R1, R6, R0
303D04:  MOVW            R0, #0xEA60
303D08:  LSRS            R2, R1, #0xE
303D0A:  MOVW            R1, #0x4DD3
303D0E:  MLS.W           R0, R2, R0, R6
303D12:  MOVT            R1, #0x1062
303D16:  UMULL.W         R0, R1, R0, R1
303D1A:  LDR             R0, =(gString_ptr - 0x303D20)
303D1C:  ADD             R0, PC; gString_ptr
303D1E:  LDR             R5, [R0]; gString
303D20:  LSRS            R3, R1, #6
303D22:  ADR             R1, aD02d; "%d:%02d"
303D24:  MOV             R0, R5
303D26:  BL              sub_5E6BC0
303D2A:  LDR             R0, =(gGxtString_ptr - 0x303D30)
303D2C:  ADD             R0, PC; gGxtString_ptr
303D2E:  LDR             R1, [R0]; gGxtString ; unsigned __int16 *
303D30:  MOV             R0, R5; char *
303D32:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
303D36:  CMP.W           R6, #0xFA0
303D3A:  BHI             loc_303D4E
303D3C:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x303D42)
303D3E:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
303D40:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
303D42:  LDRB            R0, [R0]; CTimer::m_FrameCounter
303D44:  LSLS            R0, R0, #0x1F
303D46:  BNE             loc_303D4E
303D48:  VSUB.F32        S20, S20, S30
303D4C:  B               loc_303D7A
303D4E:  MOVS            R0, #0; this
303D50:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
303D54:  VMOV.F32        S0, #-0.5
303D58:  LDR             R2, =(gGxtString_ptr - 0x303D66)
303D5A:  VMOV            S2, R0
303D5E:  VSUB.F32        S20, S20, S30
303D62:  ADD             R2, PC; gGxtString_ptr
303D64:  LDR             R2, [R2]; gGxtString ; CFont *
303D66:  VMUL.F32        S0, S2, S0
303D6A:  VMOV            R0, S20; this
303D6E:  VADD.F32        S0, S17, S0
303D72:  VMOV            R1, S0; float
303D76:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
303D7A:  MOVS            R0, #(stderr+1); this
303D7C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
303D80:  VADD.F32        S0, S18, S22
303D84:  MOVS            R0, #0; this
303D86:  MOVS            R5, #0
303D88:  VADD.F32        S16, S16, S0
303D8C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
303D90:  VMOV            S0, R0
303D94:  LDR             R0, =(TheText_ptr - 0x303DA4)
303D96:  VADD.F32        S16, S28, S16
303D9A:  ADR             R1, aCoopkil; "COOPKIL"
303D9C:  VMUL.F32        S0, S0, S26
303DA0:  ADD             R0, PC; TheText_ptr
303DA2:  LDR             R0, [R0]; TheText ; this
303DA4:  VSUB.F32        S18, S16, S0
303DA8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
303DAC:  VMOV            R1, S18; float
303DB0:  MOV             R2, R0; CFont *
303DB2:  MOV             R0, R4; this
303DB4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
303DB8:  MOVS            R0, #(stderr+2); this
303DBA:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
303DBE:  LDR             R0, =(_ZN7CDarkel11KillsNeededE_ptr - 0x303DC6)
303DC0:  LDR             R1, =(gString_ptr - 0x303DC8)
303DC2:  ADD             R0, PC; _ZN7CDarkel11KillsNeededE_ptr
303DC4:  ADD             R1, PC; gString_ptr
303DC6:  LDR             R0, [R0]; CDarkel::KillsNeeded ...
303DC8:  LDR             R4, [R1]; gString
303DCA:  ADR             R1, dword_303EA8
303DCC:  LDR             R2, [R0]; CDarkel::KillsNeeded
303DCE:  MOV             R0, R4
303DD0:  CMP             R2, #0
303DD2:  IT LE
303DD4:  MOVLE           R2, R5
303DD6:  BL              sub_5E6BC0
303DDA:  LDR             R0, =(gGxtString_ptr - 0x303DE0)
303DDC:  ADD             R0, PC; gGxtString_ptr
303DDE:  LDR             R5, [R0]; gGxtString
303DE0:  MOV             R0, R4; char *
303DE2:  MOV             R1, R5; unsigned __int16 *
303DE4:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
303DE8:  MOVS            R0, #0; this
303DEA:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
303DEE:  VMOV            S0, R0
303DF2:  MOV             R2, R5; CFont *
303DF4:  VMOV            R0, S20; this
303DF8:  VMUL.F32        S0, S0, S26
303DFC:  VSUB.F32        S0, S16, S0
303E00:  VMOV            R1, S0; float
303E04:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
303E08:  ADD             SP, SP, #0x30 ; '0'
303E0A:  VPOP            {D8-D15}
303E0E:  ADD             SP, SP, #4
303E10:  POP.W           {R8-R11}
303E14:  POP             {R4-R7,PC}
