; =========================================================
; Game Engine Function: sub_9A830
; Address            : 0x9A830 - 0x9A8B4
; =========================================================

9A830:  PUSH            {R4-R7,LR}
9A832:  ADD             R7, SP, #0xC
9A834:  PUSH.W          {R8}
9A838:  MOV             R4, R0
9A83A:  LDR             R0, [R0,#0x2C]
9A83C:  LDR             R1, =(dword_1ACF68 - 0x9A846)
9A83E:  LDR             R3, =(dword_1ACF70 - 0x9A848)
9A840:  LDR             R6, =(off_11724C - 0x9A84A)
9A842:  ADD             R1, PC; dword_1ACF68
9A844:  ADD             R3, PC; dword_1ACF70
9A846:  ADD             R6, PC; off_11724C
9A848:  CBZ             R0, loc_9A86C
9A84A:  MOV             R8, R1
9A84C:  LDR             R1, [R1]
9A84E:  CMP             R1, #0
9A850:  ITTT NE
9A852:  LDRNE.W         R2, [R1,#0x370]
9A856:  SUBNE           R2, #1
9A858:  STRNE.W         R2, [R1,#0x370]
9A85C:  LDR             R1, [R3]
9A85E:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9A860:  MOV             R5, R6
9A862:  MOV             R6, R3
9A864:  BLX             R2; j_opus_decoder_destroy_0
9A866:  MOV             R3, R6
9A868:  MOV             R6, R5
9A86A:  MOV             R1, R8
9A86C:  LDR             R0, [R4,#0x20]
9A86E:  CBZ             R0, loc_9A892
9A870:  MOV             R8, R1
9A872:  LDR             R1, [R1]
9A874:  CMP             R1, #0
9A876:  ITTT NE
9A878:  LDRNE.W         R2, [R1,#0x370]
9A87C:  SUBNE           R2, #1
9A87E:  STRNE.W         R2, [R1,#0x370]
9A882:  LDR             R1, [R3]
9A884:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9A886:  MOV             R5, R6
9A888:  MOV             R6, R3
9A88A:  BLX             R2; j_opus_decoder_destroy_0
9A88C:  MOV             R3, R6
9A88E:  MOV             R6, R5
9A890:  MOV             R1, R8
9A892:  LDR             R0, [R4,#0x14]
9A894:  CBZ             R0, loc_9A8AC
9A896:  LDR             R1, [R1]
9A898:  CMP             R1, #0
9A89A:  ITTT NE
9A89C:  LDRNE.W         R2, [R1,#0x370]
9A8A0:  SUBNE           R2, #1
9A8A2:  STRNE.W         R2, [R1,#0x370]
9A8A6:  LDR             R1, [R3]
9A8A8:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9A8AA:  BLX             R2; j_opus_decoder_destroy_0
9A8AC:  MOV             R0, R4
9A8AE:  POP.W           {R8}
9A8B2:  POP             {R4-R7,PC}
