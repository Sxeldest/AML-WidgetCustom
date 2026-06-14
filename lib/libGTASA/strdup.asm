; =========================================================
; Game Engine Function: strdup
; Address            : 0x2231CE - 0x2231EE
; =========================================================

2231CE:  PUSH            {R4,R6,R7,LR}
2231D0:  ADD             R7, SP, #8
2231D2:  MOV             R4, R0
2231D4:  BLX             strlen
2231D8:  ADDS            R0, #1; byte_count
2231DA:  BLX             malloc
2231DE:  CBZ             R0, loc_2231EA
2231E0:  MOV             R1, R4; char *
2231E2:  POP.W           {R4,R6,R7,LR}
2231E6:  B.W             j_strcpy
2231EA:  MOVS            R0, #0
2231EC:  POP             {R4,R6,R7,PC}
