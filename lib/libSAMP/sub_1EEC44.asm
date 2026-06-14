; =========================================================
; Game Engine Function: sub_1EEC44
; Address            : 0x1EEC44 - 0x1EEC64
; =========================================================

1EEC44:  PUSH            {R4,R6,R7,LR}
1EEC46:  ADD             R7, SP, #8
1EEC48:  MOV             R4, R0
1EEC4A:  MOV             R0, R1
1EEC4C:  MOV             R1, R2
1EEC4E:  BL              sub_1EE59C
1EEC52:  VLDR            D16, [R0]
1EEC56:  LDR             R1, [R0,#8]
1EEC58:  VSTR            D16, [R4]
1EEC5C:  STR             R1, [R4,#8]
1EEC5E:  BL              sub_1EE5C6
1EEC62:  POP             {R4,R6,R7,PC}
