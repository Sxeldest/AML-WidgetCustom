; =========================================================
; Game Engine Function: _ZN19CWidgetRouletteSpin4DrawEv
; Address            : 0x2C66DC - 0x2C67E8
; =========================================================

2C66DC:  PUSH            {R4-R7,LR}
2C66DE:  ADD             R7, SP, #0xC
2C66E0:  PUSH.W          {R11}
2C66E4:  VPUSH           {D8-D11}
2C66E8:  SUB.W           SP, SP, #0x310
2C66EC:  MOV             R4, R0
2C66EE:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C66F4)
2C66F0:  ADD             R0, PC; __stack_chk_guard_ptr
2C66F2:  LDR             R0, [R0]; __stack_chk_guard
2C66F4:  LDR             R0, [R0]
2C66F6:  STR             R0, [SP,#0x340+var_34]
2C66F8:  LDRB.W          R0, [R4,#0x4C]
2C66FC:  CMP             R0, #0
2C66FE:  BEQ             loc_2C67C8
2C6700:  ADD.W           R0, R4, #0x90
2C6704:  ADD.W           R1, R4, #0x20 ; ' '
2C6708:  ADD.W           R2, R4, #0x49 ; 'I'
2C670C:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C6710:  MOVS            R0, #0; this
2C6712:  MOVS            R1, #0; unsigned __int8
2C6714:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2C6718:  MOVS            R0, #(stderr+1); this
2C671A:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2C671E:  MOVS            R0, #(stderr+2); this
2C6720:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2C6724:  MOVS            R0, #0; this
2C6726:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2C672A:  MOVS            R0, #0; this
2C672C:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2C6730:  MOVS            R0, #0; this
2C6732:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2C6736:  LDRB.W          R0, [R4,#0x4C]
2C673A:  MOVS            R1, #0xFF; unsigned __int8
2C673C:  STR             R0, [SP,#0x340+var_340]; unsigned __int8
2C673E:  ADD             R0, SP, #0x340+var_138; this
2C6740:  MOVS            R2, #0xFF; unsigned __int8
2C6742:  MOVS            R3, #0xFF; unsigned __int8
2C6744:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C6748:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2C674C:  VLDR            S0, [R4,#0x24]
2C6750:  VLDR            S2, [R4,#0x2C]
2C6754:  VSUB.F32        S0, S0, S2
2C6758:  VLDR            S2, =0.0175
2C675C:  VABS.F32        S0, S0
2C6760:  VMUL.F32        S0, S0, S2
2C6764:  VMOV            R0, S0; this
2C6768:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2C676C:  ADD             R5, SP, #0x340+var_134
2C676E:  LDR.W           R2, [R4,#0x94]
2C6772:  ADR             R1, dword_2C67F0
2C6774:  MOV             R0, R5
2C6776:  BL              sub_5E6BC0
2C677A:  ADD             R6, SP, #0x340+var_338
2C677C:  MOV             R0, R5; char *
2C677E:  MOV             R1, R6; unsigned __int16 *
2C6780:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2C6784:  VLDR            S0, [R4,#0x24]
2C6788:  MOVS            R0, #0; this
2C678A:  VLDR            S2, [R4,#0x2C]
2C678E:  VMOV.F32        S20, #0.5
2C6792:  VLDR            S16, [R4,#0x20]
2C6796:  VLDR            S18, [R4,#0x28]
2C679A:  VADD.F32        S22, S0, S2
2C679E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2C67A2:  VMOV            S0, R0
2C67A6:  MOV             R2, R6; CFont *
2C67A8:  VADD.F32        S2, S16, S18
2C67AC:  VMUL.F32        S0, S0, S20
2C67B0:  VMUL.F32        S4, S22, S20
2C67B4:  VMUL.F32        S2, S2, S20
2C67B8:  VSUB.F32        S0, S4, S0
2C67BC:  VMOV            R0, S2; this
2C67C0:  VMOV            R1, S0; float
2C67C4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2C67C8:  LDR             R0, =(__stack_chk_guard_ptr - 0x2C67D0)
2C67CA:  LDR             R1, [SP,#0x340+var_34]
2C67CC:  ADD             R0, PC; __stack_chk_guard_ptr
2C67CE:  LDR             R0, [R0]; __stack_chk_guard
2C67D0:  LDR             R0, [R0]
2C67D2:  SUBS            R0, R0, R1
2C67D4:  ITTTT EQ
2C67D6:  ADDEQ.W         SP, SP, #0x310
2C67DA:  VPOPEQ          {D8-D11}
2C67DE:  POPEQ.W         {R11}
2C67E2:  POPEQ           {R4-R7,PC}
2C67E4:  BLX             __stack_chk_fail
