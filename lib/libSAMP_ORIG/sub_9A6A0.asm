; =========================================================
; Game Engine Function: sub_9A6A0
; Address            : 0x9A6A0 - 0x9A6D0
; =========================================================

9A6A0:  PUSH            {R4,R6,R7,LR}
9A6A2:  ADD             R7, SP, #8
9A6A4:  MOV             R4, R0
9A6A6:  LDR             R0, [R0,#8]
9A6A8:  CBZ             R0, loc_9A6CC
9A6AA:  LDR             R1, =(dword_1ACF68 - 0x9A6B0)
9A6AC:  ADD             R1, PC; dword_1ACF68
9A6AE:  LDR             R1, [R1]
9A6B0:  CMP             R1, #0
9A6B2:  ITTT NE
9A6B4:  LDRNE.W         R2, [R1,#0x370]
9A6B8:  SUBNE           R2, #1
9A6BA:  STRNE.W         R2, [R1,#0x370]
9A6BE:  LDR             R1, =(dword_1ACF70 - 0x9A6C6)
9A6C0:  LDR             R2, =(off_11724C - 0x9A6C8)
9A6C2:  ADD             R1, PC; dword_1ACF70
9A6C4:  ADD             R2, PC; off_11724C
9A6C6:  LDR             R1, [R1]
9A6C8:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A6CA:  BLX             R2; j_opus_decoder_destroy_0
9A6CC:  MOV             R0, R4
9A6CE:  POP             {R4,R6,R7,PC}
