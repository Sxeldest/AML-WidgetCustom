; =========================================================
; Game Engine Function: sub_9A730
; Address            : 0x9A730 - 0x9A760
; =========================================================

9A730:  PUSH            {R4,R6,R7,LR}
9A732:  ADD             R7, SP, #8
9A734:  MOV             R4, R0
9A736:  LDR             R0, [R0,#8]
9A738:  CBZ             R0, loc_9A75C
9A73A:  LDR             R1, =(dword_1ACF68 - 0x9A740)
9A73C:  ADD             R1, PC; dword_1ACF68
9A73E:  LDR             R1, [R1]
9A740:  CMP             R1, #0
9A742:  ITTT NE
9A744:  LDRNE.W         R2, [R1,#0x370]
9A748:  SUBNE           R2, #1
9A74A:  STRNE.W         R2, [R1,#0x370]
9A74E:  LDR             R1, =(dword_1ACF70 - 0x9A756)
9A750:  LDR             R2, =(off_11724C - 0x9A758)
9A752:  ADD             R1, PC; dword_1ACF70
9A754:  ADD             R2, PC; off_11724C
9A756:  LDR             R1, [R1]
9A758:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A75A:  BLX             R2; j_opus_decoder_destroy_0
9A75C:  MOV             R0, R4
9A75E:  POP             {R4,R6,R7,PC}
