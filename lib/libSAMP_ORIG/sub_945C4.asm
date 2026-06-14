; =========================================================
; Game Engine Function: sub_945C4
; Address            : 0x945C4 - 0x946E0
; =========================================================

945C4:  PUSH            {R4-R7,LR}
945C6:  ADD             R7, SP, #0xC
945C8:  PUSH.W          {R8-R11}
945CC:  SUB             SP, SP, #4
945CE:  MOV             R4, R0
945D0:  LDRD.W          R6, R0, [R0]
945D4:  LDR             R2, [R4,#0xC]
945D6:  ADDS            R5, R2, R6
945D8:  CMP             R0, R5
945DA:  MOV             R9, R5
945DC:  BGE             loc_94658
945DE:  CMP             R0, #0
945E0:  ITTE NE
945E2:  ADDNE.W         R1, R0, R0,LSR#31
945E6:  ADDNE.W         R1, R0, R1,ASR#1
945EA:  MOVEQ           R1, #8
945EC:  CMP             R1, R5
945EE:  IT GT
945F0:  MOVGT           R5, R1
945F2:  CMP             R0, R5
945F4:  BGE             loc_94658
945F6:  LDR             R0, =(dword_1ACF68 - 0x945FC)
945F8:  ADD             R0, PC; dword_1ACF68
945FA:  LDR             R1, [R0]
945FC:  MOV             R10, R0
945FE:  LSLS            R0, R5, #2
94600:  CMP             R1, #0
94602:  ITTT NE
94604:  LDRNE.W         R2, [R1,#0x370]
94608:  ADDNE           R2, #1
9460A:  STRNE.W         R2, [R1,#0x370]
9460E:  LDR             R1, =(dword_1ACF70 - 0x94616)
94610:  LDR             R2, =(off_117248 - 0x94618)
94612:  ADD             R1, PC; dword_1ACF70
94614:  ADD             R2, PC; off_117248
94616:  MOV             R11, R1
94618:  LDR             R1, [R1]
9461A:  LDR             R2, [R2]; sub_9A720
9461C:  BLX             R2; sub_9A720
9461E:  LDR             R1, [R4,#8]; src
94620:  MOV             R8, R0
94622:  CBZ             R1, loc_94652
94624:  LDR             R0, [R4]
94626:  LSLS            R2, R0, #2; n
94628:  MOV             R0, R8; dest
9462A:  BLX             j_memcpy
9462E:  LDR             R0, [R4,#8]
94630:  CMP             R0, #0
94632:  ITTTT NE
94634:  LDRNE.W         R1, [R10]
94638:  CMPNE           R1, #0
9463A:  LDRNE.W         R2, [R1,#0x370]
9463E:  SUBNE           R2, #1
94640:  IT NE
94642:  STRNE.W         R2, [R1,#0x370]
94646:  LDR             R2, =(off_11724C - 0x94650)
94648:  LDR.W           R1, [R11]
9464C:  ADD             R2, PC; off_11724C
9464E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
94650:  BLX             R2; j_opus_decoder_destroy_0
94652:  LDR             R2, [R4,#0xC]
94654:  STRD.W          R5, R8, [R4,#4]
94658:  STR.W           R9, [R4]
9465C:  CBZ             R2, loc_946D8
9465E:  LDR             R0, [R4,#8]
94660:  LSLS            R2, R2, #2; n
94662:  LDR             R1, [R4,#0x14]; src
94664:  ADD.W           R0, R0, R6,LSL#2; dest
94668:  BLX             j_memcpy
9466C:  LDR             R0, [R4,#0x10]
9466E:  CMP.W           R0, #0xFFFFFFFF
94672:  BGT             loc_946D4
94674:  LDR             R0, =(dword_1ACF68 - 0x9467E)
94676:  MOV.W           R8, #0
9467A:  ADD             R0, PC; dword_1ACF68
9467C:  MOV             R9, R0
9467E:  LDR             R0, [R0]
94680:  CMP             R0, #0
94682:  ITTT NE
94684:  LDRNE.W         R1, [R0,#0x370]
94688:  ADDNE           R1, #1
9468A:  STRNE.W         R1, [R0,#0x370]
9468E:  LDR             R6, =(dword_1ACF70 - 0x94696)
94690:  LDR             R0, =(off_117248 - 0x94698)
94692:  ADD             R6, PC; dword_1ACF70
94694:  ADD             R0, PC; off_117248
94696:  LDR             R1, [R6]
94698:  LDR             R2, [R0]; sub_9A720
9469A:  MOVS            R0, #0
9469C:  BLX             R2; sub_9A720
9469E:  LDR             R1, [R4,#0x14]; src
946A0:  MOV             R5, R0
946A2:  CBZ             R1, loc_946D0
946A4:  LDR             R0, [R4,#0xC]
946A6:  LSLS            R2, R0, #2; n
946A8:  MOV             R0, R5; dest
946AA:  BLX             j_memcpy
946AE:  LDR             R0, [R4,#0x14]
946B0:  CMP             R0, #0
946B2:  ITTTT NE
946B4:  LDRNE.W         R1, [R9]
946B8:  CMPNE           R1, #0
946BA:  LDRNE.W         R2, [R1,#0x370]
946BE:  SUBNE           R2, #1
946C0:  IT NE
946C2:  STRNE.W         R2, [R1,#0x370]
946C6:  LDR             R2, =(off_11724C - 0x946CE)
946C8:  LDR             R1, [R6]
946CA:  ADD             R2, PC; off_11724C
946CC:  LDR             R2, [R2]; j_opus_decoder_destroy_0
946CE:  BLX             R2; j_opus_decoder_destroy_0
946D0:  STRD.W          R8, R5, [R4,#0x10]
946D4:  MOVS            R0, #0
946D6:  STR             R0, [R4,#0xC]
946D8:  ADD             SP, SP, #4
946DA:  POP.W           {R8-R11}
946DE:  POP             {R4-R7,PC}
