; =========================================================
; Game Engine Function: _ZN14CLoadingScreen8ShutdownEb
; Address            : 0x43ADC4 - 0x43AE1C
; =========================================================

43ADC4:  PUSH            {R4,R6,R7,LR}
43ADC6:  ADD             R7, SP, #8
43ADC8:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43ADD2)
43ADCA:  MOVS            R2, #0
43ADCC:  LDR             R1, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x43ADD4)
43ADCE:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43ADD0:  ADD             R1, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
43ADD2:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes ...
43ADD4:  LDR             R1, [R1]; CLoadingScreen::m_bActive ...
43ADD6:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes
43ADD8:  STRB            R2, [R1]; CLoadingScreen::m_bActive
43ADDA:  CBZ             R0, loc_43ADE6
43ADDC:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43ADE2)
43ADDE:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43ADE0:  LDR             R0, [R0]; this
43ADE2:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
43ADE6:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43ADEC)
43ADE8:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43ADEA:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes ...
43ADEC:  LDR             R0, [R0,#(dword_9920A8 - 0x9920A4)]
43ADEE:  CBZ             R0, loc_43ADFC
43ADF0:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43ADF6)
43ADF2:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43ADF4:  LDR             R0, [R0]; CLoadingScreen::m_aSplashes ...
43ADF6:  ADDS            R0, #4; this
43ADF8:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
43ADFC:  LDR             R0, =(aLoadscs - 0x43AE02); "loadscs"
43ADFE:  ADD             R0, PC; "loadscs"
43AE00:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
43AE04:  MOV             R4, R0
43AE06:  ADDS            R0, R4, #1
43AE08:  IT EQ
43AE0A:  POPEQ           {R4,R6,R7,PC}
43AE0C:  MOV             R0, R4; this
43AE0E:  BLX             j__ZN9CTxdStore9RemoveTxdEi; CTxdStore::RemoveTxd(int)
43AE12:  MOV             R0, R4; this
43AE14:  POP.W           {R4,R6,R7,LR}
43AE18:  B.W             j_j__ZN9CTxdStore13RemoveTxdSlotEi; j_CTxdStore::RemoveTxdSlot(int)
