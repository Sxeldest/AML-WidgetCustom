; =========================================================
; Game Engine Function: sub_124154
; Address            : 0x124154 - 0x124170
; =========================================================

124154:  PUSH            {R4,R5,R7,LR}
124156:  ADD             R7, SP, #8
124158:  MOV             R4, R0
12415A:  LDR             R0, [R0,#4]
12415C:  CBZ             R0, loc_124160
12415E:  POP             {R4,R5,R7,PC}
124160:  MOVS            R0, #4; unsigned int
124162:  BLX             j__Znwj; operator new(uint)
124166:  MOV             R5, R0
124168:  BL              sub_123E98
12416C:  STR             R5, [R4,#4]
12416E:  POP             {R4,R5,R7,PC}
