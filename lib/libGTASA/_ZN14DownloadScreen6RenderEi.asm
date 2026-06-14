; =========================================================
; Game Engine Function: _ZN14DownloadScreen6RenderEi
; Address            : 0x2A7DA0 - 0x2A801C
; =========================================================

2A7DA0:  PUSH            {R4-R7,LR}
2A7DA2:  ADD             R7, SP, #0xC
2A7DA4:  PUSH.W          {R8-R11}
2A7DA8:  SUB             SP, SP, #0x34
2A7DAA:  MOV             R5, R0
2A7DAC:  LDR             R0, =(IsDownloadBack_ptr - 0x2A7DB6)
2A7DAE:  MOV.W           R11, #1
2A7DB2:  ADD             R0, PC; IsDownloadBack_ptr
2A7DB4:  LDR             R4, [R0]; IsDownloadBack
2A7DB6:  MOV             R0, R5; this
2A7DB8:  STRB.W          R11, [R4]
2A7DBC:  BLX             j__ZN16CharSelectScreen6RenderEi; CharSelectScreen::Render(int)
2A7DC0:  MOVS            R0, #0xFF
2A7DC2:  MOV.W           R9, #0
2A7DC6:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
2A7DC8:  ADD             R0, SP, #0x50+var_24; this
2A7DCA:  MOVS            R1, #0xF0; unsigned __int8
2A7DCC:  MOVS            R2, #0xF0; unsigned __int8
2A7DCE:  MOVS            R3, #0xF0; unsigned __int8
2A7DD0:  STRB.W          R9, [R4]
2A7DD4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A7DD8:  LDR             R0, [R5]
2A7DDA:  LDR             R1, [R0,#0x30]
2A7DDC:  MOV             R0, R5
2A7DDE:  BLX             R1
2A7DE0:  MOV             R8, R0
2A7DE2:  LDR             R0, [R5]
2A7DE4:  LDR             R1, [R0,#0x34]
2A7DE6:  MOV             R0, R5
2A7DE8:  BLX             R1
2A7DEA:  MOV             R6, R0
2A7DEC:  LDR             R0, [R5]
2A7DEE:  LDR             R1, [R0,#0x30]
2A7DF0:  MOV             R0, R5
2A7DF2:  BLX             R1
2A7DF4:  MOV             R4, R0
2A7DF6:  LDR             R0, =(TheText_ptr - 0x2A7DFE)
2A7DF8:  ADR             R1, aFesWp8; "FES_WP8"
2A7DFA:  ADD             R0, PC; TheText_ptr
2A7DFC:  LDR             R0, [R0]; TheText ; this
2A7DFE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A7E02:  VMOV            S0, R6
2A7E06:  MOVW            R10, #0
2A7E0A:  VMOV            S2, R4
2A7E0E:  MOV             R2, R0
2A7E10:  LDR             R0, [SP,#0x50+var_24]
2A7E12:  MOVT            R10, #0x41B8
2A7E16:  VSUB.F32        S0, S0, S2
2A7E1A:  STR             R0, [SP,#0x50+var_20]
2A7E1C:  ADD.W           R0, R10, #0xE80000
2A7E20:  STR             R0, [SP,#0x50+var_40]
2A7E22:  ADD             R0, SP, #0x50+var_20
2A7E24:  STRD.W          R10, R11, [SP,#0x50+var_38]
2A7E28:  STR.W           R9, [SP,#0x50+var_30]
2A7E2C:  MOV             R1, R5
2A7E2E:  STRD.W          R11, R8, [SP,#0x50+var_48]
2A7E32:  MOVS            R3, #0
2A7E34:  STRD.W          R11, R0, [SP,#0x50+var_50]
2A7E38:  ADD             R0, SP, #0x50+var_2C
2A7E3A:  VSTR            S0, [SP,#0x50+var_3C]
2A7E3E:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A7E42:  LDR             R0, [R5]
2A7E44:  LDR             R1, [R0,#0x30]
2A7E46:  MOV             R0, R5
2A7E48:  BLX             R1
2A7E4A:  MOV             R4, R0
2A7E4C:  LDR             R0, [R5]
2A7E4E:  LDR             R1, [R0,#0x34]
2A7E50:  MOV             R0, R5
2A7E52:  BLX             R1
2A7E54:  VLDR            S0, [R5,#0x44]
2A7E58:  MOV             R3, R0; int
2A7E5A:  VLDR            S2, =0.01
2A7E5E:  MOVS            R0, #0xFF
2A7E60:  VCVT.F32.S32    S0, S0
2A7E64:  STR.W           R9, [SP,#0x50+var_48]; int
2A7E68:  STRD.W          R0, R9, [SP,#0x50+var_44]; unsigned __int8
2A7E6C:  MOVS            R0, #0x43A50000
2A7E72:  ADD.W           R2, R10, #0x1DE0000; int
2A7E76:  STR             R0, [SP,#0x50+var_50]; float
2A7E78:  MOV             R0, R5; int
2A7E7A:  MOV             R1, R4; int
2A7E7C:  VMUL.F32        S0, S0, S2
2A7E80:  VSTR            S0, [SP,#0x50+var_4C]
2A7E84:  BLX             j__ZN10MenuScreen10DrawSliderE9CVector2DS0_fbhb; MenuScreen::DrawSlider(CVector2D,CVector2D,float,bool,uchar,bool)
2A7E88:  LDR             R0, =(CurrentDownloadingError_ptr - 0x2A7E8E)
2A7E8A:  ADD             R0, PC; CurrentDownloadingError_ptr
2A7E8C:  LDR             R0, [R0]; CurrentDownloadingError
2A7E8E:  LDR             R6, [R0]
2A7E90:  CMP             R6, #0
2A7E92:  BEQ.W           loc_2A8014
2A7E96:  LDR             R0, [R5,#0x48]
2A7E98:  CMP             R0, #0
2A7E9A:  BNE.W           loc_2A8014
2A7E9E:  MOVS            R0, #1
2A7EA0:  STR             R0, [R5,#0x48]
2A7EA2:  MOVS            R0, #0x54 ; 'T'; unsigned int
2A7EA4:  BLX             _Znwj; operator new(uint)
2A7EA8:  ADR             R1, aFesDle; "FES_DLE"
2A7EAA:  MOVS            R2, #0; bool
2A7EAC:  MOV             R4, R0
2A7EAE:  MOV.W           R8, #0
2A7EB2:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
2A7EB6:  CMP             R6, #4
2A7EB8:  BNE             loc_2A7F66
2A7EBA:  LDR             R0, =(_ZTV11YesNoScreen_ptr - 0x2A7EC6)
2A7EBC:  ADR             R3, aFesR81; "FES_R81"
2A7EBE:  LDR             R1, =(_ZN14DownloadScreen14CancelDownloadEPv_ptr - 0x2A7EC8)
2A7EC0:  LDR             R2, =(_ZN14DownloadScreen13RetryDownloadEPv_ptr - 0x2A7ECC)
2A7EC2:  ADD             R0, PC; _ZTV11YesNoScreen_ptr
2A7EC4:  ADD             R1, PC; _ZN14DownloadScreen14CancelDownloadEPv_ptr
2A7EC6:  STR             R3, [R4,#0x44]
2A7EC8:  ADD             R2, PC; _ZN14DownloadScreen13RetryDownloadEPv_ptr
2A7ECA:  LDR             R0, [R0]; `vtable for'YesNoScreen ...
2A7ECC:  LDR             R1, [R1]; DownloadScreen::CancelDownload(void *)
2A7ECE:  LDR             R2, [R2]; DownloadScreen::RetryDownload(void *)
2A7ED0:  ADDS            R0, #8
2A7ED2:  STRD.W          R2, R5, [R4,#0x48]
2A7ED6:  STR             R1, [R4,#0x50]
2A7ED8:  STR             R0, [R4]
2A7EDA:  BLX             j__Z19CachePlayerControlsv; CachePlayerControls(void)
2A7EDE:  MOVS            R0, #0x10; unsigned int
2A7EE0:  BLX             _Znwj; operator new(uint)
2A7EE4:  MOV             R1, R0; SelectScreen::MenuSelection *
2A7EE6:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x2A7EEE)
2A7EE8:  LDR             R2, =(_ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr - 0x2A7EF2)
2A7EEA:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
2A7EEC:  LDR             R3, =(aFemNo - 0x2A7EF6); "FEM_NO"
2A7EEE:  ADD             R2, PC; _ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr
2A7EF0:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
2A7EF2:  ADD             R3, PC; "FEM_NO"
2A7EF4:  LDR             R2, [R2]; YesNoScreen::NoFunc(SelectScreen *,int)
2A7EF6:  ADD.W           R5, R0, #8
2A7EFA:  MOV             R0, R4; this
2A7EFC:  STRD.W          R5, R3, [R1]
2A7F00:  STRD.W          R2, R8, [R1,#8]
2A7F04:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A7F08:  MOVS            R0, #0x10; unsigned int
2A7F0A:  BLX             _Znwj; operator new(uint)
2A7F0E:  MOV             R1, R0; SelectScreen::MenuSelection *
2A7F10:  LDR             R0, =(_ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr - 0x2A7F18)
2A7F12:  LDR             R2, =(aFemYes - 0x2A7F1A); "FEM_YES"
2A7F14:  ADD             R0, PC; _ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr
2A7F16:  ADD             R2, PC; "FEM_YES"
2A7F18:  LDR             R0, [R0]; YesNoScreen::YesFunc(SelectScreen *,int)
2A7F1A:  STRD.W          R5, R2, [R1]
2A7F1E:  STRD.W          R0, R8, [R1,#8]
2A7F22:  MOV             R0, R4; this
2A7F24:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A7F28:  LDR             R0, =(gMobileMenu_ptr - 0x2A7F2E)
2A7F2A:  ADD             R0, PC; gMobileMenu_ptr
2A7F2C:  LDR             R0, [R0]; gMobileMenu
2A7F2E:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A7F30:  CMP             R0, #0
2A7F32:  BEQ             loc_2A7F4C
2A7F34:  LDR             R1, =(gMobileMenu_ptr - 0x2A7F3C)
2A7F36:  LDR             R2, [R4]
2A7F38:  ADD             R1, PC; gMobileMenu_ptr
2A7F3A:  LDR             R1, [R1]; gMobileMenu
2A7F3C:  LDR             R2, [R2,#0x14]
2A7F3E:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A7F40:  ADD.W           R0, R1, R0,LSL#2
2A7F44:  LDR.W           R1, [R0,#-4]
2A7F48:  MOV             R0, R4
2A7F4A:  BLX             R2
2A7F4C:  LDR             R0, =(gMobileMenu_ptr - 0x2A7F52)
2A7F4E:  ADD             R0, PC; gMobileMenu_ptr
2A7F50:  LDR             R0, [R0]; gMobileMenu
2A7F52:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A7F54:  CBZ             R0, loc_2A7F60
2A7F56:  LDR             R0, =(gMobileMenu_ptr - 0x2A7F5C)
2A7F58:  ADD             R0, PC; gMobileMenu_ptr
2A7F5A:  LDR             R0, [R0]; gMobileMenu ; this
2A7F5C:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
2A7F60:  LDR             R0, =(gMobileMenu_ptr - 0x2A7F66)
2A7F62:  ADD             R0, PC; gMobileMenu_ptr
2A7F64:  B               loc_2A8010
2A7F66:  LDR             R0, =(_ZTV11YesNoScreen_ptr - 0x2A7F72)
2A7F68:  ADR             R3, aFesRty; "FES_RTY"
2A7F6A:  LDR             R1, =(_ZN14DownloadScreen14CancelDownloadEPv_ptr - 0x2A7F74)
2A7F6C:  LDR             R2, =(_ZN14DownloadScreen13RetryDownloadEPv_ptr - 0x2A7F78)
2A7F6E:  ADD             R0, PC; _ZTV11YesNoScreen_ptr
2A7F70:  ADD             R1, PC; _ZN14DownloadScreen14CancelDownloadEPv_ptr
2A7F72:  STR             R3, [R4,#0x44]
2A7F74:  ADD             R2, PC; _ZN14DownloadScreen13RetryDownloadEPv_ptr
2A7F76:  LDR             R0, [R0]; `vtable for'YesNoScreen ...
2A7F78:  LDR             R1, [R1]; DownloadScreen::CancelDownload(void *)
2A7F7A:  LDR             R2, [R2]; DownloadScreen::RetryDownload(void *)
2A7F7C:  ADDS            R0, #8
2A7F7E:  STRD.W          R2, R5, [R4,#0x48]
2A7F82:  STR             R1, [R4,#0x50]
2A7F84:  STR             R0, [R4]
2A7F86:  BLX             j__Z19CachePlayerControlsv; CachePlayerControls(void)
2A7F8A:  MOVS            R0, #0x10; unsigned int
2A7F8C:  BLX             _Znwj; operator new(uint)
2A7F90:  MOV             R1, R0; SelectScreen::MenuSelection *
2A7F92:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x2A7F9A)
2A7F94:  LDR             R2, =(_ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr - 0x2A7F9E)
2A7F96:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
2A7F98:  LDR             R3, =(aFemNo - 0x2A7FA2); "FEM_NO"
2A7F9A:  ADD             R2, PC; _ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr
2A7F9C:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
2A7F9E:  ADD             R3, PC; "FEM_NO"
2A7FA0:  LDR             R2, [R2]; YesNoScreen::NoFunc(SelectScreen *,int)
2A7FA2:  ADD.W           R5, R0, #8
2A7FA6:  MOV             R0, R4; this
2A7FA8:  STRD.W          R5, R3, [R1]
2A7FAC:  STRD.W          R2, R8, [R1,#8]
2A7FB0:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A7FB4:  MOVS            R0, #0x10; unsigned int
2A7FB6:  BLX             _Znwj; operator new(uint)
2A7FBA:  MOV             R1, R0; SelectScreen::MenuSelection *
2A7FBC:  LDR             R0, =(_ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr - 0x2A7FC4)
2A7FBE:  LDR             R2, =(aFemYes - 0x2A7FC6); "FEM_YES"
2A7FC0:  ADD             R0, PC; _ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr
2A7FC2:  ADD             R2, PC; "FEM_YES"
2A7FC4:  LDR             R0, [R0]; YesNoScreen::YesFunc(SelectScreen *,int)
2A7FC6:  STRD.W          R5, R2, [R1]
2A7FCA:  STRD.W          R0, R8, [R1,#8]
2A7FCE:  MOV             R0, R4; this
2A7FD0:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A7FD4:  LDR             R0, =(gMobileMenu_ptr - 0x2A7FDA)
2A7FD6:  ADD             R0, PC; gMobileMenu_ptr
2A7FD8:  LDR             R0, [R0]; gMobileMenu
2A7FDA:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A7FDC:  CMP             R0, #0
2A7FDE:  BEQ             loc_2A7FF8
2A7FE0:  LDR             R1, =(gMobileMenu_ptr - 0x2A7FE8)
2A7FE2:  LDR             R2, [R4]
2A7FE4:  ADD             R1, PC; gMobileMenu_ptr
2A7FE6:  LDR             R1, [R1]; gMobileMenu
2A7FE8:  LDR             R2, [R2,#0x14]
2A7FEA:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A7FEC:  ADD.W           R0, R1, R0,LSL#2
2A7FF0:  LDR.W           R1, [R0,#-4]
2A7FF4:  MOV             R0, R4
2A7FF6:  BLX             R2
2A7FF8:  LDR             R0, =(gMobileMenu_ptr - 0x2A7FFE)
2A7FFA:  ADD             R0, PC; gMobileMenu_ptr
2A7FFC:  LDR             R0, [R0]; gMobileMenu
2A7FFE:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A8000:  CBZ             R0, loc_2A800C
2A8002:  LDR             R0, =(gMobileMenu_ptr - 0x2A8008)
2A8004:  ADD             R0, PC; gMobileMenu_ptr
2A8006:  LDR             R0, [R0]; gMobileMenu ; this
2A8008:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
2A800C:  LDR             R0, =(gMobileMenu_ptr - 0x2A8012)
2A800E:  ADD             R0, PC; gMobileMenu_ptr
2A8010:  LDR             R0, [R0]; gMobileMenu
2A8012:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
2A8014:  ADD             SP, SP, #0x34 ; '4'
2A8016:  POP.W           {R8-R11}
2A801A:  POP             {R4-R7,PC}
