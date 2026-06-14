; =========================================================
; Game Engine Function: _ZN17CWidgetVitalStats4DrawEv
; Address            : 0x2C84EC - 0x2C8B36
; =========================================================

2C84EC:  PUSH            {R4-R7,LR}
2C84EE:  ADD             R7, SP, #0xC
2C84F0:  PUSH.W          {R8-R11}
2C84F4:  SUB             SP, SP, #4
2C84F6:  VPUSH           {D8-D15}
2C84FA:  SUB             SP, SP, #0xA8
2C84FC:  MOV             R11, R0
2C84FE:  LDRB.W          R0, [R11,#0x4C]
2C8502:  CMP             R0, #0
2C8504:  BEQ.W           loc_2C8AE6
2C8508:  MOV.W           R0, #0xFFFFFFFF; int
2C850C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C8510:  CBZ             R0, loc_2C852C
2C8512:  MOV.W           R0, #0xFFFFFFFF; int
2C8516:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C851A:  LDRSB.W         R1, [R0,#0x71C]
2C851E:  RSB.W           R1, R1, R1,LSL#3
2C8522:  ADD.W           R0, R0, R1,LSL#2
2C8526:  LDR.W           R4, [R0,#0x5A4]
2C852A:  B               loc_2C852E
2C852C:  MOVS            R4, #0
2C852E:  LDR.W           R0, =(off_6652F0 - 0x2C853A); "STAT068" ...
2C8532:  LDR.W           R1, =(asc_60F090 - 0x2C8540); "@"
2C8536:  ADD             R0, PC; off_6652F0
2C8538:  VLD1.64         {D16-D17}, [R0]!
2C853C:  ADD             R1, PC; "@"
2C853E:  VLDR            D18, [R0]
2C8542:  ADD             R0, SP, #0x108+var_78
2C8544:  VST1.64         {D16-D17}, [R0]!
2C8548:  VLD1.64         {D16-D17}, [R1]!
2C854C:  VSTR            D18, [R0]
2C8550:  ADD             R0, SP, #0x108+var_90
2C8552:  VLDR            D18, [R1]
2C8556:  MOVS            R1, #0; bool
2C8558:  VST1.64         {D16-D17}, [R0]!
2C855C:  VSTR            D18, [R0]
2C8560:  MOV.W           R0, #0xFFFFFFFF; int
2C8564:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C8568:  CMP             R4, #0x20 ; ' '
2C856A:  IT EQ
2C856C:  MOVEQ           R4, #0x1C
2C856E:  CBZ             R0, loc_2C85A0
2C8570:  MOV.W           R0, #0xFFFFFFFF; int
2C8574:  MOVS            R1, #0; bool
2C8576:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C857A:  LDR.W           R0, [R0,#0x5A4]
2C857E:  CMP             R0, #4
2C8580:  BEQ             loc_2C8596
2C8582:  MOV.W           R0, #0xFFFFFFFF; int
2C8586:  MOVS            R1, #0; bool
2C8588:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C858C:  LDR.W           R0, [R0,#0x5A4]
2C8590:  CMP             R0, #3
2C8592:  BNE.W           loc_2C8AF8
2C8596:  ADR.W           R0, aStat223; "STAT223"
2C859A:  STR             R0, [SP,#0x108+var_74]
2C859C:  MOVS            R0, #0xDF
2C859E:  STR             R0, [SP,#0x108+var_8C]
2C85A0:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2C85B0)
2C85A4:  MOV.W           R2, #0x194
2C85A8:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x2C85B2)
2C85AC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2C85AE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
2C85B0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2C85B2:  LDR             R1, [R1]; CWorld::Players ...
2C85B4:  LDR             R0, [R0]; CWorld::PlayerInFocus
2C85B6:  SMULBB.W        R0, R0, R2
2C85BA:  LDR             R0, [R1,R0]
2C85BC:  LDR.W           R0, [R0,#0x440]; this
2C85C0:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
2C85C4:  CMP             R0, #0
2C85C6:  STR             R4, [SP,#0x108+var_E8]
2C85C8:  BEQ             loc_2C85E8
2C85CA:  LDR.W           R0, =(aStat225 - 0x2C85D2); "STAT225"
2C85CE:  ADD             R0, PC; "STAT225"
2C85D0:  B               loc_2C85F6
2C85D2:  ALIGN 4
2C85D4:  DCFS 255.0
2C85D8:  DCFS 0.2
2C85DC:  DCFS 120.0
2C85E0:  DCFS 220.0
2C85E4:  DCFS 0.01
2C85E8:  SUB.W           R0, R4, #0x16
2C85EC:  CMP             R0, #0xA
2C85EE:  BHI.W           loc_2C8AF4
2C85F2:  ADR.W           R0, aCurwskl; "CURWSKL"
2C85F6:  STR             R0, [SP,#0x108+var_64]
2C85F8:  MOVS            R0, #6
2C85FA:  STR             R0, [SP,#0x108+var_D4]
2C85FC:  ADD.W           R8, SP, #0x108+var_BC
2C8600:  LDRB.W          R0, [R11,#0x4C]
2C8604:  MOVS            R2, #0; unsigned __int8
2C8606:  VLDR            S18, =255.0
2C860A:  MOVS            R3, #0; unsigned __int8
2C860C:  MOVS            R6, #0
2C860E:  VMOV            S0, R0
2C8612:  VCVT.F32.U32    S0, S0
2C8616:  VLDR            S2, [R11,#0x24]
2C861A:  VLDR            S4, [R11,#0x2C]
2C861E:  LDR.W           R0, [R11,#0x28]
2C8622:  VSUB.F32        S2, S2, S4
2C8626:  LDR.W           R1, [R11,#0x20]
2C862A:  STR             R1, [SP,#0x108+var_A0]
2C862C:  MOVS            R1, #0; unsigned __int8
2C862E:  STR             R0, [SP,#0x108+var_98]
2C8630:  MOV             R0, R8; this
2C8632:  VSTR            S4, [SP,#0x108+var_94]
2C8636:  VDIV.F32        S20, S0, S18
2C863A:  VABS.F32        S0, S2
2C863E:  VLDR            S2, =0.2
2C8642:  VMUL.F32        S0, S0, S2
2C8646:  VLDR            S2, =120.0
2C864A:  VMUL.F32        S2, S20, S2
2C864E:  VADD.F32        S0, S4, S0
2C8652:  VCVT.U32.F32    S2, S2
2C8656:  VSTR            S0, [SP,#0x108+var_9C]
2C865A:  VMOV            R4, S2
2C865E:  STR             R4, [SP,#0x108+var_108]; unsigned __int8
2C8660:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8664:  ADD.W           R9, SP, #0x108+var_A4
2C8668:  MOVS            R1, #0; unsigned __int8
2C866A:  MOVS            R2, #0; unsigned __int8
2C866C:  MOVS            R3, #0; unsigned __int8
2C866E:  MOV             R0, R9; this
2C8670:  STR             R4, [SP,#0x108+var_108]; unsigned __int8
2C8672:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8676:  VLDR            S0, =220.0
2C867A:  ADD.W           R10, SP, #0x108+var_A8
2C867E:  MOVS            R1, #0; unsigned __int8
2C8680:  MOVS            R2, #0; unsigned __int8
2C8682:  VMUL.F32        S0, S20, S0
2C8686:  MOV             R0, R10; this
2C8688:  MOVS            R3, #0; unsigned __int8
2C868A:  VCVT.U32.F32    S0, S0
2C868E:  VMOV            R5, S0
2C8692:  STR             R5, [SP,#0x108+var_108]; unsigned __int8
2C8694:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8698:  ADD             R0, SP, #0x108+var_AC; this
2C869A:  MOVS            R1, #0; unsigned __int8
2C869C:  MOVS            R2, #0; unsigned __int8
2C869E:  MOVS            R3, #0; unsigned __int8
2C86A0:  STR             R5, [SP,#0x108+var_108]; unsigned __int8
2C86A2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C86A6:  STR             R0, [SP,#0x108+var_108]
2C86A8:  ADD             R0, SP, #0x108+var_A0
2C86AA:  MOV             R1, R8
2C86AC:  MOV             R2, R9
2C86AE:  MOV             R3, R10
2C86B0:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2C86B4:  LDR.W           R10, [SP,#0x108+var_D4]
2C86B8:  VMOV.F32        S0, #6.0
2C86BC:  VMOV.F32        S16, #2.0
2C86C0:  ADD.W           R8, SP, #0x108+var_A4
2C86C4:  MOVS            R2, #0; unsigned __int8
2C86C6:  MOVS            R3, #0; unsigned __int8
2C86C8:  VMOV            S2, R10
2C86CC:  VCVT.F32.S32    S22, S2
2C86D0:  VLDR            S2, [R11,#0x24]
2C86D4:  VLDR            S4, [R11,#0x2C]
2C86D8:  VLDR            S6, [SP,#0x108+var_9C]
2C86DC:  VSUB.F32        S2, S2, S4
2C86E0:  VLDR            S4, =0.01
2C86E4:  LDR.W           R0, [R11,#0x20]
2C86E8:  LDR.W           R1, [R11,#0x28]
2C86EC:  STR             R0, [SP,#0x108+var_BC]
2C86EE:  MOV             R0, R8; this
2C86F0:  VDIV.F32        S0, S22, S0
2C86F4:  STR             R1, [SP,#0x108+var_B4]
2C86F6:  MOVS            R1, #0; unsigned __int8
2C86F8:  STR             R4, [SP,#0x108+var_108]; unsigned __int8
2C86FA:  VABS.F32        S2, S2
2C86FE:  VMUL.F32        S4, S2, S4
2C8702:  VMUL.F32        S0, S0, S2
2C8706:  VMAX.F32        D2, D2, D8
2C870A:  VADD.F32        S2, S6, S4
2C870E:  VADD.F32        S0, S2, S0
2C8712:  VSTR            S2, [SP,#0x108+var_B0]
2C8716:  VSTR            S0, [SP,#0x108+var_B8]
2C871A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C871E:  ADD.W           R9, SP, #0x108+var_A8
2C8722:  MOVS            R1, #0; unsigned __int8
2C8724:  MOVS            R2, #0; unsigned __int8
2C8726:  MOVS            R3, #0; unsigned __int8
2C8728:  MOV             R0, R9; this
2C872A:  STR             R4, [SP,#0x108+var_108]; unsigned __int8
2C872C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8730:  ADD             R4, SP, #0x108+var_AC
2C8732:  MOVS            R1, #0; unsigned __int8
2C8734:  MOVS            R2, #0; unsigned __int8
2C8736:  MOVS            R3, #0; unsigned __int8
2C8738:  MOV             R0, R4; this
2C873A:  STR             R5, [SP,#0x108+var_108]; unsigned __int8
2C873C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8740:  ADD             R0, SP, #0x108+var_C0; this
2C8742:  MOVS            R1, #0; unsigned __int8
2C8744:  MOVS            R2, #0; unsigned __int8
2C8746:  MOVS            R3, #0; unsigned __int8
2C8748:  STR             R5, [SP,#0x108+var_108]; unsigned __int8
2C874A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C874E:  STR             R0, [SP,#0x108+var_108]
2C8750:  ADD             R0, SP, #0x108+var_BC
2C8752:  MOV             R1, R8
2C8754:  MOV             R2, R9
2C8756:  MOV             R3, R4
2C8758:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2C875C:  MOVS            R0, #0; this
2C875E:  VLDR            S24, [SP,#0x108+var_B8]
2C8762:  VLDR            S26, [SP,#0x108+var_B0]
2C8766:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2C876A:  MOVS            R0, #(stderr+1); this
2C876C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2C8770:  MOVS            R0, #(stderr+1); this
2C8772:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2C8776:  VMUL.F32        S0, S20, S18
2C877A:  ADD             R0, SP, #0x108+var_C4; this
2C877C:  MOVS            R1, #0xFF; unsigned __int8
2C877E:  MOVS            R2, #0xFF; unsigned __int8
2C8780:  MOVS            R3, #0xFF; unsigned __int8
2C8782:  VCVT.U32.F32    S0, S0
2C8786:  VMOV            R4, S0
2C878A:  STR             R4, [SP,#0x108+var_108]; unsigned __int8
2C878C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8790:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2C8794:  ADD             R0, SP, #0x108+var_C8; this
2C8796:  MOVS            R1, #0; unsigned __int8
2C8798:  MOVS            R2, #0; unsigned __int8
2C879A:  MOVS            R3, #0; unsigned __int8
2C879C:  STR             R4, [SP,#0x108+var_D8]
2C879E:  STR             R4, [SP,#0x108+var_108]; unsigned __int8
2C87A0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C87A4:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2C87A8:  MOVS            R0, #(stderr+1); this
2C87AA:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2C87AE:  VLDR            S0, [SP,#0x108+var_9C]
2C87B2:  VLDR            S2, [SP,#0x108+var_94]
2C87B6:  VSUB.F32        S0, S0, S2
2C87BA:  VLDR            S2, =0.035
2C87BE:  VABS.F32        S0, S0
2C87C2:  VMUL.F32        S0, S0, S2
2C87C6:  VMOV            R0, S0; this
2C87CA:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2C87CE:  VSUB.F32        S0, S24, S26
2C87D2:  VLDR            S2, [SP,#0x108+var_94]
2C87D6:  MOVS            R0, #0; this
2C87D8:  VLDR            S26, [SP,#0x108+var_A0]
2C87DC:  VMOV.F32        S18, #0.5
2C87E0:  VABS.F32        S20, S0
2C87E4:  VLDR            S0, [SP,#0x108+var_9C]
2C87E8:  VADD.F32        S28, S0, S2
2C87EC:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2C87F0:  VLDR            S0, =0.075
2C87F4:  VMOV            S2, R0
2C87F8:  LDR             R0, =(TheText_ptr - 0x2C8808)
2C87FA:  ADR             R1, aFehSta; "FEH_STA"
2C87FC:  VMUL.F32        S24, S20, S0
2C8800:  VMUL.F32        S0, S2, S18
2C8804:  ADD             R0, PC; TheText_ptr
2C8806:  VMUL.F32        S2, S28, S18
2C880A:  LDR             R4, [R0]; TheText
2C880C:  MOV             R0, R4; this
2C880E:  VADD.F32        S20, S24, S26
2C8812:  VSUB.F32        S26, S2, S0
2C8816:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2C881A:  MOV             R2, R0; CFont *
2C881C:  VMOV            R0, S20; this
2C8820:  VMOV            R1, S26; float
2C8824:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2C8828:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2C882C:  MOVS            R0, #(stderr+2); this
2C882E:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2C8832:  MOVS            R0, #(stderr+2); this
2C8834:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2C8838:  VLDR            S0, [SP,#0x108+var_9C]
2C883C:  VLDR            S2, [SP,#0x108+var_94]
2C8840:  VSUB.F32        S0, S0, S2
2C8844:  VLDR            S2, =0.0275
2C8848:  VABS.F32        S0, S0
2C884C:  VMUL.F32        S0, S0, S2
2C8850:  VMOV            R0, S0; this
2C8854:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2C8858:  LDR             R0, =(_ZN6CClock10CurrentDayE_ptr - 0x2C8860)
2C885A:  LDR             R1, =(gString_ptr - 0x2C8862)
2C885C:  ADD             R0, PC; _ZN6CClock10CurrentDayE_ptr
2C885E:  ADD             R1, PC; gString_ptr
2C8860:  LDR             R0, [R0]; CClock::CurrentDay ...
2C8862:  LDR             R5, [R1]; gString
2C8864:  ADR             R1, aDayD; "DAY_%d"
2C8866:  LDRB            R2, [R0]; CClock::CurrentDay
2C8868:  MOV             R0, R5
2C886A:  BL              sub_5E6BC0
2C886E:  MOV             R0, R4; this
2C8870:  MOV             R1, R5; CKeyGen *
2C8872:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2C8876:  VLDR            S0, [SP,#0x108+var_9C]
2C887A:  MOV             R4, R0
2C887C:  VLDR            S2, [SP,#0x108+var_94]
2C8880:  MOVS            R0, #0; this
2C8882:  VLDR            S20, [SP,#0x108+var_98]
2C8886:  VADD.F32        S26, S0, S2
2C888A:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2C888E:  VMOV            S0, R0
2C8892:  MOV             R2, R4; CFont *
2C8894:  VMUL.F32        S2, S26, S18
2C8898:  VMUL.F32        S0, S0, S18
2C889C:  VSUB.F32        S4, S20, S24
2C88A0:  VSUB.F32        S0, S2, S0
2C88A4:  VMOV            R0, S4; this
2C88A8:  VMOV            R1, S0; float
2C88AC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2C88B0:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2C88B4:  VLDR            S0, [SP,#0x108+var_B8]
2C88B8:  VLDR            S2, [SP,#0x108+var_B0]
2C88BC:  VSUB.F32        S0, S0, S24
2C88C0:  VLDR            S28, [SP,#0x108+var_BC]
2C88C4:  VADD.F32        S20, S24, S2
2C88C8:  VLDR            S30, [SP,#0x108+var_B4]
2C88CC:  VSUB.F32        S0, S0, S20
2C88D0:  VABS.F32        S0, S0
2C88D4:  VDIV.F32        S22, S0, S22
2C88D8:  VLDR            S0, =0.04
2C88DC:  VMUL.F32        S26, S22, S0
2C88E0:  VMOV            R0, S26; this
2C88E4:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2C88E8:  MOVS            R0, #(stderr+1); this
2C88EA:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2C88EE:  VADD.F32        S23, S24, S28
2C88F2:  VSUB.F32        S0, S30, S24
2C88F6:  VSUB.F32        S0, S0, S23
2C88FA:  VABS.F32        S24, S0
2C88FE:  VMUL.F32        S28, S24, S18
2C8902:  VADD.F32        S0, S23, S28
2C8906:  VMOV            R0, S0; this
2C890A:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2C890E:  LDR             R0, =(TheText_ptr - 0x2C8916)
2C8910:  MOV             R5, R10
2C8912:  ADD             R0, PC; TheText_ptr
2C8914:  LDR             R4, [R0]; TheText
2C8916:  ADD             R0, SP, #0x108+var_78
2C8918:  LDR.W           R1, [R0,R6,LSL#2]; CKeyGen *
2C891C:  MOV             R0, R4; this
2C891E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2C8922:  MOVS            R1, #(stderr+1); unsigned __int16 *
2C8924:  MOVS            R2, #0; unsigned __int8
2C8926:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2C892A:  VMOV            S0, R0
2C892E:  VCMPE.F32       S0, S28
2C8932:  VMRS            APSR_nzcv, FPSCR
2C8936:  BLE             loc_2C8948
2C8938:  VDIV.F32        S0, S28, S0
2C893C:  VMUL.F32        S26, S26, S0
2C8940:  VMOV            R0, S26; this
2C8944:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2C8948:  ADDS            R6, #1
2C894A:  CMP             R6, R5
2C894C:  BLT             loc_2C8916
2C894E:  VLDR            S0, =0.55
2C8952:  VMOV.F32        S30, #1.0
2C8956:  VLDR            S2, =0.44
2C895A:  ADD             R5, SP, #0x108+var_D0
2C895C:  VMUL.F32        S0, S24, S0
2C8960:  LDR             R1, =(_ZN6CStats17StatReactionValueE_ptr - 0x2C896E)
2C8962:  VMUL.F32        S2, S24, S2
2C8966:  VLDR            S26, =1000.0
2C896A:  ADD             R1, PC; _ZN6CStats17StatReactionValueE_ptr
2C896C:  VLDR            S28, =100.0
2C8970:  VLDR            S19, =999.0
2C8974:  ADD             R4, SP, #0x108+var_90
2C8976:  LDR             R1, [R1]; CStats::StatReactionValue ...
2C8978:  MOV.W           R10, #0
2C897C:  VLDR            S21, =0.1
2C8980:  MOV.W           R11, #0
2C8984:  VADD.F32        S0, S23, S0
2C8988:  VCVT.S32.F32    S0, S0
2C898C:  VCVT.F32.S32    S24, S0
2C8990:  VCVT.S32.F32    S0, S2
2C8994:  STR             R1, [SP,#0x108+var_EC]
2C8996:  LDR             R1, =(TheText_ptr - 0x2C899E)
2C8998:  LDR             R0, [SP,#0x108+var_64]
2C899A:  ADD             R1, PC; TheText_ptr
2C899C:  STR             R0, [SP,#0x108+var_E4]
2C899E:  LDR             R1, [R1]; TheText
2C89A0:  STR             R1, [SP,#0x108+var_DC]
2C89A2:  VMOV            R1, S23; unsigned __int16
2C89A6:  VMOV            R0, S0
2C89AA:  VMOV.F32        S23, #-2.0
2C89AE:  STR             R1, [SP,#0x108+var_E0]
2C89B0:  UXTH.W          R8, R0
2C89B4:  LDRH.W          R0, [R4,R11,LSL#2]; this
2C89B8:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
2C89BC:  VMOV            S0, R0
2C89C0:  CMP.W           R11, #5
2C89C4:  VDIV.F32        S0, S0, S26
2C89C8:  VMUL.F32        S25, S0, S28
2C89CC:  BNE             loc_2C8A36
2C89CE:  LDR             R0, [SP,#0x108+var_E4]; char *
2C89D0:  ADR             R1, aCurwskl; "CURWSKL"
2C89D2:  BLX             strcasecmp
2C89D6:  CBNZ            R0, loc_2C8A36
2C89D8:  LDR             R0, [SP,#0x108+var_E8]
2C89DA:  BLX             j__ZN11CWeaponInfo17GetSkillStatIndexE11eWeaponType; CWeaponInfo::GetSkillStatIndex(eWeaponType)
2C89DE:  LDR             R1, [SP,#0x108+var_EC]; unsigned __int16
2C89E0:  ADD.W           R4, R1, R0,LSL#2
2C89E4:  UXTH            R0, R0; this
2C89E6:  VLDR            S25, [R4,#-0x5C]
2C89EA:  VLDR            S27, [R4,#-0xE4]
2C89EE:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
2C89F2:  VMOV.F32        S2, S30
2C89F6:  VMOV            S0, R0
2C89FA:  VCMPE.F32       S0, S19
2C89FE:  VMRS            APSR_nzcv, FPSCR
2C8A02:  BGT             loc_2C8A30
2C8A04:  SUB.W           R0, R4, #0xE4
2C8A08:  VMUL.F32        S25, S25, S27
2C8A0C:  VLDR            S2, [R0]
2C8A10:  VMUL.F32        S2, S2, S21
2C8A14:  VADD.F32        S0, S0, S2
2C8A18:  VDIV.F32        S0, S0, S25
2C8A1C:  VMOV            R0, S0; x
2C8A20:  BLX             floorf
2C8A24:  VDIV.F32        S0, S25, S26
2C8A28:  VMOV            S2, R0
2C8A2C:  VMUL.F32        S2, S0, S2
2C8A30:  VMUL.F32        S25, S2, S28
2C8A34:  ADD             R4, SP, #0x108+var_90
2C8A36:  VMOV            S0, R11
2C8A3A:  MOVS            R0, #0; this
2C8A3C:  VCVT.F32.S32    S27, S0
2C8A40:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2C8A44:  VMOV            S0, R0
2C8A48:  ADD             R0, SP, #0x108+var_78
2C8A4A:  VMUL.F32        S2, S22, S27
2C8A4E:  VSUB.F32        S0, S22, S0
2C8A52:  LDR.W           R1, [R0,R11,LSL#2]; CKeyGen *
2C8A56:  LDR             R0, [SP,#0x108+var_DC]; this
2C8A58:  VADD.F32        S2, S20, S2
2C8A5C:  VMUL.F32        S0, S0, S18
2C8A60:  VADD.F32        S27, S2, S0
2C8A64:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2C8A68:  VMOV            R1, S27; float
2C8A6C:  MOV             R2, R0; CFont *
2C8A6E:  LDR             R0, [SP,#0x108+var_E0]; this
2C8A70:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2C8A74:  MOVS            R0, #0; this
2C8A76:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2C8A7A:  ADD             R6, SP, #0x108+var_CC
2C8A7C:  MOV             R9, R0
2C8A7E:  LDR             R0, [SP,#0x108+var_D8]
2C8A80:  MOVS            R1, #0xC8; unsigned __int8
2C8A82:  STR             R0, [SP,#0x108+var_108]; unsigned __int8
2C8A84:  MOV             R0, R6; this
2C8A86:  MOVS            R2, #0xC8; unsigned __int8
2C8A88:  MOVS            R3, #0xC8; unsigned __int8
2C8A8A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8A8E:  MOV             R0, R5; this
2C8A90:  MOVS            R1, #0; unsigned __int8
2C8A92:  MOVS            R2, #0; unsigned __int8
2C8A94:  MOVS            R3, #0; unsigned __int8
2C8A96:  STR.W           R10, [SP,#0x108+var_108]; unsigned __int8
2C8A9A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C8A9E:  VADD.F32        S0, S27, S16
2C8AA2:  MOVS            R2, #1
2C8AA4:  VMOV            R0, S24
2C8AA8:  VCVT.S32.F32    S0, S0
2C8AAC:  VCVT.F32.S32    S0, S0
2C8AB0:  VMOV            R1, S0
2C8AB4:  VMOV            S0, R9
2C8AB8:  VADD.F32        S0, S0, S23
2C8ABC:  VCVT.S32.F32    S0, S0
2C8AC0:  STRD.W          R10, R10, [SP,#0x108+var_104]
2C8AC4:  STRD.W          R2, R6, [SP,#0x108+var_FC]
2C8AC8:  STR             R5, [SP,#0x108+var_F4]
2C8ACA:  VSTR            S25, [SP,#0x108+var_108]
2C8ACE:  VMOV            R2, S0
2C8AD2:  UXTB            R3, R2
2C8AD4:  MOV             R2, R8
2C8AD6:  BLX             j__ZN9CSprite2d12DrawBarChartEffthfahh5CRGBAS0_; CSprite2d::DrawBarChart(float,float,ushort,uchar,float,signed char,uchar,uchar,CRGBA,CRGBA)
2C8ADA:  LDR             R0, [SP,#0x108+var_D4]
2C8ADC:  ADD.W           R11, R11, #1
2C8AE0:  CMP             R11, R0
2C8AE2:  BLT.W           loc_2C89B4
2C8AE6:  ADD             SP, SP, #0xA8
2C8AE8:  VPOP            {D8-D15}
2C8AEC:  ADD             SP, SP, #4
2C8AEE:  POP.W           {R8-R11}
2C8AF2:  POP             {R4-R7,PC}
2C8AF4:  MOVS            R0, #5
2C8AF6:  B               loc_2C85FA
2C8AF8:  MOV.W           R0, #0xFFFFFFFF; int
2C8AFC:  MOVS            R1, #0; bool
2C8AFE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C8B02:  LDR.W           R0, [R0,#0x5A4]
2C8B06:  CMP             R0, #9
2C8B08:  BNE             loc_2C8B12
2C8B0A:  ADR             R0, aStat229; "STAT229"
2C8B0C:  STR             R0, [SP,#0x108+var_74]
2C8B0E:  MOVS            R0, #0xE5
2C8B10:  B               loc_2C859E
2C8B12:  MOV.W           R0, #0xFFFFFFFF; int
2C8B16:  MOVS            R1, #0; bool
2C8B18:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2C8B1C:  LDR.W           R0, [R0,#0x5A4]
2C8B20:  ADR             R1, aStat160; "STAT160"
2C8B22:  ADR             R2, aStat230; "STAT230"
2C8B24:  CMP             R0, #0xA
2C8B26:  MOV.W           R0, #0xA0
2C8B2A:  IT NE
2C8B2C:  MOVNE           R2, R1
2C8B2E:  STR             R2, [SP,#0x108+var_74]
2C8B30:  IT EQ
2C8B32:  MOVEQ           R0, #0xE6
2C8B34:  B               loc_2C859E
