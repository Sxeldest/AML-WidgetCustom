; =========================================================
; Game Engine Function: sub_9A5A0
; Address            : 0x9A5A0 - 0x9A5D0
; =========================================================

9A5A0:  PUSH            {R4,R6,R7,LR}
9A5A2:  ADD             R7, SP, #8
9A5A4:  MOV             R4, R0
9A5A6:  LDR             R0, [R0,#0x10]
9A5A8:  CBZ             R0, loc_9A5CC
9A5AA:  LDR             R1, =(dword_1ACF68 - 0x9A5B0)
9A5AC:  ADD             R1, PC; dword_1ACF68
9A5AE:  LDR             R1, [R1]
9A5B0:  CMP             R1, #0
9A5B2:  ITTT NE
9A5B4:  LDRNE.W         R2, [R1,#0x370]
9A5B8:  SUBNE           R2, #1
9A5BA:  STRNE.W         R2, [R1,#0x370]
9A5BE:  LDR             R1, =(dword_1ACF70 - 0x9A5C6)
9A5C0:  LDR             R2, =(off_11724C - 0x9A5C8)
9A5C2:  ADD             R1, PC; dword_1ACF70
9A5C4:  ADD             R2, PC; off_11724C
9A5C6:  LDR             R1, [R1]
9A5C8:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A5CA:  BLX             R2; j_opus_decoder_destroy_0
9A5CC:  MOV             R0, R4
9A5CE:  POP             {R4,R6,R7,PC}
