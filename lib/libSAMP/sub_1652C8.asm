; =========================================================
; Game Engine Function: sub_1652C8
; Address            : 0x1652C8 - 0x1652F6
; =========================================================

1652C8:  PUSH            {R4,R6,R7,LR}
1652CA:  ADD             R7, SP, #8
1652CC:  MOV             R4, R0
1652CE:  LDR             R0, [R0,#8]
1652D0:  CBZ             R0, loc_1652F2
1652D2:  LDR             R1, =(dword_381B58 - 0x1652D8)
1652D4:  ADD             R1, PC; dword_381B58
1652D6:  LDR             R1, [R1]
1652D8:  CBZ             R1, loc_1652E4
1652DA:  LDR.W           R2, [R1,#0x370]
1652DE:  SUBS            R2, #1
1652E0:  STR.W           R2, [R1,#0x370]
1652E4:  LDR             R1, =(dword_381B60 - 0x1652EC)
1652E6:  LDR             R2, =(off_2390B0 - 0x1652EE)
1652E8:  ADD             R1, PC; dword_381B60
1652EA:  ADD             R2, PC; off_2390B0
1652EC:  LDR             R1, [R1]
1652EE:  LDR             R2, [R2]; j_opus_decoder_destroy_0
1652F0:  BLX             R2; j_opus_decoder_destroy_0
1652F2:  MOV             R0, R4
1652F4:  POP             {R4,R6,R7,PC}
