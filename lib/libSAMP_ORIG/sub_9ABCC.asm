; =========================================================
; Game Engine Function: sub_9ABCC
; Address            : 0x9ABCC - 0x9ABFC
; =========================================================

9ABCC:  PUSH            {R4,R6,R7,LR}
9ABCE:  ADD             R7, SP, #8
9ABD0:  MOV             R4, R0
9ABD2:  LDR             R0, [R0,#8]
9ABD4:  CBZ             R0, loc_9ABF8
9ABD6:  LDR             R1, =(dword_1ACF68 - 0x9ABDC)
9ABD8:  ADD             R1, PC; dword_1ACF68
9ABDA:  LDR             R1, [R1]
9ABDC:  CMP             R1, #0
9ABDE:  ITTT NE
9ABE0:  LDRNE.W         R2, [R1,#0x370]
9ABE4:  SUBNE           R2, #1
9ABE6:  STRNE.W         R2, [R1,#0x370]
9ABEA:  LDR             R1, =(dword_1ACF70 - 0x9ABF2)
9ABEC:  LDR             R2, =(off_11724C - 0x9ABF4)
9ABEE:  ADD             R1, PC; dword_1ACF70
9ABF0:  ADD             R2, PC; off_11724C
9ABF2:  LDR             R1, [R1]
9ABF4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9ABF6:  BLX             R2; j_opus_decoder_destroy_0
9ABF8:  MOV             R0, R4
9ABFA:  POP             {R4,R6,R7,PC}
