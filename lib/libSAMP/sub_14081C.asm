; =========================================================
; Game Engine Function: sub_14081C
; Address            : 0x14081C - 0x14085C
; =========================================================

14081C:  PUSH            {R4,R5,R7,LR}
14081E:  ADD             R7, SP, #8
140820:  MOV             R4, R0
140822:  LDRB.W          R0, [R0,#0x2D]
140826:  CBZ             R0, loc_14082A
140828:  POP             {R4,R5,R7,PC}
14082A:  LDR             R0, =(off_234A24 - 0x140830)
14082C:  ADD             R0, PC; off_234A24
14082E:  LDR             R0, [R0]; dword_23DEEC
140830:  LDR             R0, [R0]
140832:  CBZ             R0, loc_14084E
140834:  LDR             R5, [R0,#0x64]
140836:  LDRB.W          R0, [R5,#0x50]
14083A:  CMP             R0, #1
14083C:  BEQ             loc_140848
14083E:  LDR             R0, [R5]
140840:  MOVS            R1, #1
140842:  LDR             R2, [R0,#0x24]
140844:  MOV             R0, R5
140846:  BLX             R2
140848:  MOVS            R0, #1
14084A:  STRB.W          R0, [R5,#0x50]
14084E:  LDR             R1, [R4,#0x14]
140850:  BL              sub_140860
140854:  MOVS            R0, #1
140856:  STRB.W          R0, [R4,#0x2D]
14085A:  POP             {R4,R5,R7,PC}
