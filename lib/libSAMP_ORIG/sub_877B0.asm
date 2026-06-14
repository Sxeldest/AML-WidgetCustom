; =========================================================
; Game Engine Function: sub_877B0
; Address            : 0x877B0 - 0x877D2
; =========================================================

877B0:  PUSH            {R4,R5,R7,LR}
877B2:  ADD             R7, SP, #8
877B4:  LDR             R5, =(dword_1ABEC8 - 0x877BA)
877B6:  ADD             R5, PC; dword_1ABEC8
877B8:  LDR             R4, [R5]
877BA:  CBZ             R4, loc_877C0
877BC:  MOV             R0, R4
877BE:  POP             {R4,R5,R7,PC}
877C0:  MOVS            R0, #0x18; unsigned int
877C2:  BLX             j__Znwj; operator new(uint)
877C6:  MOV             R4, R0
877C8:  BL              sub_877E0
877CC:  STR             R4, [R5]
877CE:  MOV             R0, R4
877D0:  POP             {R4,R5,R7,PC}
