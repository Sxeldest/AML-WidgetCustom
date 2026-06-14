; =========================================================
; Game Engine Function: sub_21FD30
; Address            : 0x21FD30 - 0x21FD78
; =========================================================

21FD30:  PUSH            {R4,R5,R7,LR}
21FD32:  ADD             R7, SP, #8
21FD34:  MOV             R4, R1
21FD36:  LDR             R1, =0xFFFFE040
21FD38:  TST             R0, R1
21FD3A:  BEQ             loc_21FD4A
21FD3C:  BLX             __errno
21FD40:  MOVS            R1, #0x16
21FD42:  STR             R1, [R0]
21FD44:  MOVS            R5, #0
21FD46:  MOV             R0, R5
21FD48:  POP             {R4,R5,R7,PC}
21FD4A:  CMP             R4, #0
21FD4C:  BEQ             loc_21FD3C
21FD4E:  MOV             R0, R4; s1
21FD50:  BL              sub_21FD7C
21FD54:  CBZ             R0, loc_21FD70
21FD56:  MOVS            R0, #4; unsigned int
21FD58:  BLX             j__Znwj; operator new(uint)
21FD5C:  MOV             R5, R0
21FD5E:  MOV             R0, R4
21FD60:  BL              sub_21FDD0
21FD64:  MOVS            R1, #1
21FD66:  CMP             R0, #0
21FD68:  IT NE
21FD6A:  MOVNE           R1, #4
21FD6C:  STR             R1, [R5]
21FD6E:  B               loc_21FD46
21FD70:  BLX             __errno
21FD74:  MOVS            R1, #2
21FD76:  B               loc_21FD42
