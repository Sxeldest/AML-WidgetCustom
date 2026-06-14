; =========================================================
; Game Engine Function: sub_166CA0
; Address            : 0x166CA0 - 0x166CCE
; =========================================================

166CA0:  PUSH            {R4,R6,R7,LR}
166CA2:  ADD             R7, SP, #8
166CA4:  MOV             R4, R0
166CA6:  LDR             R0, [R0,#8]
166CA8:  CBZ             R0, loc_166CCA
166CAA:  LDR             R1, =(dword_381B58 - 0x166CB0)
166CAC:  ADD             R1, PC; dword_381B58
166CAE:  LDR             R1, [R1]
166CB0:  CBZ             R1, loc_166CBC
166CB2:  LDR.W           R2, [R1,#0x370]
166CB6:  SUBS            R2, #1
166CB8:  STR.W           R2, [R1,#0x370]
166CBC:  LDR             R1, =(dword_381B60 - 0x166CC4)
166CBE:  LDR             R2, =(off_2390B0 - 0x166CC6)
166CC0:  ADD             R1, PC; dword_381B60
166CC2:  ADD             R2, PC; off_2390B0
166CC4:  LDR             R1, [R1]
166CC6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
166CC8:  BLX             R2; j_opus_decoder_destroy_0
166CCA:  MOV             R0, R4
166CCC:  POP             {R4,R6,R7,PC}
