; =========================================================
; Game Engine Function: sub_8AE44
; Address            : 0x8AE44 - 0x8AE74
; =========================================================

8AE44:  PUSH            {R4,R6,R7,LR}
8AE46:  ADD             R7, SP, #8
8AE48:  MOV             R4, R0
8AE4A:  LDR             R0, [R0,#0x44]
8AE4C:  CBZ             R0, loc_8AE70
8AE4E:  LDR             R1, =(dword_1ACF68 - 0x8AE54)
8AE50:  ADD             R1, PC; dword_1ACF68
8AE52:  LDR             R1, [R1]
8AE54:  CMP             R1, #0
8AE56:  ITTT NE
8AE58:  LDRNE.W         R2, [R1,#0x370]
8AE5C:  SUBNE           R2, #1
8AE5E:  STRNE.W         R2, [R1,#0x370]
8AE62:  LDR             R1, =(dword_1ACF70 - 0x8AE6A)
8AE64:  LDR             R2, =(off_11724C - 0x8AE6C)
8AE66:  ADD             R1, PC; dword_1ACF70
8AE68:  ADD             R2, PC; off_11724C
8AE6A:  LDR             R1, [R1]
8AE6C:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8AE6E:  BLX             R2; j_opus_decoder_destroy_0
8AE70:  MOV             R0, R4
8AE72:  POP             {R4,R6,R7,PC}
