; =========================================================
; Game Engine Function: _ZN11CWidgetPool4DrawEv
; Address            : 0x2BE510 - 0x2BE92C
; =========================================================

2BE510:  PUSH            {R4-R7,LR}
2BE512:  ADD             R7, SP, #0xC
2BE514:  PUSH.W          {R8-R11}
2BE518:  SUB             SP, SP, #4
2BE51A:  VPUSH           {D8-D15}
2BE51E:  SUB             SP, SP, #0x48
2BE520:  STR             R0, [SP,#0xA8+var_94]
2BE522:  LDRB.W          R6, [R0,#0x4C]
2BE526:  CMP             R6, #0
2BE528:  BEQ.W           loc_2BE91E
2BE52C:  LDR             R4, [SP,#0xA8+var_94]
2BE52E:  ADD.W           R11, R4, #0x90
2BE532:  MOV             R0, R11; char *
2BE534:  BLX             strlen
2BE538:  CBZ             R0, loc_2BE54E
2BE53A:  ADR.W           R1, aDummy_0; "DUMMY"
2BE53E:  MOV             R0, R11; char *
2BE540:  BLX             strcasecmp
2BE544:  MOV             R5, R0
2BE546:  CMP             R5, #0
2BE548:  IT NE
2BE54A:  MOVNE           R5, #1
2BE54C:  B               loc_2BE550
2BE54E:  MOVS            R5, #0
2BE550:  ADD.W           R4, R4, #0x19C
2BE554:  MOV             R0, R4; char *
2BE556:  BLX             strlen
2BE55A:  CBZ             R0, loc_2BE56C
2BE55C:  ADR.W           R1, aDummy_0; "DUMMY"
2BE560:  MOV             R0, R4; char *
2BE562:  BLX             strcasecmp
2BE566:  CMP             R0, #0
2BE568:  IT NE
2BE56A:  ADDNE           R5, #1
2BE56C:  CMP             R5, #0
2BE56E:  BEQ.W           loc_2BE91E
2BE572:  LDR             R0, [SP,#0xA8+var_94]
2BE574:  MOVS            R1, #0; unsigned __int8
2BE576:  VLDR            S16, [R0,#0x24]
2BE57A:  VLDR            S18, [R0,#0x2C]
2BE57E:  MOVS            R0, #0; this
2BE580:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BE584:  MOVS            R0, #(stderr+1); this
2BE586:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BE58A:  MOVS            R0, #(stderr+2); this
2BE58C:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BE590:  MOVS            R0, #(stderr+1); this
2BE592:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BE596:  MOVS            R0, #0; this
2BE598:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2BE59C:  MOVS            R0, #0; this
2BE59E:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BE5A2:  VMOV            S0, R6
2BE5A6:  VLDR            S2, =255.0
2BE5AA:  ADD             R0, SP, #0xA8+var_64; this
2BE5AC:  MOVS            R1, #0; unsigned __int8
2BE5AE:  VCVT.F32.U32    S0, S0
2BE5B2:  MOVS            R2, #0; unsigned __int8
2BE5B4:  MOVS            R3, #0; unsigned __int8
2BE5B6:  VDIV.F32        S20, S0, S2
2BE5BA:  VMUL.F32        S0, S20, S2
2BE5BE:  VCVT.U32.F32    S0, S0
2BE5C2:  VMOV            R6, S0
2BE5C6:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
2BE5C8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE5CC:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BE5D0:  LDR             R0, =(RsGlobal_ptr - 0x2BE5D6)
2BE5D2:  ADD             R0, PC; RsGlobal_ptr
2BE5D4:  LDR             R4, [R0]; RsGlobal
2BE5D6:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
2BE5D8:  VMOV            S0, R0
2BE5DC:  VCVT.F32.S32    S0, S0
2BE5E0:  VMOV            R0, S0; this
2BE5E4:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2BE5E8:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
2BE5EA:  VMOV            S0, R0
2BE5EE:  VCVT.F32.S32    S0, S0
2BE5F2:  VMOV            R0, S0; this
2BE5F6:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
2BE5FA:  VSUB.F32        S0, S16, S18
2BE5FE:  VMOV.F32        S2, #-1.0
2BE602:  VMOV.F32        S16, #0.5
2BE606:  VABS.F32        S0, S0
2BE60A:  VADD.F32        S0, S0, S2
2BE60E:  VMUL.F32        S18, S0, S16
2BE612:  VLDR            S0, =0.0325
2BE616:  VMUL.F32        S22, S18, S0
2BE61A:  VMOV            R0, S22; this
2BE61E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BE622:  CMP             R5, #1
2BE624:  BLT.W           loc_2BE91E
2BE628:  LDR             R0, =(TheText_ptr - 0x2BE636)
2BE62A:  ADR.W           R9, aDummy_0; "DUMMY"
2BE62E:  STR             R6, [SP,#0xA8+var_A4]
2BE630:  MOV             R6, R5
2BE632:  ADD             R0, PC; TheText_ptr
2BE634:  LDR             R5, [SP,#0xA8+var_94]
2BE636:  VLDR            S24, =0.9
2BE63A:  MOV             R8, R6
2BE63C:  LDR             R0, [R0]; TheText
2BE63E:  ADD.W           R4, R5, #0x110
2BE642:  STR             R0, [SP,#0xA8+var_98]
2BE644:  LDR             R0, =(TheText_ptr - 0x2BE64A)
2BE646:  ADD             R0, PC; TheText_ptr
2BE648:  LDR             R0, [R0]; TheText
2BE64A:  STR             R0, [SP,#0xA8+var_9C]
2BE64C:  MOV             R0, R4; char *
2BE64E:  BLX             strlen
2BE652:  VMOV.F32        S0, S24
2BE656:  CBZ             R0, loc_2BE66C
2BE658:  MOV             R0, R4; char *
2BE65A:  MOV             R1, R9; char *
2BE65C:  BLX             strcasecmp
2BE660:  CMP             R0, #0
2BE662:  ADR             R0, dword_2BE944
2BE664:  IT NE
2BE666:  ADDNE           R0, #4
2BE668:  VLDR            S0, [R0]
2BE66C:  VLDR            S2, [R5,#0x20]
2BE670:  SUB.W           R10, R4, #0x80
2BE674:  VLDR            S4, [R5,#0x28]
2BE678:  MOV             R0, R10; char *
2BE67A:  VSUB.F32        S2, S4, S2
2BE67E:  VABS.F32        S2, S2
2BE682:  VMUL.F32        S26, S0, S2
2BE686:  BLX             strlen
2BE68A:  CBZ             R0, loc_2BE6C4
2BE68C:  MOV             R0, R10; char *
2BE68E:  MOV             R1, R9; char *
2BE690:  BLX             strcasecmp
2BE694:  CBZ             R0, loc_2BE6C4
2BE696:  LDR             R0, [SP,#0xA8+var_9C]; this
2BE698:  MOV             R1, R10; CKeyGen *
2BE69A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BE69E:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BE6A0:  MOVS            R2, #0; unsigned __int8
2BE6A2:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BE6A6:  VMOV            S0, R0
2BE6AA:  VCMPE.F32       S0, S26
2BE6AE:  VMRS            APSR_nzcv, FPSCR
2BE6B2:  BLE             loc_2BE6C4
2BE6B4:  VDIV.F32        S0, S26, S0
2BE6B8:  VMUL.F32        S22, S22, S0
2BE6BC:  VMOV            R0, S22; this
2BE6C0:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BE6C4:  MOV             R0, R4; char *
2BE6C6:  BLX             strlen
2BE6CA:  CBZ             R0, loc_2BE704
2BE6CC:  MOV             R0, R4; char *
2BE6CE:  MOV             R1, R9; char *
2BE6D0:  BLX             strcasecmp
2BE6D4:  CBZ             R0, loc_2BE704
2BE6D6:  LDR             R0, [SP,#0xA8+var_98]; this
2BE6D8:  MOV             R1, R4; CKeyGen *
2BE6DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BE6DE:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BE6E0:  MOVS            R2, #0; unsigned __int8
2BE6E2:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BE6E6:  VMOV            S0, R0
2BE6EA:  VCMPE.F32       S0, S26
2BE6EE:  VMRS            APSR_nzcv, FPSCR
2BE6F2:  BLE             loc_2BE704
2BE6F4:  VDIV.F32        S0, S26, S0
2BE6F8:  VMUL.F32        S22, S22, S0
2BE6FC:  VMOV            R0, S22; this
2BE700:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BE704:  ADD.W           R4, R4, #0x10C
2BE708:  SUBS            R6, #1
2BE70A:  BNE             loc_2BE64C
2BE70C:  MOV             R5, R8
2BE70E:  LDR.W           R8, [SP,#0xA8+var_A4]
2BE712:  CMP             R5, #1
2BE714:  BLT.W           loc_2BE91E
2BE718:  VLDR            S2, =128.0
2BE71C:  VMOV.F32        S0, #1.0
2BE720:  VLDR            S24, =0.03
2BE724:  VMUL.F32        S2, S20, S2
2BE728:  VADD.F32        S20, S18, S0
2BE72C:  VCVT.U32.F32    S0, S2
2BE730:  LDR             R0, [SP,#0xA8+var_94]
2BE732:  VLDR            S22, [R0,#0x2C]
2BE736:  VMOV            R0, S0
2BE73A:  STR             R0, [SP,#0xA8+var_98]
2BE73C:  LDR             R0, =(TheText_ptr - 0x2BE742)
2BE73E:  ADD             R0, PC; TheText_ptr
2BE740:  LDR             R0, [R0]; TheText
2BE742:  STR             R0, [SP,#0xA8+var_9C]
2BE744:  LDR             R0, =(TheText_ptr - 0x2BE74A)
2BE746:  ADD             R0, PC; TheText_ptr
2BE748:  LDR             R0, [R0]; TheText
2BE74A:  STR             R0, [SP,#0xA8+var_A0]
2BE74C:  VADD.F32        S0, S18, S22
2BE750:  LDR             R1, [SP,#0xA8+var_94]
2BE752:  ADD             R4, SP, #0xA8+var_78
2BE754:  LDR             R6, [SP,#0xA8+var_98]
2BE756:  MOVS            R2, #0; unsigned __int8
2BE758:  MOVS            R3, #0; unsigned __int8
2BE75A:  LDR             R0, [R1,#0x20]
2BE75C:  LDR             R1, [R1,#0x28]
2BE75E:  VSTR            S22, [SP,#0xA8+var_68]
2BE762:  STR             R0, [SP,#0xA8+var_74]
2BE764:  MOV             R0, R4; this
2BE766:  STR             R1, [SP,#0xA8+var_6C]
2BE768:  MOVS            R1, #0; unsigned __int8
2BE76A:  VSTR            S0, [SP,#0xA8+var_70]
2BE76E:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
2BE770:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE774:  ADD.W           R9, SP, #0xA8+var_7C
2BE778:  MOVS            R1, #0; unsigned __int8
2BE77A:  MOVS            R2, #0; unsigned __int8
2BE77C:  MOVS            R3, #0; unsigned __int8
2BE77E:  MOV             R0, R9; this
2BE780:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
2BE782:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE786:  ADD.W           R10, SP, #0xA8+var_80
2BE78A:  MOVS            R1, #0; unsigned __int8
2BE78C:  MOVS            R2, #0; unsigned __int8
2BE78E:  MOVS            R3, #0; unsigned __int8
2BE790:  MOV             R0, R10; this
2BE792:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
2BE796:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE79A:  ADD             R0, SP, #0xA8+var_84; this
2BE79C:  MOVS            R1, #0; unsigned __int8
2BE79E:  MOVS            R2, #0; unsigned __int8
2BE7A0:  MOVS            R3, #0; unsigned __int8
2BE7A2:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
2BE7A6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE7AA:  STR             R0, [SP,#0xA8+var_A8]
2BE7AC:  ADD             R0, SP, #0xA8+var_74
2BE7AE:  MOV             R1, R4
2BE7B0:  MOV             R2, R9
2BE7B2:  MOV             R3, R10
2BE7B4:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2BE7B8:  ADD.W           R4, R11, #0x80
2BE7BC:  MOV             R0, R4; char *
2BE7BE:  BLX             strlen
2BE7C2:  CMP             R0, #0
2BE7C4:  BEQ             loc_2BE8AE
2BE7C6:  ADR             R1, aDummy_0; "DUMMY"
2BE7C8:  MOV             R0, R4; char *
2BE7CA:  BLX             strcasecmp
2BE7CE:  CMP             R0, #0
2BE7D0:  BEQ             loc_2BE8AE
2BE7D2:  MOVS            R0, #(stderr+1); this
2BE7D4:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BE7D8:  ADD             R0, SP, #0xA8+var_88; this
2BE7DA:  MOVS            R1, #0xFF; unsigned __int8
2BE7DC:  MOVS            R2, #0xFF; unsigned __int8
2BE7DE:  MOVS            R3, #0xFF; unsigned __int8
2BE7E0:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
2BE7E4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE7E8:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BE7EC:  VLDR            S26, [SP,#0xA8+var_74]
2BE7F0:  MOVS            R0, #0; this
2BE7F2:  VLDR            S2, [SP,#0xA8+var_6C]
2BE7F6:  VLDR            S0, [SP,#0xA8+var_70]
2BE7FA:  VSUB.F32        S2, S2, S26
2BE7FE:  VLDR            S4, [SP,#0xA8+var_68]
2BE802:  VADD.F32        S28, S0, S4
2BE806:  VABS.F32        S30, S2
2BE80A:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BE80E:  VMOV            S0, R0
2BE812:  LDR             R6, [SP,#0xA8+var_A0]
2BE814:  VMUL.F32        S4, S30, S24
2BE818:  MOV             R1, R11; CKeyGen *
2BE81A:  VMUL.F32        S0, S0, S16
2BE81E:  VMUL.F32        S2, S28, S16
2BE822:  MOV             R0, R6; this
2BE824:  VADD.F32        S26, S26, S4
2BE828:  VSUB.F32        S28, S2, S0
2BE82C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BE830:  MOV             R2, R0; CFont *
2BE832:  VMOV            R1, S28; float
2BE836:  VMOV            R0, S26; this
2BE83A:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BE83E:  MOVS            R0, #(stderr+2); this
2BE840:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BE844:  ADD             R0, SP, #0xA8+var_8C; this
2BE846:  MOVS            R1, #0x5D ; ']'; unsigned __int8
2BE848:  MOVS            R2, #0x8E; unsigned __int8
2BE84A:  MOVS            R3, #0xBE; unsigned __int8
2BE84C:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
2BE850:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE854:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BE858:  VLDR            S0, [SP,#0xA8+var_74]
2BE85C:  MOVS            R0, #0; this
2BE85E:  VLDR            S26, [SP,#0xA8+var_6C]
2BE862:  VLDR            S2, [SP,#0xA8+var_70]
2BE866:  VSUB.F32        S0, S26, S0
2BE86A:  VLDR            S4, [SP,#0xA8+var_68]
2BE86E:  VADD.F32        S28, S2, S4
2BE872:  VABS.F32        S30, S0
2BE876:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BE87A:  VMOV            S0, R0
2BE87E:  MOV             R0, R6; this
2BE880:  VMUL.F32        S4, S30, S24
2BE884:  MOV             R1, R4; CKeyGen *
2BE886:  VMUL.F32        S0, S0, S16
2BE88A:  VMUL.F32        S2, S28, S16
2BE88E:  VSUB.F32        S26, S26, S4
2BE892:  VSUB.F32        S28, S2, S0
2BE896:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BE89A:  MOV             R2, R0; CFont *
2BE89C:  VMOV            R1, S28; float
2BE8A0:  VMOV            R0, S26; this
2BE8A4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BE8A8:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BE8AC:  B               loc_2BE910
2BE8AE:  MOVS            R0, #0; this
2BE8B0:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BE8B4:  ADD             R0, SP, #0xA8+var_90; this
2BE8B6:  MOVS            R1, #0x5D ; ']'; unsigned __int8
2BE8B8:  MOVS            R2, #0x8E; unsigned __int8
2BE8BA:  MOVS            R3, #0xBE; unsigned __int8
2BE8BC:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
2BE8C0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE8C4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BE8C8:  VLDR            S0, [SP,#0xA8+var_70]
2BE8CC:  MOVS            R0, #0; this
2BE8CE:  VLDR            S2, [SP,#0xA8+var_68]
2BE8D2:  VLDR            S26, [SP,#0xA8+var_74]
2BE8D6:  VLDR            S28, [SP,#0xA8+var_6C]
2BE8DA:  VADD.F32        S30, S0, S2
2BE8DE:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BE8E2:  VMOV            S0, R0
2BE8E6:  LDR             R0, [SP,#0xA8+var_9C]; this
2BE8E8:  VADD.F32        S2, S26, S28
2BE8EC:  MOV             R1, R11; CKeyGen *
2BE8EE:  VMUL.F32        S0, S0, S16
2BE8F2:  VMUL.F32        S4, S30, S16
2BE8F6:  VMUL.F32        S26, S2, S16
2BE8FA:  VSUB.F32        S28, S4, S0
2BE8FE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BE902:  MOV             R2, R0; CFont *
2BE904:  VMOV            R0, S26; this
2BE908:  VMOV            R1, S28; float
2BE90C:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BE910:  VADD.F32        S22, S20, S22
2BE914:  ADD.W           R11, R11, #0x10C
2BE918:  SUBS            R5, #1
2BE91A:  BNE.W           loc_2BE74C
2BE91E:  ADD             SP, SP, #0x48 ; 'H'
2BE920:  VPOP            {D8-D15}
2BE924:  ADD             SP, SP, #4
2BE926:  POP.W           {R8-R11}
2BE92A:  POP             {R4-R7,PC}
