; =========================================================
; Game Engine Function: sub_166CE0
; Address            : 0x166CE0 - 0x166D0E
; =========================================================

166CE0:  PUSH            {R4,R6,R7,LR}
166CE2:  ADD             R7, SP, #8
166CE4:  MOV             R4, R0
166CE6:  LDR             R0, [R0,#8]
166CE8:  CBZ             R0, loc_166D0A
166CEA:  LDR             R1, =(dword_381B58 - 0x166CF0)
166CEC:  ADD             R1, PC; dword_381B58
166CEE:  LDR             R1, [R1]
166CF0:  CBZ             R1, loc_166CFC
166CF2:  LDR.W           R2, [R1,#0x370]
166CF6:  SUBS            R2, #1
166CF8:  STR.W           R2, [R1,#0x370]
166CFC:  LDR             R1, =(dword_381B60 - 0x166D04)
166CFE:  LDR             R2, =(off_2390B0 - 0x166D06)
166D00:  ADD             R1, PC; dword_381B60
166D02:  ADD             R2, PC; off_2390B0
166D04:  LDR             R1, [R1]
166D06:  LDR             R2, [R2]; j_opus_decoder_destroy_0
166D08:  BLX             R2; j_opus_decoder_destroy_0
166D0A:  MOV             R0, R4
166D0C:  POP             {R4,R6,R7,PC}
