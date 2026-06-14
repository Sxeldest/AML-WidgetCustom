; =========================================================
; Game Engine Function: alSourcePlay
; Address            : 0x25A740 - 0x25A754
; =========================================================

25A740:  PUSH            {R7,LR}
25A742:  MOV             R7, SP
25A744:  SUB             SP, SP, #8
25A746:  ADD             R1, SP, #0x10+var_C
25A748:  STR             R0, [SP,#0x10+var_C]
25A74A:  MOVS            R0, #1
25A74C:  BLX             j_alSourcePlayv
25A750:  ADD             SP, SP, #8
25A752:  POP             {R7,PC}
