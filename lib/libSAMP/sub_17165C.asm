; =========================================================
; Game Engine Function: sub_17165C
; Address            : 0x17165C - 0x17171C
; =========================================================

17165C:  PUSH            {R4-R7,LR}
17165E:  ADD             R7, SP, #0xC
171660:  PUSH.W          {R8-R11}
171664:  SUB             SP, SP, #4
171666:  MOV             R9, R0
171668:  MOV             R4, R0
17166A:  LDR.W           R0, [R9,#0xC]!
17166E:  CMP             R0, #1
171670:  LDR             R0, =(dword_381B58 - 0x171676)
171672:  ADD             R0, PC; dword_381B58
171674:  MOV             R8, R0
171676:  LDR             R0, =(dword_381B60 - 0x17167C)
171678:  ADD             R0, PC; dword_381B60
17167A:  MOV             R10, R0
17167C:  LDR             R0, =(off_2390B0 - 0x171682)
17167E:  ADD             R0, PC; off_2390B0
171680:  MOV             R11, R0
171682:  BLT             loc_1716E4
171684:  MOVS            R6, #0
171686:  LDR             R0, [R4,#0x14]
171688:  ADD.W           R0, R0, R6,LSL#3
17168C:  LDR             R0, [R0,#4]
17168E:  ADDS            R1, R0, #1
171690:  BEQ             loc_1716DA
171692:  MOVS            R2, #0x74 ; 't'
171694:  LDR             R1, [R4,#8]
171696:  MLA.W           R5, R0, R2, R1
17169A:  LDR             R0, [R5,#0x70]
17169C:  CBZ             R0, loc_1716BA
17169E:  MOV             R1, R8
1716A0:  LDR.W           R1, [R8]
1716A4:  CBZ             R1, loc_1716B0
1716A6:  LDR.W           R2, [R1,#0x370]
1716AA:  SUBS            R2, #1
1716AC:  STR.W           R2, [R1,#0x370]
1716B0:  LDR.W           R1, [R10]
1716B4:  LDR.W           R2, [R11]; j_opus_decoder_destroy_0
1716B8:  BLX             R2; j_opus_decoder_destroy_0
1716BA:  LDR             R0, [R5,#8]
1716BC:  CBZ             R0, loc_1716DA
1716BE:  MOV             R1, R8
1716C0:  LDR.W           R1, [R8]
1716C4:  CBZ             R1, loc_1716D0
1716C6:  LDR.W           R2, [R1,#0x370]
1716CA:  SUBS            R2, #1
1716CC:  STR.W           R2, [R1,#0x370]
1716D0:  LDR.W           R1, [R10]
1716D4:  LDR.W           R2, [R11]; j_opus_decoder_destroy_0
1716D8:  BLX             R2; j_opus_decoder_destroy_0
1716DA:  LDR.W           R0, [R9]
1716DE:  ADDS            R6, #1
1716E0:  CMP             R6, R0
1716E2:  BLT             loc_171686
1716E4:  MOV             R0, R9
1716E6:  BL              sub_16DC40
1716EA:  LDR             R0, [R4,#8]
1716EC:  CBZ             R0, loc_171710
1716EE:  LDR.W           R1, [R8]
1716F2:  MOVS            R5, #0
1716F4:  STRD.W          R5, R5, [R4]
1716F8:  CBZ             R1, loc_171704
1716FA:  LDR.W           R2, [R1,#0x370]
1716FE:  SUBS            R2, #1
171700:  STR.W           R2, [R1,#0x370]
171704:  LDR.W           R1, [R10]
171708:  LDR.W           R2, [R11]; j_opus_decoder_destroy_0
17170C:  BLX             R2; j_opus_decoder_destroy_0
17170E:  STR             R5, [R4,#8]
171710:  MOVS            R0, #0
171712:  STR             R0, [R4,#0x18]
171714:  ADD             SP, SP, #4
171716:  POP.W           {R8-R11}
17171A:  POP             {R4-R7,PC}
