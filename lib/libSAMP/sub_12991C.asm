; =========================================================
; Game Engine Function: sub_12991C
; Address            : 0x12991C - 0x129938
; =========================================================

12991C:  PUSH            {R4,R5,R7,LR}
12991E:  ADD             R7, SP, #8
129920:  MOV             R4, R0
129922:  LDR             R0, [R0,#4]
129924:  CBZ             R0, loc_129928
129926:  POP             {R4,R5,R7,PC}
129928:  MOVS            R0, #4; unsigned int
12992A:  BLX             j__Znwj; operator new(uint)
12992E:  MOV             R5, R0
129930:  BL              sub_129650
129934:  STR             R5, [R4,#4]
129936:  POP             {R4,R5,R7,PC}
