; =========================================================
; Game Engine Function: _ZN8CGarages13PrintMessagesEv
; Address            : 0x31353C - 0x31371E
; =========================================================

31353C:  PUSH            {R4,R6,R7,LR}
31353E:  ADD             R7, SP, #8
313540:  VPUSH           {D8}
313544:  SUB             SP, SP, #0x18
313546:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31354E)
313548:  LDR             R1, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x313550)
31354A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31354C:  ADD             R1, PC; _ZN8CGarages16MessageStartTimeE_ptr
31354E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
313550:  LDR             R1, [R1]; CGarages::MessageStartTime ...
313552:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
313554:  LDR             R1, [R1]; CGarages::MessageStartTime
313556:  CMP             R0, R1
313558:  BCC             loc_31364A
31355A:  LDR             R1, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x313560)
31355C:  ADD             R1, PC; _ZN8CGarages14MessageEndTimeE_ptr
31355E:  LDR             R1, [R1]; CGarages::MessageEndTime ...
313560:  LDR             R1, [R1]; float
313562:  CMP             R0, R1
313564:  BCS             loc_31364A
313566:  LDR             R0, =(RsGlobal_ptr - 0x313570)
313568:  VLDR            S16, =448.0
31356C:  ADD             R0, PC; RsGlobal_ptr
31356E:  VLDR            S2, =1.4
313572:  LDR             R4, [R0]; RsGlobal
313574:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
313576:  VMOV            S0, R0
31357A:  VCVT.F32.S32    S0, S0
31357E:  VDIV.F32        S0, S0, S16
313582:  VMUL.F32        S0, S0, S2
313586:  VMOV            R0, S0; this
31358A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
31358E:  MOVS            R0, #(stderr+1); this
313590:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
313594:  MOVS            R0, #0; this
313596:  MOVS            R1, #0; unsigned __int8
313598:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
31359C:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
31359E:  VLDR            S2, =-640.0
3135A2:  VLDR            S4, =230.0
3135A6:  VMOV            S0, R0
3135AA:  VCVT.F32.S32    S0, S0
3135AE:  VDIV.F32        S2, S0, S2
3135B2:  VMUL.F32        S2, S2, S4
3135B6:  VADD.F32        S0, S0, S2
3135BA:  VMOV            R0, S0; this
3135BE:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
3135C2:  MOVS            R0, #0; this
3135C4:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
3135C8:  MOVS            R0, #(stderr+2); this
3135CA:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
3135CE:  LDR             R0, =(HudColour_ptr - 0x3135D8)
3135D0:  ADD             R4, SP, #0x28+var_14
3135D2:  MOVS            R2, #3
3135D4:  ADD             R0, PC; HudColour_ptr
3135D6:  LDR             R1, [R0]; HudColour ; unsigned __int8
3135D8:  MOV             R0, R4; this
3135DA:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
3135DE:  MOV             R0, R4
3135E0:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
3135E4:  MOVS            R0, #(stderr+2); this
3135E6:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
3135EA:  MOVS            R0, #0xFF
3135EC:  MOVS            R1, #0; unsigned __int8
3135EE:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
3135F0:  ADD             R0, SP, #0x28+var_18; this
3135F2:  MOVS            R2, #0; unsigned __int8
3135F4:  MOVS            R3, #0; unsigned __int8
3135F6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
3135FA:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
3135FE:  LDR             R0, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x313604)
313600:  ADD             R0, PC; _ZN8CGarages22MessageNumberInString2E_ptr
313602:  LDR             R0, [R0]; CGarages::MessageNumberInString2 ...
313604:  LDR             R0, [R0]; CGarages::MessageNumberInString2
313606:  CMP             R0, #0
313608:  BLT             loc_313656
31360A:  LDR             R0, =(TheText_ptr - 0x313612)
31360C:  LDR             R1, =(_ZN8CGarages15MessageIDStringE_ptr - 0x313614)
31360E:  ADD             R0, PC; TheText_ptr
313610:  ADD             R1, PC; _ZN8CGarages15MessageIDStringE_ptr
313612:  LDR             R0, [R0]; TheText ; this
313614:  LDR             R1, [R1]; CKeyGen *
313616:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
31361A:  LDR             R1, =(_ZN8CGarages22MessageNumberInString2E_ptr - 0x313622)
31361C:  LDR             R2, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x313626)
31361E:  ADD             R1, PC; _ZN8CGarages22MessageNumberInString2E_ptr
313620:  LDR             R3, =(gGxtString_ptr - 0x31362A)
313622:  ADD             R2, PC; _ZN8CGarages21MessageNumberInStringE_ptr
313624:  LDR             R1, [R1]; CGarages::MessageNumberInString2 ...
313626:  ADD             R3, PC; gGxtString_ptr
313628:  LDR             R4, [R2]; CGarages::MessageNumberInString ...
31362A:  LDR             R2, [R1]; int
31362C:  LDR             R1, [R4]; unsigned __int16 *
31362E:  LDR             R4, [R3]; gGxtString
313630:  MOV.W           R3, #0xFFFFFFFF
313634:  STRD.W          R3, R3, [SP,#0x28+var_28]; int
313638:  STRD.W          R3, R4, [SP,#0x28+var_20]; int
31363C:  MOV.W           R3, #0xFFFFFFFF; int
313640:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
313644:  LDR             R0, =(RsGlobal_ptr - 0x31364A)
313646:  ADD             R0, PC; RsGlobal_ptr
313648:  B               loc_31369C
31364A:  LDR             R0, =(_ZN8CGarages15MessageIDStringE_ptr - 0x313652)
31364C:  MOVS            R1, #0
31364E:  ADD             R0, PC; _ZN8CGarages15MessageIDStringE_ptr
313650:  LDR             R0, [R0]; CGarages::MessageIDString ...
313652:  STRB            R1, [R0]; CGarages::MessageIDString
313654:  B               loc_3136D0
313656:  LDR             R0, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x31365C)
313658:  ADD             R0, PC; _ZN8CGarages21MessageNumberInStringE_ptr
31365A:  LDR             R0, [R0]; CGarages::MessageNumberInString ...
31365C:  LDR             R0, [R0]; CGarages::MessageNumberInString
31365E:  CMP             R0, #0
313660:  BLT             loc_3136D8
313662:  LDR             R0, =(TheText_ptr - 0x31366A)
313664:  LDR             R1, =(_ZN8CGarages15MessageIDStringE_ptr - 0x31366C)
313666:  ADD             R0, PC; TheText_ptr
313668:  ADD             R1, PC; _ZN8CGarages15MessageIDStringE_ptr
31366A:  LDR             R0, [R0]; TheText ; this
31366C:  LDR             R1, [R1]; CKeyGen *
31366E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
313672:  LDR             R1, =(_ZN8CGarages21MessageNumberInStringE_ptr - 0x31367E)
313674:  MOV.W           R3, #0xFFFFFFFF; int
313678:  LDR             R2, =(gGxtString_ptr - 0x313680)
31367A:  ADD             R1, PC; _ZN8CGarages21MessageNumberInStringE_ptr
31367C:  ADD             R2, PC; gGxtString_ptr
31367E:  LDR             R1, [R1]; CGarages::MessageNumberInString ...
313680:  LDR             R4, [R2]; gGxtString
313682:  MOV.W           R2, #0xFFFFFFFF
313686:  LDR             R1, [R1]; unsigned __int16 *
313688:  STRD.W          R2, R2, [SP,#0x28+var_28]; int
31368C:  STRD.W          R2, R4, [SP,#0x28+var_20]; int
313690:  MOV.W           R2, #0xFFFFFFFF; int
313694:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
313698:  LDR             R0, =(RsGlobal_ptr - 0x31369E)
31369A:  ADD             R0, PC; RsGlobal_ptr
31369C:  LDR             R0, [R0]; RsGlobal
31369E:  MOV             R2, R4; CFont *
3136A0:  VLDR            S2, =155.0
3136A4:  VLDR            S0, [R0,#8]
3136A8:  VCVT.F32.S32    S0, S0
3136AC:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
3136AE:  ADD.W           R0, R0, R0,LSR#31
3136B2:  ASRS            R0, R0, #1
3136B4:  VMOV            S4, R0
3136B8:  VDIV.F32        S0, S0, S16
3136BC:  VCVT.F32.S32    S4, S4
3136C0:  VMUL.F32        S0, S0, S2
3136C4:  VMOV            R0, S4; this
3136C8:  VMOV            R1, S0; float
3136CC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
3136D0:  ADD             SP, SP, #0x18
3136D2:  VPOP            {D8}
3136D6:  POP             {R4,R6,R7,PC}
3136D8:  LDR             R0, =(RsGlobal_ptr - 0x3136E0)
3136DA:  LDR             R1, =(TheText_ptr - 0x3136E4)
3136DC:  ADD             R0, PC; RsGlobal_ptr
3136DE:  LDR             R2, =(_ZN8CGarages15MessageIDStringE_ptr - 0x3136EC)
3136E0:  ADD             R1, PC; TheText_ptr
3136E2:  VLDR            S2, =155.0
3136E6:  LDR             R0, [R0]; RsGlobal
3136E8:  ADD             R2, PC; _ZN8CGarages15MessageIDStringE_ptr
3136EA:  VLDR            S0, [R0,#8]
3136EE:  VCVT.F32.S32    S0, S0
3136F2:  LDR             R4, [R0,#(dword_9FC900 - 0x9FC8FC)]
3136F4:  LDR             R0, [R1]; TheText ; this
3136F6:  LDR             R1, [R2]; CKeyGen *
3136F8:  VDIV.F32        S0, S0, S16
3136FC:  VMUL.F32        S16, S0, S2
313700:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
313704:  MOV             R2, R0
313706:  ADD.W           R0, R4, R4,LSR#31
31370A:  VMOV            R1, S16
31370E:  ASRS            R0, R0, #1
313710:  VMOV            S0, R0
313714:  VCVT.F32.S32    S0, S0
313718:  VMOV            R0, S0
31371C:  B               loc_3136CC
