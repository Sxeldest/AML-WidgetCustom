; =========================================================
; Game Engine Function: sub_F236C
; Address            : 0xF236C - 0xF2396
; =========================================================

F236C:  SUB             SP, SP, #4
F236E:  PUSH            {R7,LR}
F2370:  MOV             R7, SP
F2372:  SUB             SP, SP, #0xC
F2374:  ADD.W           R1, R7, #8
F2378:  MOV             R12, R2
F237A:  STR             R3, [R7,#8]
F237C:  MOV.W           R2, #0x100
F2380:  STR             R1, [SP,#0x18+var_10]
F2382:  MOV             R3, R12
F2384:  STR             R1, [SP,#0x18+var_18]
F2386:  MOVS            R1, #0
F2388:  BLX             __vsprintf_chk
F238C:  ADD             SP, SP, #0xC
F238E:  POP.W           {R7,LR}
F2392:  ADD             SP, SP, #4
F2394:  BX              LR
