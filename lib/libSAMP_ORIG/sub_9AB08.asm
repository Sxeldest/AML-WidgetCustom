; =========================================================
; Game Engine Function: sub_9AB08
; Address            : 0x9AB08 - 0x9AB38
; =========================================================

9AB08:  PUSH            {R4,R6,R7,LR}
9AB0A:  ADD             R7, SP, #8
9AB0C:  MOV             R4, R0
9AB0E:  LDR             R0, [R0,#8]
9AB10:  CBZ             R0, loc_9AB34
9AB12:  LDR             R1, =(dword_1ACF68 - 0x9AB18)
9AB14:  ADD             R1, PC; dword_1ACF68
9AB16:  LDR             R1, [R1]
9AB18:  CMP             R1, #0
9AB1A:  ITTT NE
9AB1C:  LDRNE.W         R2, [R1,#0x370]
9AB20:  SUBNE           R2, #1
9AB22:  STRNE.W         R2, [R1,#0x370]
9AB26:  LDR             R1, =(dword_1ACF70 - 0x9AB2E)
9AB28:  LDR             R2, =(off_11724C - 0x9AB30)
9AB2A:  ADD             R1, PC; dword_1ACF70
9AB2C:  ADD             R2, PC; off_11724C
9AB2E:  LDR             R1, [R1]
9AB30:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AB32:  BLX             R2; j_opus_decoder_destroy_0
9AB34:  MOV             R0, R4
9AB36:  POP             {R4,R6,R7,PC}
