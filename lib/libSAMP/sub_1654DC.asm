; =========================================================
; Game Engine Function: sub_1654DC
; Address            : 0x1654DC - 0x165566
; =========================================================

1654DC:  PUSH            {R4-R7,LR}
1654DE:  ADD             R7, SP, #0xC
1654E0:  PUSH.W          {R8-R10}
1654E4:  MOV             R8, R2
1654E6:  MOV             R9, R1
1654E8:  MOV             R6, R0
1654EA:  CBZ             R1, loc_1654F2
1654EC:  LDR.W           R5, [R9]
1654F0:  B               loc_1654FA
1654F2:  MOV             R0, R6; s
1654F4:  BLX             strlen
1654F8:  ADDS            R5, R0, #1
1654FA:  MOV             R0, R8; s
1654FC:  BLX             strlen
165500:  ADDS            R4, R0, #1
165502:  CMP             R5, R4
165504:  BCS             loc_165554
165506:  LDR             R5, =(dword_381B58 - 0x16550C)
165508:  ADD             R5, PC; dword_381B58
16550A:  CBZ             R6, loc_16551A
16550C:  LDR             R0, [R5]
16550E:  CBZ             R0, loc_16551A
165510:  LDR.W           R1, [R0,#0x370]
165514:  SUBS            R1, #1
165516:  STR.W           R1, [R0,#0x370]
16551A:  LDR             R1, =(dword_381B60 - 0x165522)
16551C:  LDR             R0, =(off_2390B0 - 0x165524)
16551E:  ADD             R1, PC; dword_381B60
165520:  ADD             R0, PC; off_2390B0
165522:  MOV             R10, R1
165524:  LDR             R1, [R1]
165526:  LDR             R2, [R0]; j_opus_decoder_destroy_0
165528:  MOV             R0, R6
16552A:  BLX             R2; j_opus_decoder_destroy_0
16552C:  LDR             R0, [R5]
16552E:  CBZ             R0, loc_16553A
165530:  LDR.W           R1, [R0,#0x370]
165534:  ADDS            R1, #1
165536:  STR.W           R1, [R0,#0x370]
16553A:  LDR             R0, =(off_2390AC - 0x165544)
16553C:  LDR.W           R1, [R10]
165540:  ADD             R0, PC; off_2390AC
165542:  LDR             R2, [R0]; sub_171190
165544:  MOV             R0, R4
165546:  BLX             R2; sub_171190
165548:  MOV             R6, R0
16554A:  CMP.W           R9, #0
16554E:  IT NE
165550:  STRNE.W         R4, [R9]
165554:  MOV             R0, R6; dest
165556:  MOV             R1, R8; src
165558:  MOV             R2, R4; n
16555A:  BLX             j_memcpy
16555E:  MOV             R0, R6
165560:  POP.W           {R8-R10}
165564:  POP             {R4-R7,PC}
