; =========================================================
; Game Engine Function: sub_9AB48
; Address            : 0x9AB48 - 0x9AB78
; =========================================================

9AB48:  PUSH            {R4,R6,R7,LR}
9AB4A:  ADD             R7, SP, #8
9AB4C:  MOV             R4, R0
9AB4E:  LDR             R0, [R0,#8]
9AB50:  CBZ             R0, loc_9AB74
9AB52:  LDR             R1, =(dword_1ACF68 - 0x9AB58)
9AB54:  ADD             R1, PC; dword_1ACF68
9AB56:  LDR             R1, [R1]
9AB58:  CMP             R1, #0
9AB5A:  ITTT NE
9AB5C:  LDRNE.W         R2, [R1,#0x370]
9AB60:  SUBNE           R2, #1
9AB62:  STRNE.W         R2, [R1,#0x370]
9AB66:  LDR             R1, =(dword_1ACF70 - 0x9AB6E)
9AB68:  LDR             R2, =(off_11724C - 0x9AB70)
9AB6A:  ADD             R1, PC; dword_1ACF70
9AB6C:  ADD             R2, PC; off_11724C
9AB6E:  LDR             R1, [R1]
9AB70:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9AB72:  BLX             R2; j_opus_decoder_destroy_0
9AB74:  MOV             R0, R4
9AB76:  POP             {R4,R6,R7,PC}
