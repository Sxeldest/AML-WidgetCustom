; =========================================================
; Game Engine Function: sub_9A6E0
; Address            : 0x9A6E0 - 0x9A710
; =========================================================

9A6E0:  PUSH            {R4,R6,R7,LR}
9A6E2:  ADD             R7, SP, #8
9A6E4:  MOV             R4, R0
9A6E6:  LDR             R0, [R0,#8]
9A6E8:  CBZ             R0, loc_9A70C
9A6EA:  LDR             R1, =(dword_1ACF68 - 0x9A6F0)
9A6EC:  ADD             R1, PC; dword_1ACF68
9A6EE:  LDR             R1, [R1]
9A6F0:  CMP             R1, #0
9A6F2:  ITTT NE
9A6F4:  LDRNE.W         R2, [R1,#0x370]
9A6F8:  SUBNE           R2, #1
9A6FA:  STRNE.W         R2, [R1,#0x370]
9A6FE:  LDR             R1, =(dword_1ACF70 - 0x9A706)
9A700:  LDR             R2, =(off_11724C - 0x9A708)
9A702:  ADD             R1, PC; dword_1ACF70
9A704:  ADD             R2, PC; off_11724C
9A706:  LDR             R1, [R1]
9A708:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A70A:  BLX             R2; j_opus_decoder_destroy_0
9A70C:  MOV             R0, R4
9A70E:  POP             {R4,R6,R7,PC}
