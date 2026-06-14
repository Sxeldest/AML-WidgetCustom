; =========================================================
; Game Engine Function: sub_166C60
; Address            : 0x166C60 - 0x166C8E
; =========================================================

166C60:  PUSH            {R4,R6,R7,LR}
166C62:  ADD             R7, SP, #8
166C64:  MOV             R4, R0
166C66:  LDR             R0, [R0,#8]
166C68:  CBZ             R0, loc_166C8A
166C6A:  LDR             R1, =(dword_381B58 - 0x166C70)
166C6C:  ADD             R1, PC; dword_381B58
166C6E:  LDR             R1, [R1]
166C70:  CBZ             R1, loc_166C7C
166C72:  LDR.W           R2, [R1,#0x370]
166C76:  SUBS            R2, #1
166C78:  STR.W           R2, [R1,#0x370]
166C7C:  LDR             R1, =(dword_381B60 - 0x166C84)
166C7E:  LDR             R2, =(off_2390B0 - 0x166C86)
166C80:  ADD             R1, PC; dword_381B60
166C82:  ADD             R2, PC; off_2390B0
166C84:  LDR             R1, [R1]
166C86:  LDR             R2, [R2]; j_opus_decoder_destroy_0
166C88:  BLX             R2; j_opus_decoder_destroy_0
166C8A:  MOV             R0, R4
166C8C:  POP             {R4,R6,R7,PC}
