; =========================================================
; Game Engine Function: sub_127BE4
; Address            : 0x127BE4 - 0x127C00
; =========================================================

127BE4:  PUSH            {R4,R5,R7,LR}
127BE6:  ADD             R7, SP, #8
127BE8:  MOV             R4, R0
127BEA:  LDR             R0, [R0,#4]
127BEC:  CBZ             R0, loc_127BF0
127BEE:  POP             {R4,R5,R7,PC}
127BF0:  MOVS            R0, #0xC; unsigned int
127BF2:  BLX             j__Znwj; operator new(uint)
127BF6:  MOV             R5, R0
127BF8:  BL              sub_127584
127BFC:  STR             R5, [R4,#4]
127BFE:  POP             {R4,R5,R7,PC}
