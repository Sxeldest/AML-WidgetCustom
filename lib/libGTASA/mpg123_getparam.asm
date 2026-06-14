; =========================================================
; Game Engine Function: mpg123_getparam
; Address            : 0x22F438 - 0x22F45C
; =========================================================

22F438:  PUSH            {R4,R6,R7,LR}
22F43A:  ADD             R7, SP, #8
22F43C:  MOV             R4, R0
22F43E:  CBZ             R4, loc_22F452
22F440:  MOVW            R0, #0xB338
22F444:  ADD             R0, R4
22F446:  BLX             j_mpg123_getpar
22F44A:  CBZ             R0, loc_22F458
22F44C:  MOVW            R1, #0xB468
22F450:  STR             R0, [R4,R1]
22F452:  MOV.W           R0, #0xFFFFFFFF
22F456:  POP             {R4,R6,R7,PC}
22F458:  MOVS            R0, #0
22F45A:  POP             {R4,R6,R7,PC}
