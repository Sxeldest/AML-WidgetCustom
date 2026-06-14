; =========================================================
; Game Engine Function: sub_9A8CC
; Address            : 0x9A8CC - 0x9A8FC
; =========================================================

9A8CC:  PUSH            {R4,R6,R7,LR}
9A8CE:  ADD             R7, SP, #8
9A8D0:  MOV             R4, R0
9A8D2:  LDR             R0, [R0,#8]
9A8D4:  CBZ             R0, loc_9A8F8
9A8D6:  LDR             R1, =(dword_1ACF68 - 0x9A8DC)
9A8D8:  ADD             R1, PC; dword_1ACF68
9A8DA:  LDR             R1, [R1]
9A8DC:  CMP             R1, #0
9A8DE:  ITTT NE
9A8E0:  LDRNE.W         R2, [R1,#0x370]
9A8E4:  SUBNE           R2, #1
9A8E6:  STRNE.W         R2, [R1,#0x370]
9A8EA:  LDR             R1, =(dword_1ACF70 - 0x9A8F2)
9A8EC:  LDR             R2, =(off_11724C - 0x9A8F4)
9A8EE:  ADD             R1, PC; dword_1ACF70
9A8F0:  ADD             R2, PC; off_11724C
9A8F2:  LDR             R1, [R1]
9A8F4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A8F6:  BLX             R2; j_opus_decoder_destroy_0
9A8F8:  MOV             R0, R4
9A8FA:  POP             {R4,R6,R7,PC}
