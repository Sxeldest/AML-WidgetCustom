; =========================================================
; Game Engine Function: mpg123_format_all
; Address            : 0x2249B8 - 0x2249DC
; =========================================================

2249B8:  PUSH            {R4,R6,R7,LR}
2249BA:  ADD             R7, SP, #8
2249BC:  MOV             R4, R0
2249BE:  CBZ             R4, loc_2249D2
2249C0:  MOVW            R0, #0xB338
2249C4:  ADD             R0, R4
2249C6:  BLX             j_mpg123_fmt_all
2249CA:  CBZ             R0, loc_2249D8
2249CC:  MOVW            R1, #0xB468
2249D0:  STR             R0, [R4,R1]
2249D2:  MOV.W           R0, #0xFFFFFFFF
2249D6:  POP             {R4,R6,R7,PC}
2249D8:  MOVS            R0, #0
2249DA:  POP             {R4,R6,R7,PC}
