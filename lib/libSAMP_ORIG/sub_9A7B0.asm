; =========================================================
; Game Engine Function: sub_9A7B0
; Address            : 0x9A7B0 - 0x9A7E0
; =========================================================

9A7B0:  PUSH            {R4,R6,R7,LR}
9A7B2:  ADD             R7, SP, #8
9A7B4:  MOV             R4, R0
9A7B6:  LDR             R0, [R0,#8]
9A7B8:  CBZ             R0, loc_9A7DC
9A7BA:  LDR             R1, =(dword_1ACF68 - 0x9A7C0)
9A7BC:  ADD             R1, PC; dword_1ACF68
9A7BE:  LDR             R1, [R1]
9A7C0:  CMP             R1, #0
9A7C2:  ITTT NE
9A7C4:  LDRNE.W         R2, [R1,#0x370]
9A7C8:  SUBNE           R2, #1
9A7CA:  STRNE.W         R2, [R1,#0x370]
9A7CE:  LDR             R1, =(dword_1ACF70 - 0x9A7D6)
9A7D0:  LDR             R2, =(off_11724C - 0x9A7D8)
9A7D2:  ADD             R1, PC; dword_1ACF70
9A7D4:  ADD             R2, PC; off_11724C
9A7D6:  LDR             R1, [R1]
9A7D8:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A7DA:  BLX             R2; j_opus_decoder_destroy_0
9A7DC:  MOV             R0, R4
9A7DE:  POP             {R4,R6,R7,PC}
