; =========================================================
; Game Engine Function: sub_9AA88
; Address            : 0x9AA88 - 0x9AAB8
; =========================================================

9AA88:  PUSH            {R4,R6,R7,LR}
9AA8A:  ADD             R7, SP, #8
9AA8C:  MOV             R4, R0
9AA8E:  LDR             R0, [R0,#8]
9AA90:  CBZ             R0, loc_9AAB4
9AA92:  LDR             R1, =(dword_1ACF68 - 0x9AA98)
9AA94:  ADD             R1, PC; dword_1ACF68
9AA96:  LDR             R1, [R1]
9AA98:  CMP             R1, #0
9AA9A:  ITTT NE
9AA9C:  LDRNE.W         R2, [R1,#0x370]
9AAA0:  SUBNE           R2, #1
9AAA2:  STRNE.W         R2, [R1,#0x370]
9AAA6:  LDR             R1, =(dword_1ACF70 - 0x9AAAE)
9AAA8:  LDR             R2, =(off_11724C - 0x9AAB0)
9AAAA:  ADD             R1, PC; dword_1ACF70
9AAAC:  ADD             R2, PC; off_11724C
9AAAE:  LDR             R1, [R1]
9AAB0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AAB2:  BLX             R2; j_opus_decoder_destroy_0
9AAB4:  MOV             R0, R4
9AAB6:  POP             {R4,R6,R7,PC}
