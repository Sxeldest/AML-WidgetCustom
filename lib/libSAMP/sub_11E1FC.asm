; =========================================================
; Game Engine Function: sub_11E1FC
; Address            : 0x11E1FC - 0x11E218
; =========================================================

11E1FC:  PUSH            {R4,R5,R7,LR}
11E1FE:  ADD             R7, SP, #8
11E200:  MOV             R4, R0
11E202:  LDR             R0, [R0,#4]
11E204:  CBZ             R0, loc_11E208
11E206:  POP             {R4,R5,R7,PC}
11E208:  MOVS            R0, #4; unsigned int
11E20A:  BLX             j__Znwj; operator new(uint)
11E20E:  MOV             R5, R0
11E210:  BL              sub_11E040
11E214:  STR             R5, [R4,#4]
11E216:  POP             {R4,R5,R7,PC}
