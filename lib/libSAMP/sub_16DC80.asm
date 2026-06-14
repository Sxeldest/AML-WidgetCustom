; =========================================================
; Game Engine Function: sub_16DC80
; Address            : 0x16DC80 - 0x16DCB4
; =========================================================

16DC80:  PUSH            {R4,R5,R7,LR}
16DC82:  ADD             R7, SP, #8
16DC84:  MOV             R4, R0
16DC86:  LDR             R0, [R0,#8]
16DC88:  CBZ             R0, locret_16DCB2
16DC8A:  LDR             R1, =(dword_381B58 - 0x16DC96)
16DC8C:  MOVS            R5, #0
16DC8E:  STRD.W          R5, R5, [R4]
16DC92:  ADD             R1, PC; dword_381B58
16DC94:  LDR             R1, [R1]
16DC96:  CBZ             R1, loc_16DCA2
16DC98:  LDR.W           R2, [R1,#0x370]
16DC9C:  SUBS            R2, #1
16DC9E:  STR.W           R2, [R1,#0x370]
16DCA2:  LDR             R1, =(dword_381B60 - 0x16DCAA)
16DCA4:  LDR             R2, =(off_2390B0 - 0x16DCAC)
16DCA6:  ADD             R1, PC; dword_381B60
16DCA8:  ADD             R2, PC; off_2390B0
16DCAA:  LDR             R1, [R1]
16DCAC:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16DCAE:  BLX             R2; j_opus_decoder_destroy_0
16DCB0:  STR             R5, [R4,#8]
16DCB2:  POP             {R4,R5,R7,PC}
