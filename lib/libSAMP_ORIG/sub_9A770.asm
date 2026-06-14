; =========================================================
; Game Engine Function: sub_9A770
; Address            : 0x9A770 - 0x9A7A0
; =========================================================

9A770:  PUSH            {R4,R6,R7,LR}
9A772:  ADD             R7, SP, #8
9A774:  MOV             R4, R0
9A776:  LDR             R0, [R0,#8]
9A778:  CBZ             R0, loc_9A79C
9A77A:  LDR             R1, =(dword_1ACF68 - 0x9A780)
9A77C:  ADD             R1, PC; dword_1ACF68
9A77E:  LDR             R1, [R1]
9A780:  CMP             R1, #0
9A782:  ITTT NE
9A784:  LDRNE.W         R2, [R1,#0x370]
9A788:  SUBNE           R2, #1
9A78A:  STRNE.W         R2, [R1,#0x370]
9A78E:  LDR             R1, =(dword_1ACF70 - 0x9A796)
9A790:  LDR             R2, =(off_11724C - 0x9A798)
9A792:  ADD             R1, PC; dword_1ACF70
9A794:  ADD             R2, PC; off_11724C
9A796:  LDR             R1, [R1]
9A798:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A79A:  BLX             R2; j_opus_decoder_destroy_0
9A79C:  MOV             R0, R4
9A79E:  POP             {R4,R6,R7,PC}
