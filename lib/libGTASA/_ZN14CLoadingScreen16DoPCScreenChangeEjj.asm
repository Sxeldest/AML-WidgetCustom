; =========================================================
; Game Engine Function: _ZN14CLoadingScreen16DoPCScreenChangeEjj
; Address            : 0x43B2E0 - 0x43B3C8
; =========================================================

43B2E0:  PUSH            {R4,R5,R7,LR}
43B2E2:  ADD             R7, SP, #8
43B2E4:  MOV             R5, R0
43B2E6:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43B2F2)
43B2E8:  LDR             R2, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B2F4)
43B2EA:  CMP             R5, #0
43B2EC:  LDR             R3, =(_ZN14CLoadingScreen15m_PercentLoadedE_ptr - 0x43B2F6)
43B2EE:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43B2F0:  ADD             R2, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B2F2:  ADD             R3, PC; _ZN14CLoadingScreen15m_PercentLoadedE_ptr
43B2F4:  LDR             R4, [R0]; CLoadingScreen::m_bActive ...
43B2F6:  LDR             R2, [R2]; CLoadingScreen::m_bFading ...
43B2F8:  MOV.W           R0, #1
43B2FC:  LDR             R3, [R3]; CLoadingScreen::m_PercentLoaded ...
43B2FE:  STRB            R0, [R4]; CLoadingScreen::m_bActive
43B300:  STRB            R0, [R2]; CLoadingScreen::m_bFading
43B302:  MOV.W           R2, #0
43B306:  STR             R2, [R3]; CLoadingScreen::m_PercentLoaded
43B308:  BEQ             loc_43B394
43B30A:  LDR             R1, =(_ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr - 0x43B312)
43B30C:  LDR             R2, =(_ZN14CLoadingScreen15m_nChunksToLoadE_ptr - 0x43B314)
43B30E:  ADD             R1, PC; _ZN14CLoadingScreen27m_bFadeOutCurrSplashToBlackE_ptr
43B310:  ADD             R2, PC; _ZN14CLoadingScreen15m_nChunksToLoadE_ptr
43B312:  LDR             R1, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack ...
43B314:  LDR             R2, [R2]; CLoadingScreen::m_nChunksToLoad ...
43B316:  STRB            R0, [R1]; CLoadingScreen::m_bFadeOutCurrSplashToBlack
43B318:  MOVS            R0, #0x8C
43B31A:  STR             R0, [R2]; CLoadingScreen::m_nChunksToLoad
43B31C:  LDR             R0, =(_ZN14CLoadingScreen11m_FadeAlphaE_ptr - 0x43B324)
43B31E:  MOVS            R1, #0xFF
43B320:  ADD             R0, PC; _ZN14CLoadingScreen11m_FadeAlphaE_ptr
43B322:  LDR             R0, [R0]; this
43B324:  STRB            R1, [R0]; CLoadingScreen::m_FadeAlpha
43B326:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
43B32A:  LDR             R0, =(_ZN14CLoadingScreen9m_bFadingE_ptr - 0x43B334)
43B32C:  CMP             R5, #0
43B32E:  LDR             R1, =(_ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr - 0x43B336)
43B330:  ADD             R0, PC; _ZN14CLoadingScreen9m_bFadingE_ptr
43B332:  ADD             R1, PC; _ZN14CLoadingScreen28m_bFadeInNextSplashFromBlackE_ptr
43B334:  LDR             R2, [R0]; CLoadingScreen::m_bFading ...
43B336:  MOV.W           R0, #0
43B33A:  LDR             R1, [R1]; CLoadingScreen::m_bFadeInNextSplashFromBlack ...
43B33C:  STRB            R0, [R2]; CLoadingScreen::m_bFading
43B33E:  STRB            R0, [R1]; CLoadingScreen::m_bFadeInNextSplashFromBlack
43B340:  IT EQ
43B342:  POPEQ           {R4,R5,R7,PC}
43B344:  LDR             R1, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43B34C)
43B346:  LDR             R2, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43B34E)
43B348:  ADD             R1, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43B34A:  ADD             R2, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43B34C:  LDR             R1, [R1]; CLoadingScreen::m_aSplashes ...
43B34E:  LDR             R2, [R2]; CLoadingScreen::m_bActive ...
43B350:  LDR             R1, [R1]; CLoadingScreen::m_aSplashes
43B352:  STRB            R0, [R2]; CLoadingScreen::m_bActive
43B354:  CBZ             R1, loc_43B360
43B356:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43B35C)
43B358:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43B35A:  LDR             R0, [R0]; this
43B35C:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
43B360:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43B366)
43B362:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43B364:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes ...
43B366:  LDR             R0, [R0,#(dword_9920A8 - 0x9920A4)]
43B368:  CBZ             R0, loc_43B376
43B36A:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43B370)
43B36C:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43B36E:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes ...
43B370:  ADDS            R0, #4; this
43B372:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
43B376:  LDR             R0, =(aLoadscs - 0x43B37C); "loadscs"
43B378:  ADD             R0, PC; "loadscs"
43B37A:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
43B37E:  MOV             R4, R0
43B380:  ADDS            R0, R4, #1
43B382:  BEQ             locret_43B3C6
43B384:  MOV             R0, R4; this
43B386:  BLX             j__ZN9CTxdStore9RemoveTxdEi; CTxdStore::RemoveTxd(int)
43B38A:  MOV             R0, R4; this
43B38C:  POP.W           {R4,R5,R7,LR}
43B390:  B.W             j_j__ZN9CTxdStore13RemoveTxdSlotEi; j_CTxdStore::RemoveTxdSlot(int)
43B394:  LDR             R0, =(_ZN14CLoadingScreen15m_nChunksToLoadE_ptr - 0x43B3A0)
43B396:  MOVS            R3, #0x8C
43B398:  LDR             R2, =(_ZN14CLoadingScreen17m_numChunksLoadedE_ptr - 0x43B3A2)
43B39A:  CMP             R1, #0
43B39C:  ADD             R0, PC; _ZN14CLoadingScreen15m_nChunksToLoadE_ptr
43B39E:  ADD             R2, PC; _ZN14CLoadingScreen17m_numChunksLoadedE_ptr
43B3A0:  LDR             R0, [R0]; CLoadingScreen::m_nChunksToLoad ...
43B3A2:  LDR             R2, [R2]; CLoadingScreen::m_numChunksLoaded ...
43B3A4:  STR             R3, [R0]; CLoadingScreen::m_nChunksToLoad
43B3A6:  MOV.W           R0, #0xFFFFFFFF
43B3AA:  STR             R0, [R2]; CLoadingScreen::m_numChunksLoaded
43B3AC:  BEQ             loc_43B31C
43B3AE:  LDR             R0, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B3B4)
43B3B0:  ADD             R0, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B3B2:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash ...
43B3B4:  LDR             R0, [R0]; CLoadingScreen::m_currDisplayedSplash
43B3B6:  CMP             R0, #0
43B3B8:  BGT             loc_43B31C
43B3BA:  LDR             R1, =(_ZN14CLoadingScreen21m_currDisplayedSplashE_ptr - 0x43B3C2)
43B3BC:  ADDS            R0, #1
43B3BE:  ADD             R1, PC; _ZN14CLoadingScreen21m_currDisplayedSplashE_ptr
43B3C0:  LDR             R1, [R1]; CLoadingScreen::m_currDisplayedSplash ...
43B3C2:  STR             R0, [R1]; CLoadingScreen::m_currDisplayedSplash
43B3C4:  B               loc_43B31C
43B3C6:  POP             {R4,R5,R7,PC}
