; =========================================================
; Game Engine Function: sub_162A9E
; Address            : 0x162A9E - 0x162ABA
; =========================================================

162A9E:  PUSH            {R4,R5,R7,LR}
162AA0:  ADD             R7, SP, #8
162AA2:  MOV             R4, R0
162AA4:  LDR             R0, [R0,#4]
162AA6:  CBZ             R0, loc_162AAA
162AA8:  POP             {R4,R5,R7,PC}
162AAA:  MOVS            R0, #8; unsigned int
162AAC:  BLX             j__Znwj; operator new(uint)
162AB0:  MOV             R5, R0
162AB2:  BL              sub_162958
162AB6:  STR             R5, [R4,#4]
162AB8:  POP             {R4,R5,R7,PC}
