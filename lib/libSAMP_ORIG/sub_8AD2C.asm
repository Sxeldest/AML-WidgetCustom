; =========================================================
; Game Engine Function: sub_8AD2C
; Address            : 0x8AD2C - 0x8AD5C
; =========================================================

8AD2C:  PUSH            {R4,R6,R7,LR}
8AD2E:  ADD             R7, SP, #8
8AD30:  MOV             R4, R0
8AD32:  LDR             R0, [R0,#8]
8AD34:  CBZ             R0, loc_8AD58
8AD36:  LDR             R1, =(dword_1ACF68 - 0x8AD3C)
8AD38:  ADD             R1, PC; dword_1ACF68
8AD3A:  LDR             R1, [R1]
8AD3C:  CMP             R1, #0
8AD3E:  ITTT NE
8AD40:  LDRNE.W         R2, [R1,#0x370]
8AD44:  SUBNE           R2, #1
8AD46:  STRNE.W         R2, [R1,#0x370]
8AD4A:  LDR             R1, =(dword_1ACF70 - 0x8AD52)
8AD4C:  LDR             R2, =(off_11724C - 0x8AD54)
8AD4E:  ADD             R1, PC; dword_1ACF70
8AD50:  ADD             R2, PC; off_11724C
8AD52:  LDR             R1, [R1]
8AD54:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8AD56:  BLX             R2; j_opus_decoder_destroy_0
8AD58:  MOV             R0, R4
8AD5A:  POP             {R4,R6,R7,PC}
