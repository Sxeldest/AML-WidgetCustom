; =========================================================
; Game Engine Function: sub_171518
; Address            : 0x171518 - 0x171546
; =========================================================

171518:  PUSH            {R4,R6,R7,LR}
17151A:  ADD             R7, SP, #8
17151C:  MOV             R4, R0
17151E:  LDR             R0, [R0,#8]
171520:  CBZ             R0, loc_171542
171522:  LDR             R1, =(dword_381B58 - 0x171528)
171524:  ADD             R1, PC; dword_381B58
171526:  LDR             R1, [R1]
171528:  CBZ             R1, loc_171534
17152A:  LDR.W           R2, [R1,#0x370]
17152E:  SUBS            R2, #1
171530:  STR.W           R2, [R1,#0x370]
171534:  LDR             R1, =(dword_381B60 - 0x17153C)
171536:  LDR             R2, =(off_2390B0 - 0x17153E)
171538:  ADD             R1, PC; dword_381B60
17153A:  ADD             R2, PC; off_2390B0
17153C:  LDR             R1, [R1]
17153E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171540:  BLX             R2; j_opus_decoder_destroy_0
171542:  MOV             R0, R4
171544:  POP             {R4,R6,R7,PC}
