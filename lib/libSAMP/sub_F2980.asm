; =========================================================
; Game Engine Function: sub_F2980
; Address            : 0xF2980 - 0xF299C
; =========================================================

F2980:  PUSH            {R4,R5,R7,LR}
F2982:  ADD             R7, SP, #8
F2984:  MOV             R4, R0
F2986:  LDR             R0, [R0,#4]
F2988:  CBZ             R0, loc_F298C
F298A:  POP             {R4,R5,R7,PC}
F298C:  MOVS            R0, #4; unsigned int
F298E:  BLX             j__Znwj; operator new(uint)
F2992:  MOV             R5, R0
F2994:  BL              sub_F253C
F2998:  STR             R5, [R4,#4]
F299A:  POP             {R4,R5,R7,PC}
