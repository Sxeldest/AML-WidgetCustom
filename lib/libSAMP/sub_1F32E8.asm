; =========================================================
; Game Engine Function: sub_1F32E8
; Address            : 0x1F32E8 - 0x1F3302
; =========================================================

1F32E8:  PUSH            {R7,LR}
1F32EA:  MOV             R7, SP
1F32EC:  LDRB            R2, [R1,#0x10]
1F32EE:  CMP             R2, #2
1F32F0:  BNE             loc_1F32F8
1F32F2:  BL              sub_1F1C10
1F32F6:  POP             {R7,PC}
1F32F8:  LDR             R1, =(byte_8F794 - 0x1F32FE)
1F32FA:  ADD             R1, PC; byte_8F794 ; s
1F32FC:  BL              sub_1F2468
1F3300:  POP             {R7,PC}
