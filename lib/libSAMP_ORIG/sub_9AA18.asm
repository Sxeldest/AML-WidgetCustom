; =========================================================
; Game Engine Function: sub_9AA18
; Address            : 0x9AA18 - 0x9AA76
; =========================================================

9AA18:  PUSH            {R4-R7,LR}
9AA1A:  ADD             R7, SP, #0xC
9AA1C:  PUSH.W          {R8}
9AA20:  MOV             R4, R0
9AA22:  LDR             R0, [R0,#0x14]
9AA24:  LDR             R1, =(dword_1ACF68 - 0x9AA2E)
9AA26:  LDR             R3, =(dword_1ACF70 - 0x9AA30)
9AA28:  LDR             R6, =(off_11724C - 0x9AA32)
9AA2A:  ADD             R1, PC; dword_1ACF68
9AA2C:  ADD             R3, PC; dword_1ACF70
9AA2E:  ADD             R6, PC; off_11724C
9AA30:  CBZ             R0, loc_9AA54
9AA32:  MOV             R8, R1
9AA34:  LDR             R1, [R1]
9AA36:  CMP             R1, #0
9AA38:  ITTT NE
9AA3A:  LDRNE.W         R2, [R1,#0x370]
9AA3E:  SUBNE           R2, #1
9AA40:  STRNE.W         R2, [R1,#0x370]
9AA44:  LDR             R1, [R3]
9AA46:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9AA48:  MOV             R5, R6
9AA4A:  MOV             R6, R3
9AA4C:  BLX             R2; j_opus_decoder_destroy_0
9AA4E:  MOV             R3, R6
9AA50:  MOV             R6, R5
9AA52:  MOV             R1, R8
9AA54:  LDR             R0, [R4,#8]
9AA56:  CBZ             R0, loc_9AA6E
9AA58:  LDR             R1, [R1]
9AA5A:  CMP             R1, #0
9AA5C:  ITTT NE
9AA5E:  LDRNE.W         R2, [R1,#0x370]
9AA62:  SUBNE           R2, #1
9AA64:  STRNE.W         R2, [R1,#0x370]
9AA68:  LDR             R1, [R3]
9AA6A:  LDR             R2, [R6]; j_opus_decoder_destroy_0
9AA6C:  BLX             R2; j_opus_decoder_destroy_0
9AA6E:  MOV             R0, R4
9AA70:  POP.W           {R8}
9AA74:  POP             {R4-R7,PC}
