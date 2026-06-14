; =========================================================
; Game Engine Function: mpg123_param
; Address            : 0x22F2E8 - 0x22F31A
; =========================================================

22F2E8:  PUSH            {R4,R6,R7,LR}
22F2EA:  ADD             R7, SP, #8
22F2EC:  SUB             SP, SP, #8; double
22F2EE:  MOV             R4, R0
22F2F0:  CBZ             R4, loc_22F30C
22F2F2:  MOVW            R0, #0xB338
22F2F6:  VLDR            D16, [R7,#arg_0]
22F2FA:  ADD             R0, R4; int
22F2FC:  VSTR            D16, [SP,#0x10+var_10]
22F300:  BLX             j_mpg123_par
22F304:  CBZ             R0, loc_22F314
22F306:  MOVW            R1, #0xB468
22F30A:  STR             R0, [R4,R1]
22F30C:  MOV.W           R0, #0xFFFFFFFF
22F310:  ADD             SP, SP, #8
22F312:  POP             {R4,R6,R7,PC}
22F314:  MOVS            R0, #0
22F316:  ADD             SP, SP, #8
22F318:  POP             {R4,R6,R7,PC}
