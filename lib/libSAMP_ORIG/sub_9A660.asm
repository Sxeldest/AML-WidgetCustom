; =========================================================
; Game Engine Function: sub_9A660
; Address            : 0x9A660 - 0x9A690
; =========================================================

9A660:  PUSH            {R4,R6,R7,LR}
9A662:  ADD             R7, SP, #8
9A664:  MOV             R4, R0
9A666:  LDR             R0, [R0,#8]
9A668:  CBZ             R0, loc_9A68C
9A66A:  LDR             R1, =(dword_1ACF68 - 0x9A670)
9A66C:  ADD             R1, PC; dword_1ACF68
9A66E:  LDR             R1, [R1]
9A670:  CMP             R1, #0
9A672:  ITTT NE
9A674:  LDRNE.W         R2, [R1,#0x370]
9A678:  SUBNE           R2, #1
9A67A:  STRNE.W         R2, [R1,#0x370]
9A67E:  LDR             R1, =(dword_1ACF70 - 0x9A686)
9A680:  LDR             R2, =(off_11724C - 0x9A688)
9A682:  ADD             R1, PC; dword_1ACF70
9A684:  ADD             R2, PC; off_11724C
9A686:  LDR             R1, [R1]
9A688:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A68A:  BLX             R2; j_opus_decoder_destroy_0
9A68C:  MOV             R0, R4
9A68E:  POP             {R4,R6,R7,PC}
