; =========================================================
; Game Engine Function: _ZN4CHud17DrawOddJobMessageEh
; Address            : 0x4399E4 - 0x43A03E
; =========================================================

4399E4:  PUSH            {R4-R7,LR}
4399E6:  ADD             R7, SP, #0xC
4399E8:  PUSH.W          {R11}
4399EC:  VPUSH           {D8}
4399F0:  SUB             SP, SP, #0x30
4399F2:  MOV             R4, R0
4399F4:  LDR.W           R0, =(_ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr - 0x4399FC)
4399F8:  ADD             R0, PC; _ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr
4399FA:  LDR             R0, [R0]; CTheScripts::bDrawOddJobTitleBeforeFade ...
4399FC:  LDRB            R0, [R0]; CTheScripts::bDrawOddJobTitleBeforeFade
4399FE:  CMP             R0, R4
439A00:  BNE.W           loc_439B24
439A04:  LDR.W           R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x439A0C)
439A08:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
439A0A:  LDR             R0, [R0]; CHud::m_BigMessage ...
439A0C:  LDRH.W          R1, [R0,#(word_99106C - 0x990F6C)]
439A10:  CMP             R1, #0
439A12:  BNE.W           loc_439B24
439A16:  LDRH.W          R0, [R0,#(word_99136C - 0x990F6C)]
439A1A:  CMP             R0, #0
439A1C:  BEQ.W           loc_439B24
439A20:  MOVS            R0, #0; this
439A22:  MOVS            R1, #0; unsigned __int8
439A24:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
439A28:  MOVS            R0, #0; this
439A2A:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
439A2E:  LDR.W           R0, =(RsGlobal_ptr - 0x439A3A)
439A32:  VLDR            S16, =448.0
439A36:  ADD             R0, PC; RsGlobal_ptr
439A38:  VLDR            S2, =1.35
439A3C:  LDR             R6, [R0]; RsGlobal
439A3E:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
439A40:  VMOV            S0, R0
439A44:  VCVT.F32.S32    S0, S0
439A48:  VDIV.F32        S0, S0, S16
439A4C:  VMUL.F32        S0, S0, S2
439A50:  VMOV            R0, S0; this
439A54:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439A58:  MOVS            R0, #0; this
439A5A:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
439A5E:  MOVS            R0, #(stderr+1); this
439A60:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
439A64:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
439A66:  VLDR            S2, =640.0
439A6A:  VMOV            S0, R0
439A6E:  VCVT.F32.S32    S0, S0
439A72:  VDIV.F32        S0, S0, S2
439A76:  VLDR            S2, =350.0
439A7A:  VMUL.F32        S0, S0, S2
439A7E:  VMOV            R0, S0; this
439A82:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
439A86:  MOVS            R0, #(stderr+2); this
439A88:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
439A8C:  MOVS            R0, #(stderr+2); this
439A8E:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
439A92:  MOVS            R0, #0xFF
439A94:  MOVS            R1, #0; unsigned __int8
439A96:  STR             R0, [SP,#0x48+var_48]; unsigned __int8
439A98:  ADD             R0, SP, #0x48+var_1C; this
439A9A:  MOVS            R2, #0; unsigned __int8
439A9C:  MOVS            R3, #0; unsigned __int8
439A9E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
439AA2:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
439AA6:  LDR.W           R0, =(HudColour_ptr - 0x439AB2)
439AAA:  ADD             R5, SP, #0x48+var_20
439AAC:  MOVS            R2, #7
439AAE:  ADD             R0, PC; HudColour_ptr
439AB0:  LDR             R1, [R0]; HudColour ; unsigned __int8
439AB2:  MOV             R0, R5; this
439AB4:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
439AB8:  MOV             R0, R5
439ABA:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
439ABE:  VLDR            S0, [R6,#8]
439AC2:  VLDR            S2, =140.0
439AC6:  VCVT.F32.S32    S0, S0
439ACA:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
439ACC:  LDR.W           R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x439AD8)
439AD0:  ADD.W           R0, R0, R0,LSR#31
439AD4:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
439AD6:  ASRS            R0, R0, #1
439AD8:  LDR             R2, [R2]; CHud::m_BigMessage ...
439ADA:  VMOV            S4, R0
439ADE:  VDIV.F32        S0, S0, S16
439AE2:  ADD.W           R2, R2, #0x400; float
439AE6:  VCVT.F32.S32    S4, S4
439AEA:  VMUL.F32        S0, S0, S2
439AEE:  VMOV            R0, S4; this
439AF2:  VMOV            R1, S0; float
439AF6:  BLX             j__ZN5CFont21PrintStringFromBottomEffPt; CFont::PrintStringFromBottom(float,float,ushort *)
439AFA:  B               loc_439B24
439AFC:  DCFS 448.0
439B00:  DCFS 1.35
439B04:  DCFS 640.0
439B08:  DCFS 350.0
439B0C:  DCFS 140.0
439B10:  DCFS 1.8
439B14:  DCFS 500.0
439B18:  DCFS 60.0
439B1C:  DCFS 0.0
439B20:  DCFS 0.025; unsigned __int8
439B24:  CMP             R4, #0
439B26:  BEQ.W           loc_43A032
439B2A:  LDR.W           R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x439B32)
439B2E:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
439B30:  LDR             R0, [R0]; CHud::m_BigMessage ...
439B32:  LDRH.W          R0, [R0,#(word_99156C - 0x990F6C)]
439B36:  CMP             R0, #0
439B38:  BEQ             loc_439C14
439B3A:  MOVS            R0, #0; this
439B3C:  MOVS            R1, #0; unsigned __int8
439B3E:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
439B42:  MOVS            R0, #0; this
439B44:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
439B48:  LDR.W           R0, =(RsGlobal_ptr - 0x439B54)
439B4C:  VLDR            S16, =448.0
439B50:  ADD             R0, PC; RsGlobal_ptr
439B52:  VLDR            S2, =1.8
439B56:  LDR             R5, [R0]; RsGlobal
439B58:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
439B5A:  VMOV            S0, R0
439B5E:  VCVT.F32.S32    S0, S0
439B62:  VDIV.F32        S0, S0, S16
439B66:  VMUL.F32        S0, S0, S2
439B6A:  VMOV            R0, S0; this
439B6E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439B72:  MOVS            R0, #0; this
439B74:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
439B78:  MOVS            R0, #(stderr+1); this
439B7A:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
439B7E:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439B80:  VLDR            S2, =640.0
439B84:  VMOV            S0, R0
439B88:  VCVT.F32.S32    S0, S0
439B8C:  VDIV.F32        S0, S0, S2
439B90:  VLDR            S2, =500.0
439B94:  VMUL.F32        S0, S0, S2
439B98:  VMOV            R0, S0; this
439B9C:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
439BA0:  MOVS            R0, #(stderr+3); this
439BA2:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
439BA6:  MOVS            R0, #(stderr+2); this
439BA8:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
439BAC:  MOVS            R0, #0xFF
439BAE:  MOVS            R1, #0; unsigned __int8
439BB0:  STR             R0, [SP,#0x48+var_48]; unsigned __int8
439BB2:  ADD             R0, SP, #0x48+var_24; this
439BB4:  MOVS            R2, #0; unsigned __int8
439BB6:  MOVS            R3, #0; unsigned __int8
439BB8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
439BBC:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
439BC0:  LDR.W           R0, =(HudColour_ptr - 0x439BCC)
439BC4:  ADD             R4, SP, #0x48+var_28
439BC6:  MOVS            R2, #3
439BC8:  ADD             R0, PC; HudColour_ptr
439BCA:  LDR             R1, [R0]; HudColour ; unsigned __int8
439BCC:  MOV             R0, R4; this
439BCE:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
439BD2:  MOV             R0, R4
439BD4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
439BD8:  VLDR            S0, [R5,#8]
439BDC:  VLDR            S2, =60.0
439BE0:  VCVT.F32.S32    S0, S0
439BE4:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439BE6:  LDR.W           R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x439BF2)
439BEA:  ADD.W           R0, R0, R0,LSR#31
439BEE:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
439BF0:  ASRS            R0, R0, #1
439BF2:  LDR             R2, [R2]; CHud::m_BigMessage ...
439BF4:  VMOV            S4, R0
439BF8:  VDIV.F32        S0, S0, S16
439BFC:  ADD.W           R2, R2, #0x600; CFont *
439C00:  VCVT.F32.S32    S4, S4
439C04:  VMUL.F32        S0, S0, S2
439C08:  VMOV            R0, S4; this
439C0C:  VMOV            R1, S0; float
439C10:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
439C14:  LDR.W           R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x439C1C)
439C18:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
439C1A:  LDR             R0, [R0]; CHud::m_BigMessage ...
439C1C:  LDRH.W          R0, [R0,#(word_99166C - 0x990F6C)]
439C20:  CMP             R0, #0
439C22:  BEQ             loc_439D06
439C24:  MOVS            R0, #0; this
439C26:  MOVS            R1, #0; unsigned __int8
439C28:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
439C2C:  MOVS            R0, #(stderr+1); this
439C2E:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
439C32:  LDR.W           R0, =(RsGlobal_ptr - 0x439C3E)
439C36:  VLDR            S2, =448.0
439C3A:  ADD             R0, PC; RsGlobal_ptr
439C3C:  LDR             R5, [R0]; RsGlobal
439C3E:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
439C40:  VMOV            S0, R0
439C44:  VCVT.F32.S32    S0, S0
439C48:  VDIV.F32        S0, S0, S2
439C4C:  VLDR            S2, =1.8
439C50:  VMUL.F32        S0, S0, S2
439C54:  VMOV            R0, S0; this
439C58:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439C5C:  MOVS            R0, #0; this
439C5E:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
439C62:  MOVS            R0, #(stderr+1); this
439C64:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
439C68:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439C6A:  VLDR            S2, =640.0
439C6E:  VMOV            S0, R0
439C72:  VCVT.F32.S32    S0, S0
439C76:  VDIV.F32        S0, S0, S2
439C7A:  VLDR            S2, =500.0
439C7E:  VMUL.F32        S0, S0, S2
439C82:  VMOV            R0, S0; this
439C86:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
439C8A:  MOVS            R0, #(stderr+3); this
439C8C:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
439C90:  MOVS            R0, #0; this
439C92:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
439C96:  MOVS            R0, #0xFF
439C98:  MOVS            R1, #0; unsigned __int8
439C9A:  STR             R0, [SP,#0x48+var_48]; unsigned __int8
439C9C:  ADD             R0, SP, #0x48+var_2C; this
439C9E:  MOVS            R2, #0; unsigned __int8
439CA0:  MOVS            R3, #0; unsigned __int8
439CA2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
439CA6:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
439CAA:  LDR.W           R0, =(HudColour_ptr - 0x439CB6)
439CAE:  ADD             R4, SP, #0x48+var_30
439CB0:  MOVS            R2, #3
439CB2:  ADD             R0, PC; HudColour_ptr
439CB4:  LDR             R1, [R0]; HudColour ; unsigned __int8
439CB6:  MOV             R0, R4; this
439CB8:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
439CBC:  MOV             R0, R4
439CBE:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
439CC2:  VLDR            S0, [R5,#8]
439CC6:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439CC8:  VCVT.F32.S32    S0, S0
439CCC:  VLDR            S4, =0.0
439CD0:  VLDR            S6, =0.025
439CD4:  ADD.W           R0, R0, R0,LSR#31
439CD8:  LDR.W           R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x439CE2)
439CDC:  ASRS            R0, R0, #1
439CDE:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
439CE0:  VMOV            S2, R0
439CE4:  LDR             R2, [R2]; CHud::m_BigMessage ...
439CE6:  VMUL.F32        S4, S0, S4
439CEA:  VMUL.F32        S0, S0, S6
439CEE:  ADD.W           R2, R2, #0x700; CFont *
439CF2:  VCVT.F32.S32    S2, S2
439CF6:  VMAX.F32        D0, D0, D2
439CFA:  VMOV            R0, S2; this
439CFE:  VMOV            R1, S0; float
439D02:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
439D06:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x439D0C)
439D08:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
439D0A:  LDR             R0, [R0]; CHud::m_BigMessage ...
439D0C:  LDRH.W          R0, [R0,#(word_99126C - 0x990F6C)]
439D10:  CMP             R0, #0
439D12:  BEQ             loc_439DE8
439D14:  MOVS            R0, #0; this
439D16:  MOVS            R1, #0; unsigned __int8
439D18:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
439D1C:  MOVS            R0, #0; this
439D1E:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
439D22:  LDR             R0, =(RsGlobal_ptr - 0x439D2C)
439D24:  VLDR            S16, =448.0
439D28:  ADD             R0, PC; RsGlobal_ptr
439D2A:  VLDR            S2, =1.35
439D2E:  LDR             R5, [R0]; RsGlobal
439D30:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
439D32:  VMOV            S0, R0
439D36:  VCVT.F32.S32    S0, S0
439D3A:  VDIV.F32        S0, S0, S16
439D3E:  VMUL.F32        S0, S0, S2
439D42:  VMOV            R0, S0; this
439D46:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439D4A:  MOVS            R0, #0; this
439D4C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
439D50:  MOVS            R0, #(stderr+1); this
439D52:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
439D56:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439D58:  VLDR            S2, =640.0
439D5C:  VMOV            S0, R0
439D60:  VCVT.F32.S32    S0, S0
439D64:  VDIV.F32        S0, S0, S2
439D68:  VLDR            S2, =500.0
439D6C:  VMUL.F32        S0, S0, S2
439D70:  VMOV            R0, S0; this
439D74:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
439D78:  MOVS            R0, #(stderr+2); this
439D7A:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
439D7E:  MOVS            R0, #(stderr+2); this
439D80:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
439D84:  MOVS            R0, #0xFF
439D86:  MOVS            R1, #0; unsigned __int8
439D88:  STR             R0, [SP,#0x48+var_48]; unsigned __int8
439D8A:  ADD             R0, SP, #0x48+var_34; this
439D8C:  MOVS            R2, #0; unsigned __int8
439D8E:  MOVS            R3, #0; unsigned __int8
439D90:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
439D94:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
439D98:  LDR             R0, =(HudColour_ptr - 0x439DA2)
439D9A:  ADD             R4, SP, #0x48+var_38
439D9C:  MOVS            R2, #7
439D9E:  ADD             R0, PC; HudColour_ptr
439DA0:  LDR             R1, [R0]; HudColour ; unsigned __int8
439DA2:  MOV             R0, R4; this
439DA4:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
439DA8:  MOV             R0, R4
439DAA:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
439DAE:  VLDR            S0, [R5,#8]
439DB2:  VLDR            S2, =155.0
439DB6:  VCVT.F32.S32    S0, S0
439DBA:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439DBC:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x439DC6)
439DBE:  ADD.W           R0, R0, R0,LSR#31
439DC2:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
439DC4:  ASRS            R0, R0, #1
439DC6:  LDR             R2, [R2]; CHud::m_BigMessage ...
439DC8:  VMOV            S4, R0
439DCC:  VDIV.F32        S0, S0, S16
439DD0:  ADD.W           R2, R2, #0x300; CFont *
439DD4:  VCVT.F32.S32    S4, S4
439DD8:  VMUL.F32        S0, S0, S2
439DDC:  VMOV            R0, S4; this
439DE0:  VMOV            R1, S0; float
439DE4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
439DE8:  LDR             R0, =(OddJob2OffTimer_ptr - 0x439DEE)
439DEA:  ADD             R0, PC; OddJob2OffTimer_ptr
439DEC:  LDR             R0, [R0]; OddJob2OffTimer
439DEE:  VLDR            S0, [R0]
439DF2:  VCMPE.F32       S0, #0.0
439DF6:  VMRS            APSR_nzcv, FPSCR
439DFA:  BLE             loc_439E2C
439DFC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x439E06)
439DFE:  VLDR            S2, =50.0
439E02:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
439E04:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
439E06:  VLDR            S4, [R0]
439E0A:  LDR             R0, =(OddJob2OffTimer_ptr - 0x439E14)
439E0C:  VDIV.F32        S2, S4, S2
439E10:  ADD             R0, PC; OddJob2OffTimer_ptr
439E12:  LDR             R0, [R0]; OddJob2OffTimer
439E14:  VLDR            S4, =1000.0
439E18:  VMUL.F32        S2, S2, S4
439E1C:  VCVT.U32.F32    S2, S2
439E20:  VCVT.F32.U32    S2, S2
439E24:  VSUB.F32        S0, S0, S2
439E28:  VSTR            S0, [R0]
439E2C:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x439E32)
439E2E:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
439E30:  LDR             R0, [R0]; CHud::m_BigMessage ...
439E32:  LDRH.W          R0, [R0,#(word_99146C - 0x990F6C)]
439E36:  CMP             R0, #0
439E38:  BEQ.W           loc_43A032
439E3C:  VCMPE.F32       S0, #0.0
439E40:  VMRS            APSR_nzcv, FPSCR
439E44:  BGT.W           loc_43A032
439E48:  LDR             R0, =(OddJob2On_ptr - 0x439E4E)
439E4A:  ADD             R0, PC; OddJob2On_ptr
439E4C:  LDR             R0, [R0]; OddJob2On
439E4E:  LDRSH.W         R0, [R0]
439E52:  CMP             R0, #3; switch 4 cases
439E54:  BHI.W           def_439E58; jumptable 00439E58 default case
439E58:  TBB.W           [PC,R0]; switch jump
439E5C:  DCB 2; jump table for switch statement
439E5D:  DCB 0xF
439E5E:  DCB 0x2B
439E5F:  DCB 0x4E
439E60:  LDR             R0, =(OddJob2On_ptr - 0x439E6A); jumptable 00439E58 case 0
439E62:  MOVS            R2, #1
439E64:  LDR             R1, =(OddJob2XOffset_ptr - 0x439E6C)
439E66:  ADD             R0, PC; OddJob2On_ptr
439E68:  ADD             R1, PC; OddJob2XOffset_ptr
439E6A:  LDR             R0, [R0]; OddJob2On
439E6C:  LDR             R1, [R1]; OddJob2XOffset
439E6E:  STRH            R2, [R0]
439E70:  MOVS            R0, #0x43BE0000
439E76:  STR             R0, [R1]
439E78:  B               def_439E58; jumptable 00439E58 default case
439E7A:  LDR             R0, =(OddJob2XOffset_ptr - 0x439E84); jumptable 00439E58 case 1
439E7C:  VMOV.F32        S2, #2.0
439E80:  ADD             R0, PC; OddJob2XOffset_ptr
439E82:  LDR             R0, [R0]; OddJob2XOffset
439E84:  VLDR            S0, [R0]
439E88:  VCMPE.F32       S0, S2
439E8C:  VMRS            APSR_nzcv, FPSCR
439E90:  BLE             loc_439F42
439E92:  VMOV.F32        S2, #6.0
439E96:  VLDR            S4, =40.0
439E9A:  LDR             R0, =(OddJob2XOffset_ptr - 0x439EA0)
439E9C:  ADD             R0, PC; OddJob2XOffset_ptr
439E9E:  LDR             R0, [R0]; OddJob2XOffset
439EA0:  VDIV.F32        S2, S0, S2
439EA4:  VMIN.F32        D1, D1, D2
439EA8:  VSUB.F32        S0, S0, S2
439EAC:  VSTR            S0, [R0]
439EB0:  B               def_439E58; jumptable 00439E58 default case
439EB2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x439EBC); jumptable 00439E58 case 2
439EB4:  VLDR            S0, =50.0
439EB8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
439EBA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
439EBC:  VLDR            S2, [R0]
439EC0:  LDR             R0, =(OddJob2Timer_ptr - 0x439ECA)
439EC2:  VDIV.F32        S0, S2, S0
439EC6:  ADD             R0, PC; OddJob2Timer_ptr
439EC8:  LDR             R0, [R0]; OddJob2Timer
439ECA:  LDRH            R1, [R0]
439ECC:  VLDR            S2, =1000.0
439ED0:  VMUL.F32        S0, S0, S2
439ED4:  VCVT.U32.F32    S0, S0
439ED8:  VMOV            R2, S0
439EDC:  ADD             R1, R2
439EDE:  STRH            R1, [R0]
439EE0:  LSLS            R0, R1, #0x10
439EE2:  MOVS            R1, #0x5DC0001
439EE8:  CMP             R0, R1
439EEA:  BLT             def_439E58; jumptable 00439E58 default case
439EEC:  LDR             R0, =(OddJob2On_ptr - 0x439EF4)
439EEE:  MOVS            R1, #3
439EF0:  ADD             R0, PC; OddJob2On_ptr
439EF2:  LDR             R0, [R0]; OddJob2On
439EF4:  STRH            R1, [R0]
439EF6:  B               def_439E58; jumptable 00439E58 default case
439EF8:  LDR             R0, =(OddJob2XOffset_ptr - 0x439F06); jumptable 00439E58 case 3
439EFA:  VMOV.F32        S0, #5.0
439EFE:  VMOV.F32        S4, #30.0
439F02:  ADD             R0, PC; OddJob2XOffset_ptr
439F04:  LDR             R0, [R0]; OddJob2XOffset
439F06:  VLDR            S2, [R0]
439F0A:  VDIV.F32        S0, S2, S0
439F0E:  VMAX.F32        D0, D0, D2
439F12:  VSUB.F32        S0, S2, S0
439F16:  VLDR            S2, =-380.0
439F1A:  VCMPE.F32       S0, S2
439F1E:  VSTR            S0, [R0]
439F22:  VMRS            APSR_nzcv, FPSCR
439F26:  BGE             def_439E58; jumptable 00439E58 default case
439F28:  LDR             R0, =(OddJob2OffTimer_ptr - 0x439F38)
439F2A:  MOVW            R2, #0x4000
439F2E:  LDR             R1, =(OddJob2On_ptr - 0x439F3A)
439F30:  MOVT            R2, #0x459C
439F34:  ADD             R0, PC; OddJob2OffTimer_ptr
439F36:  ADD             R1, PC; OddJob2On_ptr
439F38:  LDR             R0, [R0]; OddJob2OffTimer
439F3A:  LDR             R1, [R1]; OddJob2On
439F3C:  STR             R2, [R0]
439F3E:  MOVS            R0, #0
439F40:  B               loc_439F54
439F42:  LDR             R0, =(OddJob2Timer_ptr - 0x439F4C)
439F44:  MOVS            R2, #0; unsigned __int8
439F46:  LDR             R1, =(OddJob2On_ptr - 0x439F4E)
439F48:  ADD             R0, PC; OddJob2Timer_ptr
439F4A:  ADD             R1, PC; OddJob2On_ptr
439F4C:  LDR             R0, [R0]; OddJob2Timer
439F4E:  LDR             R1, [R1]; OddJob2On
439F50:  STRH            R2, [R0]
439F52:  MOVS            R0, #2
439F54:  STRH            R0, [R1]
439F56:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x439F5C); jumptable 00439E58 default case
439F58:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
439F5A:  LDR             R0, [R0]; CHud::m_BigMessage ...
439F5C:  LDRH.W          R0, [R0,#(word_99106C - 0x990F6C)]
439F60:  CMP             R0, #0
439F62:  BNE             loc_43A032
439F64:  MOVS            R0, #0; this
439F66:  MOVS            R1, #0; unsigned __int8
439F68:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
439F6C:  LDR             R0, =(RsGlobal_ptr - 0x439F76)
439F6E:  VLDR            S16, =448.0
439F72:  ADD             R0, PC; RsGlobal_ptr
439F74:  VLDR            S2, =1.35
439F78:  LDR             R5, [R0]; RsGlobal
439F7A:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
439F7C:  VMOV            S0, R0
439F80:  VCVT.F32.S32    S0, S0
439F84:  VDIV.F32        S0, S0, S16
439F88:  VMUL.F32        S0, S0, S2
439F8C:  VMOV            R0, S0; this
439F90:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439F94:  MOVS            R0, #0; this
439F96:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
439F9A:  MOVS            R0, #(stderr+1); this
439F9C:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
439FA0:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439FA2:  VLDR            S2, =640.0
439FA6:  VMOV            S0, R0
439FAA:  VCVT.F32.S32    S0, S0
439FAE:  VDIV.F32        S0, S0, S2
439FB2:  VLDR            S2, =500.0
439FB6:  VMUL.F32        S0, S0, S2
439FBA:  VMOV            R0, S0; this
439FBE:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
439FC2:  MOVS            R0, #(stderr+2); this
439FC4:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
439FC8:  MOVS            R0, #(stderr+2); this
439FCA:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
439FCE:  MOVS            R0, #0xFF
439FD0:  MOVS            R1, #0; unsigned __int8
439FD2:  STR             R0, [SP,#0x48+var_48]; unsigned __int8
439FD4:  ADD             R0, SP, #0x48+var_3C; this
439FD6:  MOVS            R2, #0; unsigned __int8
439FD8:  MOVS            R3, #0; unsigned __int8
439FDA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
439FDE:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
439FE2:  LDR             R0, =(HudColour_ptr - 0x439FEC)
439FE4:  ADD             R4, SP, #0x48+var_40
439FE6:  MOVS            R2, #5
439FE8:  ADD             R0, PC; HudColour_ptr
439FEA:  LDR             R1, [R0]; HudColour ; unsigned __int8
439FEC:  MOV             R0, R4; this
439FEE:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
439FF2:  MOV             R0, R4
439FF4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
439FF8:  VLDR            S0, [R5,#8]
439FFC:  VLDR            S2, =217.0
43A000:  VCVT.F32.S32    S0, S0
43A004:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
43A006:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x43A010)
43A008:  ADD.W           R0, R0, R0,LSR#31
43A00C:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
43A00E:  ASRS            R0, R0, #1
43A010:  LDR             R2, [R2]; CHud::m_BigMessage ...
43A012:  VMOV            S4, R0
43A016:  VDIV.F32        S0, S0, S16
43A01A:  ADD.W           R2, R2, #0x500; CFont *
43A01E:  VCVT.F32.S32    S4, S4
43A022:  VMUL.F32        S0, S0, S2
43A026:  VMOV            R0, S4; this
43A02A:  VMOV            R1, S0; float
43A02E:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
43A032:  ADD             SP, SP, #0x30 ; '0'
43A034:  VPOP            {D8}
43A038:  POP.W           {R11}
43A03C:  POP             {R4-R7,PC}
