; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity28IsMissionAudioSampleFinishedEh
; Address            : 0x3A4DAC - 0x3A4DE6
; =========================================================

3A4DAC:  CMP             R1, #3
3A4DAE:  ITT HI
3A4DB0:  MOVHI           R0, #1
3A4DB2:  BXHI            LR
3A4DB4:  CMP             R1, #2
3A4DB6:  BCC             loc_3A4DD4
3A4DB8:  PUSH            {R7,LR}
3A4DBA:  MOV             R7, SP
3A4DBC:  LDR             R0, =(AESoundManager_ptr - 0x3A4DC4)
3A4DBE:  ADDS            R1, #0x1A; __int16
3A4DC0:  ADD             R0, PC; AESoundManager_ptr
3A4DC2:  LDR             R0, [R0]; AESoundManager ; this
3A4DC4:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3A4DC8:  MOV             R1, R0
3A4DCA:  MOVS            R0, #0
3A4DCC:  CMP             R1, #0
3A4DCE:  IT EQ
3A4DD0:  MOVEQ           R0, #1
3A4DD2:  POP             {R7,PC}
3A4DD4:  ADD.W           R0, R0, R1,LSL#5
3A4DD8:  LDR.W           R1, [R0,#0xA0]
3A4DDC:  MOVS            R0, #0
3A4DDE:  CMP             R1, #0
3A4DE0:  IT EQ
3A4DE2:  MOVEQ           R0, #1
3A4DE4:  BX              LR
