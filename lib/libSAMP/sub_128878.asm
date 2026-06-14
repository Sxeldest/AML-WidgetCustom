; =========================================================
; Game Engine Function: sub_128878
; Address            : 0x128878 - 0x128894
; =========================================================

128878:  PUSH            {R4,R5,R7,LR}
12887A:  ADD             R7, SP, #8
12887C:  MOV             R4, R0
12887E:  LDR             R0, [R0,#4]
128880:  CBZ             R0, loc_128884
128882:  POP             {R4,R5,R7,PC}
128884:  MOVS            R0, #0x1C; unsigned int
128886:  BLX             j__Znwj; operator new(uint)
12888A:  MOV             R5, R0
12888C:  BL              sub_128478
128890:  STR             R5, [R4,#4]
128892:  POP             {R4,R5,R7,PC}
