; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity17ClearMissionAudioEh
; Address            : 0x3A4604 - 0x3A463C
; =========================================================

3A4604:  PUSH            {R4,R5,R7,LR}
3A4606:  ADD             R7, SP, #8
3A4608:  MOV             R4, R1
3A460A:  MOV             R5, R0
3A460C:  CMP             R4, #3
3A460E:  IT HI
3A4610:  POPHI           {R4,R5,R7,PC}
3A4612:  LDR             R0, =(AESoundManager_ptr - 0x3A461E)
3A4614:  ADD.W           R1, R4, #0x1A; __int16
3A4618:  MOVS            R2, #1; unsigned __int8
3A461A:  ADD             R0, PC; AESoundManager_ptr
3A461C:  LDR             R0, [R0]; AESoundManager ; this
3A461E:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3A4622:  MOVS            R2, #0
3A4624:  ADD.W           R0, R5, R4,LSL#5
3A4628:  MOVT            R2, #0xC47A
3A462C:  MOVS            R1, #0
3A462E:  STRD.W          R2, R2, [R0,#0x90]
3A4632:  STRD.W          R2, R1, [R0,#0x98]
3A4636:  STR.W           R1, [R0,#0xA0]
3A463A:  POP             {R4,R5,R7,PC}
