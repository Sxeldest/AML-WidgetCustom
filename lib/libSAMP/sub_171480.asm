; =========================================================
; Game Engine Function: sub_171480
; Address            : 0x171480 - 0x1714C8
; =========================================================

171480:  PUSH            {R4-R7,LR}
171482:  ADD             R7, SP, #0xC
171484:  PUSH.W          {R8,R9,R11}
171488:  MOV             R4, R0
17148A:  LDR             R0, =(dword_381B58 - 0x171494)
17148C:  LDR             R6, =(dword_381B60 - 0x171496)
17148E:  MOVS            R5, #0x14
171490:  ADD             R0, PC; dword_381B58
171492:  ADD             R6, PC; dword_381B60
171494:  MOV             R8, R0
171496:  MOV             R9, R6
171498:  LDR             R6, =(off_2390B0 - 0x17149E)
17149A:  ADD             R6, PC; off_2390B0
17149C:  LDR             R0, [R4,R5]
17149E:  CBZ             R0, loc_1714BA
1714A0:  MOV             R1, R8
1714A2:  LDR.W           R1, [R8]
1714A6:  CBZ             R1, loc_1714B2
1714A8:  LDR.W           R2, [R1,#0x370]
1714AC:  SUBS            R2, #1
1714AE:  STR.W           R2, [R1,#0x370]
1714B2:  LDR.W           R1, [R9]
1714B6:  LDR             R2, [R6]; j_opus_decoder_destroy_0
1714B8:  BLX             R2; j_opus_decoder_destroy_0
1714BA:  SUBS            R5, #0xC
1714BC:  ADDS            R0, R5, #4
1714BE:  BNE             loc_17149C
1714C0:  MOV             R0, R4
1714C2:  POP.W           {R8,R9,R11}
1714C6:  POP             {R4-R7,PC}
