; =========================================================
; Game Engine Function: sub_1711A0
; Address            : 0x1711A0 - 0x1711CE
; =========================================================

1711A0:  PUSH            {R4,R6,R7,LR}
1711A2:  ADD             R7, SP, #8
1711A4:  MOV             R4, R0
1711A6:  LDR             R0, [R0,#8]
1711A8:  CBZ             R0, loc_1711CA
1711AA:  LDR             R1, =(dword_381B58 - 0x1711B0)
1711AC:  ADD             R1, PC; dword_381B58
1711AE:  LDR             R1, [R1]
1711B0:  CBZ             R1, loc_1711BC
1711B2:  LDR.W           R2, [R1,#0x370]
1711B6:  SUBS            R2, #1
1711B8:  STR.W           R2, [R1,#0x370]
1711BC:  LDR             R1, =(dword_381B60 - 0x1711C4)
1711BE:  LDR             R2, =(off_2390B0 - 0x1711C6)
1711C0:  ADD             R1, PC; dword_381B60
1711C2:  ADD             R2, PC; off_2390B0
1711C4:  LDR             R1, [R1]
1711C6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
1711C8:  BLX             R2; j_opus_decoder_destroy_0
1711CA:  MOV             R0, R4
1711CC:  POP             {R4,R6,R7,PC}
