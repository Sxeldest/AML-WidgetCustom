; =========================================================
; Game Engine Function: silk_insertion_sort_increasing_all_values_int16
; Address            : 0x1966A2 - 0x1966EA
; =========================================================

1966A2:  PUSH            {R4,R5,R7,LR}
1966A4:  ADD             R7, SP, #8
1966A6:  CMP             R1, #2
1966A8:  IT LT
1966AA:  POPLT           {R4,R5,R7,PC}
1966AC:  MOV.W           LR, #1
1966B0:  MOV.W           R12, #0
1966B4:  LDRSH.W         R3, [R0,LR,LSL#1]
1966B8:  MOV             R2, R12
1966BA:  LDRSH.W         R4, [R0,R2,LSL#1]
1966BE:  CMP             R3, R4
1966C0:  BGE             loc_1966D6
1966C2:  ADD.W           R5, R0, R2,LSL#1
1966C6:  STRH            R4, [R5,#2]
1966C8:  SUBS            R4, R2, #1
1966CA:  ADDS            R2, #1
1966CC:  CMP             R2, #1
1966CE:  MOV             R2, R4
1966D0:  BGT             loc_1966BA
1966D2:  ADDS            R2, R4, #1
1966D4:  B               loc_1966D8
1966D6:  ADDS            R2, #1
1966D8:  ADD.W           LR, LR, #1
1966DC:  ADD.W           R12, R12, #1
1966E0:  CMP             LR, R1
1966E2:  STRH.W          R3, [R0,R2,LSL#1]
1966E6:  BNE             loc_1966B4
1966E8:  POP             {R4,R5,R7,PC}
