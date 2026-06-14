; =========================================================
; Game Engine Function: sub_1710D0
; Address            : 0x1710D0 - 0x1710FE
; =========================================================

1710D0:  PUSH            {R4,R6,R7,LR}
1710D2:  ADD             R7, SP, #8
1710D4:  MOV             R4, R0
1710D6:  LDR             R0, [R0,#8]
1710D8:  CBZ             R0, loc_1710FA
1710DA:  LDR             R1, =(dword_381B58 - 0x1710E0)
1710DC:  ADD             R1, PC; dword_381B58
1710DE:  LDR             R1, [R1]
1710E0:  CBZ             R1, loc_1710EC
1710E2:  LDR.W           R2, [R1,#0x370]
1710E6:  SUBS            R2, #1
1710E8:  STR.W           R2, [R1,#0x370]
1710EC:  LDR             R1, =(dword_381B60 - 0x1710F4)
1710EE:  LDR             R2, =(off_2390B0 - 0x1710F6)
1710F0:  ADD             R1, PC; dword_381B60
1710F2:  ADD             R2, PC; off_2390B0
1710F4:  LDR             R1, [R1]
1710F6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
1710F8:  BLX             R2; j_opus_decoder_destroy_0
1710FA:  MOV             R0, R4
1710FC:  POP             {R4,R6,R7,PC}
