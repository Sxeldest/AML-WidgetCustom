; =========================================================
; Game Engine Function: sub_9AAC8
; Address            : 0x9AAC8 - 0x9AAF8
; =========================================================

9AAC8:  PUSH            {R4,R6,R7,LR}
9AACA:  ADD             R7, SP, #8
9AACC:  MOV             R4, R0
9AACE:  LDR             R0, [R0,#8]
9AAD0:  CBZ             R0, loc_9AAF4
9AAD2:  LDR             R1, =(dword_1ACF68 - 0x9AAD8)
9AAD4:  ADD             R1, PC; dword_1ACF68
9AAD6:  LDR             R1, [R1]
9AAD8:  CMP             R1, #0
9AADA:  ITTT NE
9AADC:  LDRNE.W         R2, [R1,#0x370]
9AAE0:  SUBNE           R2, #1
9AAE2:  STRNE.W         R2, [R1,#0x370]
9AAE6:  LDR             R1, =(dword_1ACF70 - 0x9AAEE)
9AAE8:  LDR             R2, =(off_11724C - 0x9AAF0)
9AAEA:  ADD             R1, PC; dword_1ACF70
9AAEC:  ADD             R2, PC; off_11724C
9AAEE:  LDR             R1, [R1]
9AAF0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AAF2:  BLX             R2; j_opus_decoder_destroy_0
9AAF4:  MOV             R0, R4
9AAF6:  POP             {R4,R6,R7,PC}
