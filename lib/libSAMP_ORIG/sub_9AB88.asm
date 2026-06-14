; =========================================================
; Game Engine Function: sub_9AB88
; Address            : 0x9AB88 - 0x9ABBC
; =========================================================

9AB88:  PUSH            {R4,R6,R7,LR}
9AB8A:  ADD             R7, SP, #8
9AB8C:  MOV             R4, R0
9AB8E:  MOVW            R0, #0x1508
9AB92:  LDR             R0, [R4,R0]
9AB94:  CBZ             R0, loc_9ABB8
9AB96:  LDR             R1, =(dword_1ACF68 - 0x9AB9C)
9AB98:  ADD             R1, PC; dword_1ACF68
9AB9A:  LDR             R1, [R1]
9AB9C:  CMP             R1, #0
9AB9E:  ITTT NE
9ABA0:  LDRNE.W         R2, [R1,#0x370]
9ABA4:  SUBNE           R2, #1
9ABA6:  STRNE.W         R2, [R1,#0x370]
9ABAA:  LDR             R1, =(dword_1ACF70 - 0x9ABB2)
9ABAC:  LDR             R2, =(off_11724C - 0x9ABB4)
9ABAE:  ADD             R1, PC; dword_1ACF70
9ABB0:  ADD             R2, PC; off_11724C
9ABB2:  LDR             R1, [R1]
9ABB4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9ABB6:  BLX             R2; j_opus_decoder_destroy_0
9ABB8:  MOV             R0, R4
9ABBA:  POP             {R4,R6,R7,PC}
