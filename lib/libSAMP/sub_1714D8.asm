; =========================================================
; Game Engine Function: sub_1714D8
; Address            : 0x1714D8 - 0x171506
; =========================================================

1714D8:  PUSH            {R4,R6,R7,LR}
1714DA:  ADD             R7, SP, #8
1714DC:  MOV             R4, R0
1714DE:  LDR             R0, [R0,#8]
1714E0:  CBZ             R0, loc_171502
1714E2:  LDR             R1, =(dword_381B58 - 0x1714E8)
1714E4:  ADD             R1, PC; dword_381B58
1714E6:  LDR             R1, [R1]
1714E8:  CBZ             R1, loc_1714F4
1714EA:  LDR.W           R2, [R1,#0x370]
1714EE:  SUBS            R2, #1
1714F0:  STR.W           R2, [R1,#0x370]
1714F4:  LDR             R1, =(dword_381B60 - 0x1714FC)
1714F6:  LDR             R2, =(off_2390B0 - 0x1714FE)
1714F8:  ADD             R1, PC; dword_381B60
1714FA:  ADD             R2, PC; off_2390B0
1714FC:  LDR             R1, [R1]
1714FE:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171500:  BLX             R2; j_opus_decoder_destroy_0
171502:  MOV             R0, R4
171504:  POP             {R4,R6,R7,PC}
