; =========================================================
; Game Engine Function: sub_9A7F0
; Address            : 0x9A7F0 - 0x9A820
; =========================================================

9A7F0:  PUSH            {R4,R6,R7,LR}
9A7F2:  ADD             R7, SP, #8
9A7F4:  MOV             R4, R0
9A7F6:  LDR             R0, [R0,#8]
9A7F8:  CBZ             R0, loc_9A81C
9A7FA:  LDR             R1, =(dword_1ACF68 - 0x9A800)
9A7FC:  ADD             R1, PC; dword_1ACF68
9A7FE:  LDR             R1, [R1]
9A800:  CMP             R1, #0
9A802:  ITTT NE
9A804:  LDRNE.W         R2, [R1,#0x370]
9A808:  SUBNE           R2, #1
9A80A:  STRNE.W         R2, [R1,#0x370]
9A80E:  LDR             R1, =(dword_1ACF70 - 0x9A816)
9A810:  LDR             R2, =(off_11724C - 0x9A818)
9A812:  ADD             R1, PC; dword_1ACF70
9A814:  ADD             R2, PC; off_11724C
9A816:  LDR             R1, [R1]
9A818:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A81A:  BLX             R2; j_opus_decoder_destroy_0
9A81C:  MOV             R0, R4
9A81E:  POP             {R4,R6,R7,PC}
