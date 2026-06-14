; =========================================================
; Game Engine Function: sub_F27EE
; Address            : 0xF27EE - 0xF2838
; =========================================================

F27EE:  PUSH            {R4-R7,LR}
F27F0:  ADD             R7, SP, #0xC
F27F2:  PUSH.W          {R8}
F27F6:  MOV             R5, R1
F27F8:  LDRB            R1, [R0,#0x14]
F27FA:  DMB.W           ISH
F27FE:  LSLS            R1, R1, #0x1F
F2800:  BNE             loc_F2832
F2802:  LDRD.W          R6, R4, [R0,#8]
F2806:  CMP             R6, R4
F2808:  BEQ             loc_F2832
F280A:  MOV             R8, R2
F280C:  LDR             R0, [R6]
F280E:  LDRB            R1, [R0,#8]
F2810:  DMB.W           ISH
F2814:  LSLS            R1, R1, #0x1F
F2816:  BEQ             loc_F282C
F2818:  LDRB            R1, [R0,#9]
F281A:  DMB.W           ISH
F281E:  LSLS            R1, R1, #0x1F
F2820:  BNE             loc_F282C
F2822:  LDR             R1, [R0]
F2824:  MOV             R2, R8
F2826:  LDR             R3, [R1,#0x10]
F2828:  MOV             R1, R5
F282A:  BLX             R3
F282C:  ADDS            R6, #8
F282E:  CMP             R6, R4
F2830:  BNE             loc_F280C
F2832:  POP.W           {R8}
F2836:  POP             {R4-R7,PC}
