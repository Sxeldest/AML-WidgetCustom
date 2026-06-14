; =========================================================
; Game Engine Function: sub_9A90C
; Address            : 0x9A90C - 0x9A93C
; =========================================================

9A90C:  PUSH            {R4,R6,R7,LR}
9A90E:  ADD             R7, SP, #8
9A910:  MOV             R4, R0
9A912:  LDR             R0, [R0,#8]
9A914:  CBZ             R0, loc_9A938
9A916:  LDR             R1, =(dword_1ACF68 - 0x9A91C)
9A918:  ADD             R1, PC; dword_1ACF68
9A91A:  LDR             R1, [R1]
9A91C:  CMP             R1, #0
9A91E:  ITTT NE
9A920:  LDRNE.W         R2, [R1,#0x370]
9A924:  SUBNE           R2, #1
9A926:  STRNE.W         R2, [R1,#0x370]
9A92A:  LDR             R1, =(dword_1ACF70 - 0x9A932)
9A92C:  LDR             R2, =(off_11724C - 0x9A934)
9A92E:  ADD             R1, PC; dword_1ACF70
9A930:  ADD             R2, PC; off_11724C
9A932:  LDR             R1, [R1]
9A934:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A936:  BLX             R2; j_opus_decoder_destroy_0
9A938:  MOV             R0, R4
9A93A:  POP             {R4,R6,R7,PC}
