; =========================================================
; Game Engine Function: sub_9A9D8
; Address            : 0x9A9D8 - 0x9AA08
; =========================================================

9A9D8:  PUSH            {R4,R6,R7,LR}
9A9DA:  ADD             R7, SP, #8
9A9DC:  MOV             R4, R0
9A9DE:  LDR             R0, [R0,#8]
9A9E0:  CBZ             R0, loc_9AA04
9A9E2:  LDR             R1, =(dword_1ACF68 - 0x9A9E8)
9A9E4:  ADD             R1, PC; dword_1ACF68
9A9E6:  LDR             R1, [R1]
9A9E8:  CMP             R1, #0
9A9EA:  ITTT NE
9A9EC:  LDRNE.W         R2, [R1,#0x370]
9A9F0:  SUBNE           R2, #1
9A9F2:  STRNE.W         R2, [R1,#0x370]
9A9F6:  LDR             R1, =(dword_1ACF70 - 0x9A9FE)
9A9F8:  LDR             R2, =(off_11724C - 0x9AA00)
9A9FA:  ADD             R1, PC; dword_1ACF70
9A9FC:  ADD             R2, PC; off_11724C
9A9FE:  LDR             R1, [R1]
9AA00:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AA02:  BLX             R2; j_opus_decoder_destroy_0
9AA04:  MOV             R0, R4
9AA06:  POP             {R4,R6,R7,PC}
