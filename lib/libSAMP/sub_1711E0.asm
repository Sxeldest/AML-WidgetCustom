; =========================================================
; Game Engine Function: sub_1711E0
; Address            : 0x1711E0 - 0x17120E
; =========================================================

1711E0:  PUSH            {R4,R6,R7,LR}
1711E2:  ADD             R7, SP, #8
1711E4:  MOV             R4, R0
1711E6:  LDR             R0, [R0,#8]
1711E8:  CBZ             R0, loc_17120A
1711EA:  LDR             R1, =(dword_381B58 - 0x1711F0)
1711EC:  ADD             R1, PC; dword_381B58
1711EE:  LDR             R1, [R1]
1711F0:  CBZ             R1, loc_1711FC
1711F2:  LDR.W           R2, [R1,#0x370]
1711F6:  SUBS            R2, #1
1711F8:  STR.W           R2, [R1,#0x370]
1711FC:  LDR             R1, =(dword_381B60 - 0x171204)
1711FE:  LDR             R2, =(off_2390B0 - 0x171206)
171200:  ADD             R1, PC; dword_381B60
171202:  ADD             R2, PC; off_2390B0
171204:  LDR             R1, [R1]
171206:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171208:  BLX             R2; j_opus_decoder_destroy_0
17120A:  MOV             R0, R4
17120C:  POP             {R4,R6,R7,PC}
