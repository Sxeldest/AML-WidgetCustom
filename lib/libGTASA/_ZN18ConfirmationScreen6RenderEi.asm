; =========================================================
; Game Engine Function: _ZN18ConfirmationScreen6RenderEi
; Address            : 0x2A87BC - 0x2A884E
; =========================================================

2A87BC:  PUSH            {R4-R7,LR}
2A87BE:  ADD             R7, SP, #0xC
2A87C0:  PUSH.W          {R11}
2A87C4:  VPUSH           {D8}
2A87C8:  SUB             SP, SP, #0x38
2A87CA:  MOV             R4, R0
2A87CC:  BLX             j__ZN16CharSelectScreen6RenderEi; CharSelectScreen::Render(int)
2A87D0:  MOVS            R0, #0xFF
2A87D2:  LDR             R6, [R4,#0x44]
2A87D4:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
2A87D6:  ADD             R0, SP, #0x50+var_20; this
2A87D8:  MOVS            R1, #0xF0; unsigned __int8
2A87DA:  MOVS            R2, #0xF0; unsigned __int8
2A87DC:  MOVS            R3, #0xF0; unsigned __int8
2A87DE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A87E2:  LDR             R0, [R4]
2A87E4:  LDR             R1, [R0,#0x30]
2A87E6:  MOV             R0, R4
2A87E8:  BLX             R1
2A87EA:  MOV             R5, R0
2A87EC:  LDR             R0, [R4]
2A87EE:  LDR             R1, [R0,#0x30]
2A87F0:  MOV             R0, R4
2A87F2:  BLX             R1
2A87F4:  LDR             R1, =(TheText_ptr - 0x2A87FE)
2A87F6:  VMOV            S16, R0
2A87FA:  ADD             R1, PC; TheText_ptr
2A87FC:  LDR             R1, [R1]; TheText
2A87FE:  MOV             R0, R1; this
2A8800:  MOV             R1, R6; CKeyGen *
2A8802:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A8806:  VLDR            S0, =630.0
2A880A:  MOVS            R3, #0
2A880C:  LDR             R1, [SP,#0x50+var_20]
2A880E:  MOV             R2, R0
2A8810:  VSUB.F32        S0, S0, S16
2A8814:  STR             R1, [SP,#0x50+var_1C]
2A8816:  MOVS            R0, #0
2A8818:  MOVS            R1, #1
2A881A:  MOVT            R3, #0x4190
2A881E:  STRD.W          R3, R1, [SP,#0x50+var_38]
2A8822:  STR             R0, [SP,#0x50+var_30]
2A8824:  ADD.W           R0, R3, #0xFC0000
2A8828:  ADD             R3, SP, #0x50+var_1C
2A882A:  STRD.W          R1, R3, [SP,#0x50+var_50]
2A882E:  MOVS            R3, #0
2A8830:  STRD.W          R1, R5, [SP,#0x50+var_48]
2A8834:  MOV             R1, R4
2A8836:  STR             R0, [SP,#0x50+var_40]
2A8838:  ADD             R0, SP, #0x50+var_28
2A883A:  VSTR            S0, [SP,#0x50+var_3C]
2A883E:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A8842:  ADD             SP, SP, #0x38 ; '8'
2A8844:  VPOP            {D8}
2A8848:  POP.W           {R11}
2A884C:  POP             {R4-R7,PC}
