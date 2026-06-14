; =========================================================
; Game Engine Function: sub_10F778
; Address            : 0x10F778 - 0x10F7A4
; =========================================================

10F778:  PUSH            {R4,R6,R7,LR}
10F77A:  ADD             R7, SP, #8
10F77C:  MOV             R4, R0
10F77E:  LDR             R0, [R1,#0x10]
10F780:  CBZ             R0, loc_10F78E
10F782:  CMP             R1, R0
10F784:  BEQ             loc_10F794
10F786:  LDR             R1, [R0]
10F788:  LDR             R1, [R1,#8]
10F78A:  BLX             R1
10F78C:  B               loc_10F790
10F78E:  MOVS            R0, #0
10F790:  STR             R0, [R4,#0x10]
10F792:  B               loc_10F7A0
10F794:  STR             R4, [R4,#0x10]
10F796:  LDR             R0, [R1,#0x10]
10F798:  LDR             R1, [R0]
10F79A:  LDR             R2, [R1,#0xC]
10F79C:  MOV             R1, R4
10F79E:  BLX             R2
10F7A0:  MOV             R0, R4
10F7A2:  POP             {R4,R6,R7,PC}
