; =========================================================
; Game Engine Function: sub_12E104
; Address            : 0x12E104 - 0x12E12E
; =========================================================

12E104:  PUSH            {R4-R7,LR}
12E106:  ADD             R7, SP, #0xC
12E108:  PUSH.W          {R11}
12E10C:  MOV             R4, R0
12E10E:  MOVS            R0, #0x10; unsigned int
12E110:  MOV             R6, R1
12E112:  BLX             j__Znwj; operator new(uint)
12E116:  MOVS            R1, #1
12E118:  MOV             R5, R0
12E11A:  STR.W           R1, [R0],#4
12E11E:  MOV             R1, R6
12E120:  BL              sub_12E138
12E124:  STR             R5, [R4]
12E126:  MOV             R0, R4
12E128:  POP.W           {R11}
12E12C:  POP             {R4-R7,PC}
