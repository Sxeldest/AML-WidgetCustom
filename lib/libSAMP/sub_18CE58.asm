; =========================================================
; Game Engine Function: sub_18CE58
; Address            : 0x18CE58 - 0x18CE80
; =========================================================

18CE58:  PUSH            {R4,R6,R7,LR}
18CE5A:  ADD             R7, SP, #8
18CE5C:  LDR             R0, =(dword_382758 - 0x18CE62)
18CE5E:  ADD             R0, PC; dword_382758
18CE60:  LDR             R1, [R0]
18CE62:  ADD.W           R2, R1, #1
18CE66:  STR             R2, [R0]
18CE68:  CBZ             R1, loc_18CE6C
18CE6A:  POP             {R4,R6,R7,PC}
18CE6C:  MOVS            R0, #0x18; unsigned int
18CE6E:  BLX             j__Znwj; operator new(uint)
18CE72:  MOV             R4, R0
18CE74:  BL              sub_18CED4
18CE78:  LDR             R0, =(dword_382754 - 0x18CE7E)
18CE7A:  ADD             R0, PC; dword_382754
18CE7C:  STR             R4, [R0]
18CE7E:  POP             {R4,R6,R7,PC}
