; =========================================================
; Game Engine Function: sub_8ACEC
; Address            : 0x8ACEC - 0x8AD1C
; =========================================================

8ACEC:  PUSH            {R4,R6,R7,LR}
8ACEE:  ADD             R7, SP, #8
8ACF0:  MOV             R4, R0
8ACF2:  LDR             R0, [R0,#8]
8ACF4:  CBZ             R0, loc_8AD18
8ACF6:  LDR             R1, =(dword_1ACF68 - 0x8ACFC)
8ACF8:  ADD             R1, PC; dword_1ACF68
8ACFA:  LDR             R1, [R1]
8ACFC:  CMP             R1, #0
8ACFE:  ITTT NE
8AD00:  LDRNE.W         R2, [R1,#0x370]
8AD04:  SUBNE           R2, #1
8AD06:  STRNE.W         R2, [R1,#0x370]
8AD0A:  LDR             R1, =(dword_1ACF70 - 0x8AD12)
8AD0C:  LDR             R2, =(off_11724C - 0x8AD14)
8AD0E:  ADD             R1, PC; dword_1ACF70
8AD10:  ADD             R2, PC; off_11724C
8AD12:  LDR             R1, [R1]
8AD14:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8AD16:  BLX             R2; j_opus_decoder_destroy_0
8AD18:  MOV             R0, R4
8AD1A:  POP             {R4,R6,R7,PC}
