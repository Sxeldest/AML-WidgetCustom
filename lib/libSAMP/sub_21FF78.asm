; =========================================================
; Game Engine Function: sub_21FF78
; Address            : 0x21FF78 - 0x21FF8C
; =========================================================

21FF78:  PUSH            {R4,R6,R7,LR}
21FF7A:  ADD             R7, SP, #8
21FF7C:  MOV             R4, R0
21FF7E:  BLX             __errno
21FF82:  MOVS            R1, #0x54 ; 'T'
21FF84:  STR             R1, [R0]
21FF86:  MOVS            R0, #0
21FF88:  STR             R0, [R4]
21FF8A:  POP             {R4,R6,R7,PC}
