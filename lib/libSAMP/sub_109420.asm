; =========================================================
; Game Engine Function: sub_109420
; Address            : 0x109420 - 0x10944E
; =========================================================

109420:  CBZ             R0, loc_10944A
109422:  PUSH            {R4,R5,R7,LR}
109424:  ADD             R7, SP, #8
109426:  MOV             R4, R0
109428:  MOVS            R0, #0x27 ; '''; name
10942A:  BLX             sysconf
10942E:  MOV             R5, R0
109430:  MOV             R0, R4
109432:  MOV             R1, R5
109434:  BLX             sub_221798
109438:  SUBS            R0, R4, R1; addr
10943A:  MOV             R1, R5; len
10943C:  MOVS            R2, #1; flags
10943E:  BLX             msync
109442:  CLZ.W           R0, R0
109446:  LSRS            R0, R0, #5
109448:  POP             {R4,R5,R7,PC}
10944A:  MOVS            R0, #0
10944C:  BX              LR
