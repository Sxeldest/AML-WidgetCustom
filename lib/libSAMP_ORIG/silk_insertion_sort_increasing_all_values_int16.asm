; =========================================================
; Game Engine Function: silk_insertion_sort_increasing_all_values_int16
; Address            : 0xB847E - 0xB84C6
; =========================================================

B847E:  PUSH            {R4,R5,R7,LR}
B8480:  ADD             R7, SP, #8
B8482:  CMP             R1, #2
B8484:  IT LT
B8486:  POPLT           {R4,R5,R7,PC}
B8488:  MOV.W           LR, #1
B848C:  MOV.W           R12, #0
B8490:  LDRSH.W         R3, [R0,LR,LSL#1]
B8494:  MOV             R2, R12
B8496:  LDRSH.W         R4, [R0,R2,LSL#1]
B849A:  CMP             R3, R4
B849C:  BGE             loc_B84B2
B849E:  ADD.W           R5, R0, R2,LSL#1
B84A2:  STRH            R4, [R5,#2]
B84A4:  SUBS            R4, R2, #1
B84A6:  ADDS            R2, #1
B84A8:  CMP             R2, #1
B84AA:  MOV             R2, R4
B84AC:  BGT             loc_B8496
B84AE:  ADDS            R2, R4, #1
B84B0:  B               loc_B84B4
B84B2:  ADDS            R2, #1
B84B4:  ADD.W           LR, LR, #1
B84B8:  ADD.W           R12, R12, #1
B84BC:  CMP             LR, R1
B84BE:  STRH.W          R3, [R0,R2,LSL#1]
B84C2:  BNE             loc_B8490
B84C4:  POP             {R4,R5,R7,PC}
