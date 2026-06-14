; =========================================================
; Game Engine Function: sub_1715D8
; Address            : 0x1715D8 - 0x17160A
; =========================================================

1715D8:  PUSH            {R4,R6,R7,LR}
1715DA:  ADD             R7, SP, #8
1715DC:  MOV             R4, R0
1715DE:  MOVW            R0, #0x1508
1715E2:  LDR             R0, [R4,R0]
1715E4:  CBZ             R0, loc_171606
1715E6:  LDR             R1, =(dword_381B58 - 0x1715EC)
1715E8:  ADD             R1, PC; dword_381B58
1715EA:  LDR             R1, [R1]
1715EC:  CBZ             R1, loc_1715F8
1715EE:  LDR.W           R2, [R1,#0x370]
1715F2:  SUBS            R2, #1
1715F4:  STR.W           R2, [R1,#0x370]
1715F8:  LDR             R1, =(dword_381B60 - 0x171600)
1715FA:  LDR             R2, =(off_2390B0 - 0x171602)
1715FC:  ADD             R1, PC; dword_381B60
1715FE:  ADD             R2, PC; off_2390B0
171600:  LDR             R1, [R1]
171602:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171604:  BLX             R2; j_opus_decoder_destroy_0
171606:  MOV             R0, R4
171608:  POP             {R4,R6,R7,PC}
