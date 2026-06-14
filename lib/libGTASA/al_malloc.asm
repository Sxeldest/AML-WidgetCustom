; =========================================================
; Game Engine Function: al_malloc
; Address            : 0x261374 - 0x2613A6
; =========================================================

261374:  PUSH            {R4,R6,R7,LR}
261376:  ADD             R7, SP, #8
261378:  MOV             R4, R0
26137A:  ADDS            R0, R1, R4; byte_count
26137C:  BLX             malloc
261380:  MOV             R1, R0
261382:  MOVS            R0, #0
261384:  CMP             R1, #0
261386:  IT EQ
261388:  POPEQ           {R4,R6,R7,PC}
26138A:  STRB.W          R0, [R1],#1
26138E:  SUBS            R2, R4, #1
261390:  TST             R2, R1
261392:  BEQ             loc_2613A2
261394:  MOVS            R3, #0x55 ; 'U'
261396:  MOV             R0, R1
261398:  STRB.W          R3, [R0],#1
26139C:  TST             R2, R0
26139E:  BNE             loc_261398
2613A0:  POP             {R4,R6,R7,PC}
2613A2:  MOV             R0, R1
2613A4:  POP             {R4,R6,R7,PC}
