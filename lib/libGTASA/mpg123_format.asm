; =========================================================
; Game Engine Function: mpg123_format
; Address            : 0x224A68 - 0x224A8C
; =========================================================

224A68:  PUSH            {R4,R6,R7,LR}
224A6A:  ADD             R7, SP, #8
224A6C:  MOV             R4, R0
224A6E:  CBZ             R4, loc_224A82
224A70:  MOVW            R0, #0xB338
224A74:  ADD             R0, R4
224A76:  BLX             j_mpg123_fmt
224A7A:  CBZ             R0, loc_224A88
224A7C:  MOVW            R1, #0xB468
224A80:  STR             R0, [R4,R1]
224A82:  MOV.W           R0, #0xFFFFFFFF
224A86:  POP             {R4,R6,R7,PC}
224A88:  MOVS            R0, #0
224A8A:  POP             {R4,R6,R7,PC}
