; =========================================================
; Game Engine Function: sub_16DC40
; Address            : 0x16DC40 - 0x16DC74
; =========================================================

16DC40:  PUSH            {R4,R5,R7,LR}
16DC42:  ADD             R7, SP, #8
16DC44:  MOV             R4, R0
16DC46:  LDR             R0, [R0,#8]
16DC48:  CBZ             R0, locret_16DC72
16DC4A:  LDR             R1, =(dword_381B58 - 0x16DC56)
16DC4C:  MOVS            R5, #0
16DC4E:  STRD.W          R5, R5, [R4]
16DC52:  ADD             R1, PC; dword_381B58
16DC54:  LDR             R1, [R1]
16DC56:  CBZ             R1, loc_16DC62
16DC58:  LDR.W           R2, [R1,#0x370]
16DC5C:  SUBS            R2, #1
16DC5E:  STR.W           R2, [R1,#0x370]
16DC62:  LDR             R1, =(dword_381B60 - 0x16DC6A)
16DC64:  LDR             R2, =(off_2390B0 - 0x16DC6C)
16DC66:  ADD             R1, PC; dword_381B60
16DC68:  ADD             R2, PC; off_2390B0
16DC6A:  LDR             R1, [R1]
16DC6C:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16DC6E:  BLX             R2; j_opus_decoder_destroy_0
16DC70:  STR             R5, [R4,#8]
16DC72:  POP             {R4,R5,R7,PC}
