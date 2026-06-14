; =========================================================
; Game Engine Function: sub_12E09A
; Address            : 0x12E09A - 0x12E0BA
; =========================================================

12E09A:  PUSH            {R4,R5,R7,LR}
12E09C:  ADD             R7, SP, #8
12E09E:  ADDS            R0, #8
12E0A0:  BL              sub_12E0BA
12E0A4:  MOV             R4, R0
12E0A6:  LDRD.W          R5, R0, [R0]
12E0AA:  CMP             R0, R5
12E0AC:  BEQ             loc_12E0B6
12E0AE:  SUBS            R0, #8
12E0B0:  BL              sub_12E1EA
12E0B4:  B               loc_12E0AA
12E0B6:  STR             R5, [R4,#4]
12E0B8:  POP             {R4,R5,R7,PC}
