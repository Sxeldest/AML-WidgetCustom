; =========================================================
; Game Engine Function: _ZN10MobileMenu10InitForNagEv
; Address            : 0x29B590 - 0x29B648
; =========================================================

29B590:  PUSH            {R4-R7,LR}
29B592:  ADD             R7, SP, #0xC
29B594:  PUSH.W          {R8}
29B598:  LDR             R1, =(byte_61CD7E - 0x29B5A6)
29B59A:  MOV             R4, R0
29B59C:  LDR             R0, =(aIsamazonbuild_1 - 0x29B5AC); "IsAmazonBuild"
29B59E:  MOV.W           R8, #0
29B5A2:  ADD             R1, PC; byte_61CD7E ; char *
29B5A4:  STRB.W          R8, [R4,#0x55]
29B5A8:  ADD             R0, PC; "IsAmazonBuild"
29B5AA:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
29B5AE:  CMP             R0, #0
29B5B0:  BNE             loc_29B642
29B5B2:  MOV             R0, R4; this
29B5B4:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B5B8:  MOVS            R0, #0x54 ; 'T'; unsigned int
29B5BA:  BLX             _Znwj; operator new(uint)
29B5BE:  ADR             R1, aFehRte; "FEH_RTE"
29B5C0:  MOVS            R2, #0; bool
29B5C2:  MOV             R5, R0
29B5C4:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
29B5C8:  LDR             R0, =(_ZTV11YesNoScreen_ptr - 0x29B5D4)
29B5CA:  ADD.W           R2, R5, #0x44 ; 'D'
29B5CE:  LDR             R1, =(_Z13Menu_RateGamePv_ptr - 0x29B5D6)
29B5D0:  ADD             R0, PC; _ZTV11YesNoScreen_ptr
29B5D2:  ADD             R1, PC; _Z13Menu_RateGamePv_ptr
29B5D4:  LDR             R0, [R0]; `vtable for'YesNoScreen ...
29B5D6:  LDR             R1, [R1]; Menu_RateGame(void *)
29B5D8:  ADDS            R0, #8
29B5DA:  STR             R0, [R5]
29B5DC:  ADR             R0, aSaRate; "SA_RATE"
29B5DE:  STM.W           R2, {R0,R1,R8}
29B5E2:  STR.W           R8, [R5,#0x50]
29B5E6:  BLX             j__Z19CachePlayerControlsv; CachePlayerControls(void)
29B5EA:  MOVS            R0, #0x10; unsigned int
29B5EC:  BLX             _Znwj; operator new(uint)
29B5F0:  MOV             R1, R0; SelectScreen::MenuSelection *
29B5F2:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x29B5FA)
29B5F4:  LDR             R2, =(_ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr - 0x29B5FE)
29B5F6:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
29B5F8:  LDR             R3, =(aFemNo - 0x29B602); "FEM_NO"
29B5FA:  ADD             R2, PC; _ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr
29B5FC:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
29B5FE:  ADD             R3, PC; "FEM_NO"
29B600:  LDR             R2, [R2]; YesNoScreen::NoFunc(SelectScreen *,int)
29B602:  ADD.W           R6, R0, #8
29B606:  MOV             R0, R5; this
29B608:  STRD.W          R6, R3, [R1]
29B60C:  STRD.W          R2, R8, [R1,#8]
29B610:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29B614:  MOVS            R0, #0x10; unsigned int
29B616:  BLX             _Znwj; operator new(uint)
29B61A:  MOV             R1, R0; SelectScreen::MenuSelection *
29B61C:  LDR             R0, =(_ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr - 0x29B624)
29B61E:  LDR             R2, =(aFemYes - 0x29B626); "FEM_YES"
29B620:  ADD             R0, PC; _ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr
29B622:  ADD             R2, PC; "FEM_YES"
29B624:  LDR             R0, [R0]; YesNoScreen::YesFunc(SelectScreen *,int)
29B626:  STRD.W          R6, R2, [R1]
29B62A:  STRD.W          R0, R8, [R1,#8]
29B62E:  MOV             R0, R5; this
29B630:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29B634:  LDR             R0, [R4,#0x2C]
29B636:  CMP             R0, #0
29B638:  ITT NE
29B63A:  MOVNE           R0, R4; this
29B63C:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B640:  STR             R5, [R4,#0x2C]
29B642:  POP.W           {R8}
29B646:  POP             {R4-R7,PC}
