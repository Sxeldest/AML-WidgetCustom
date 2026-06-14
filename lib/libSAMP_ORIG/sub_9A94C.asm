; =========================================================
; Game Engine Function: sub_9A94C
; Address            : 0x9A94C - 0x9A9AE
; =========================================================

9A94C:  PUSH            {R4-R7,LR}
9A94E:  ADD             R7, SP, #0xC
9A950:  PUSH.W          {R8}
9A954:  MOV             R4, R0
9A956:  BL              sub_9AC0C
9A95A:  LDR             R0, [R4,#0x14]
9A95C:  LDR             R1, =(dword_1ACF68 - 0x9A966)
9A95E:  LDR             R3, =(dword_1ACF70 - 0x9A968)
9A960:  LDR             R6, =(off_11724C - 0x9A96A)
9A962:  ADD             R1, PC; dword_1ACF68
9A964:  ADD             R3, PC; dword_1ACF70
9A966:  ADD             R6, PC; off_11724C
9A968:  CBZ             R0, loc_9A98C
9A96A:  MOV             R8, R1
9A96C:  LDR             R1, [R1]
9A96E:  CMP             R1, #0
9A970:  ITTT NE
9A972:  LDRNE.W         R2, [R1,#0x370]
9A976:  SUBNE           R2, #1
9A978:  STRNE.W         R2, [R1,#0x370]
9A97C:  LDR             R1, [R3]
9A97E:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9A980:  MOV             R5, R6
9A982:  MOV             R6, R3
9A984:  BLX             R2; j_opus_decoder_destroy_0
9A986:  MOV             R3, R6
9A988:  MOV             R6, R5
9A98A:  MOV             R1, R8
9A98C:  LDR             R0, [R4,#8]
9A98E:  CBZ             R0, loc_9A9A6
9A990:  LDR             R1, [R1]
9A992:  CMP             R1, #0
9A994:  ITTT NE
9A996:  LDRNE.W         R2, [R1,#0x370]
9A99A:  SUBNE           R2, #1
9A99C:  STRNE.W         R2, [R1,#0x370]
9A9A0:  LDR             R1, [R3]
9A9A2:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9A9A4:  BLX             R2; j_opus_decoder_destroy_0
9A9A6:  MOV             R0, R4
9A9A8:  POP.W           {R8}
9A9AC:  POP             {R4-R7,PC}
