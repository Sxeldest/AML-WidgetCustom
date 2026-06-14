; =========================================================
; Game Engine Function: sub_9A5E0
; Address            : 0x9A5E0 - 0x9A610
; =========================================================

9A5E0:  PUSH            {R4,R6,R7,LR}
9A5E2:  ADD             R7, SP, #8
9A5E4:  MOV             R4, R0
9A5E6:  LDR             R0, [R0,#8]
9A5E8:  CBZ             R0, loc_9A60C
9A5EA:  LDR             R1, =(dword_1ACF68 - 0x9A5F0)
9A5EC:  ADD             R1, PC; dword_1ACF68
9A5EE:  LDR             R1, [R1]
9A5F0:  CMP             R1, #0
9A5F2:  ITTT NE
9A5F4:  LDRNE.W         R2, [R1,#0x370]
9A5F8:  SUBNE           R2, #1
9A5FA:  STRNE.W         R2, [R1,#0x370]
9A5FE:  LDR             R1, =(dword_1ACF70 - 0x9A606)
9A600:  LDR             R2, =(off_11724C - 0x9A608)
9A602:  ADD             R1, PC; dword_1ACF70
9A604:  ADD             R2, PC; off_11724C
9A606:  LDR             R1, [R1]
9A608:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A60A:  BLX             R2; j_opus_decoder_destroy_0
9A60C:  MOV             R0, R4
9A60E:  POP             {R4,R6,R7,PC}
