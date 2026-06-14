; =========================================================
; Game Engine Function: _ZN15CMissionCleanup8FindFreeEv
; Address            : 0x327350 - 0x327368
; =========================================================

327350:  MOVS            R1, #0
327352:  LDRB            R2, [R0]
327354:  CMP             R2, #0
327356:  IT EQ
327358:  BXEQ            LR
32735A:  ADDS            R1, #1
32735C:  ADDS            R0, #8
32735E:  UXTH            R2, R1
327360:  CMP             R2, #0x4B ; 'K'
327362:  BCC             loc_327352
327364:  MOVS            R0, #0
327366:  BX              LR
