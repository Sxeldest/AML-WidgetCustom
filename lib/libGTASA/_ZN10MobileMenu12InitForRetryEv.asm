; =========================================================
; Game Engine Function: _ZN10MobileMenu12InitForRetryEv
; Address            : 0x29B320 - 0x29B3CA
; =========================================================

29B320:  PUSH            {R4-R7,LR}
29B322:  ADD             R7, SP, #0xC
29B324:  PUSH.W          {R8}
29B328:  MOV             R4, R0
29B32A:  MOV.W           R8, #0
29B32E:  STRB.W          R8, [R4,#0x55]
29B332:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B336:  MOVS            R0, #0x54 ; 'T'; unsigned int
29B338:  BLX             _Znwj; operator new(uint)
29B33C:  ADR             R1, aFeszMf; "FESZ_MF"
29B33E:  MOVS            R2, #0; bool
29B340:  MOV             R5, R0
29B342:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
29B346:  LDR             R0, =(_ZTV11YesNoScreen_ptr - 0x29B352)
29B348:  ADD.W           R3, R5, #0x44 ; 'D'
29B34C:  LDR             R1, =(_Z21Menu_DontRetryMissionPv_ptr - 0x29B356)
29B34E:  ADD             R0, PC; _ZTV11YesNoScreen_ptr
29B350:  LDR             R2, =(_Z24Menu_RetryMissionWrappedPv_ptr - 0x29B35A)
29B352:  ADD             R1, PC; _Z21Menu_DontRetryMissionPv_ptr
29B354:  LDR             R0, [R0]; `vtable for'YesNoScreen ...
29B356:  ADD             R2, PC; _Z24Menu_RetryMissionWrappedPv_ptr
29B358:  LDR             R1, [R1]; Menu_DontRetryMission(void *)
29B35A:  ADDS            R0, #8
29B35C:  STR             R0, [R5]
29B35E:  ADR             R0, aFeszRm; "FESZ_RM"
29B360:  LDR             R2, [R2]; Menu_RetryMissionWrapped(void *)
29B362:  STM.W           R3, {R0,R2,R8}
29B366:  STR             R1, [R5,#0x50]
29B368:  BLX             j__Z19CachePlayerControlsv; CachePlayerControls(void)
29B36C:  MOVS            R0, #0x10; unsigned int
29B36E:  BLX             _Znwj; operator new(uint)
29B372:  MOV             R1, R0; SelectScreen::MenuSelection *
29B374:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x29B37C)
29B376:  LDR             R2, =(_ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr - 0x29B380)
29B378:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
29B37A:  LDR             R3, =(aFemNo - 0x29B384); "FEM_NO"
29B37C:  ADD             R2, PC; _ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr
29B37E:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
29B380:  ADD             R3, PC; "FEM_NO"
29B382:  LDR             R2, [R2]; YesNoScreen::NoFunc(SelectScreen *,int)
29B384:  ADD.W           R6, R0, #8
29B388:  MOV             R0, R5; this
29B38A:  STRD.W          R6, R3, [R1]
29B38E:  STRD.W          R2, R8, [R1,#8]
29B392:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29B396:  MOVS            R0, #0x10; unsigned int
29B398:  BLX             _Znwj; operator new(uint)
29B39C:  MOV             R1, R0; SelectScreen::MenuSelection *
29B39E:  LDR             R0, =(_ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr - 0x29B3A6)
29B3A0:  LDR             R2, =(aFemYes - 0x29B3A8); "FEM_YES"
29B3A2:  ADD             R0, PC; _ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr
29B3A4:  ADD             R2, PC; "FEM_YES"
29B3A6:  LDR             R0, [R0]; YesNoScreen::YesFunc(SelectScreen *,int)
29B3A8:  STRD.W          R6, R2, [R1]
29B3AC:  STRD.W          R0, R8, [R1,#8]
29B3B0:  MOV             R0, R5; this
29B3B2:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29B3B6:  LDR             R0, [R4,#0x2C]
29B3B8:  CMP             R0, #0
29B3BA:  ITT NE
29B3BC:  MOVNE           R0, R4; this
29B3BE:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B3C2:  STR             R5, [R4,#0x2C]
29B3C4:  POP.W           {R8}
29B3C8:  POP             {R4-R7,PC}
