; =========================================================
; Game Engine Function: sub_1006C6
; Address            : 0x1006C6 - 0x1006DE
; =========================================================

1006C6:  SUBS            R3, R1, R0
1006C8:  IT EQ
1006CA:  BXEQ            LR
1006CC:  PUSH            {R4,R6,R7,LR}
1006CE:  ADD             R7, SP, #0x10+var_8
1006D0:  MOV             R4, R0
1006D2:  MOV             R0, R2; dest
1006D4:  MOV             R1, R4; src
1006D6:  MOV             R2, R3; n
1006D8:  BLX             j_memmove
1006DC:  POP             {R4,R6,R7,PC}
