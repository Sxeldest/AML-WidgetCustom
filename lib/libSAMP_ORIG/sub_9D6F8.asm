; =========================================================
; Game Engine Function: sub_9D6F8
; Address            : 0x9D6F8 - 0x9D838
; =========================================================

9D6F8:  PUSH            {R4-R7,LR}
9D6FA:  ADD             R7, SP, #0xC
9D6FC:  PUSH.W          {R8-R11}
9D700:  SUB             SP, SP, #4
9D702:  LDR.W           R8, [R7,#arg_0]
9D706:  CMP.W           R8, #0x1000000
9D70A:  BCC.W           loc_9D830
9D70E:  MOV             R4, R0
9D710:  MOV             R6, R1
9D712:  LDR             R0, [R0,#0x58]
9D714:  MOV             R9, R3
9D716:  LDR             R1, [R4,#0x5C]
9D718:  MOV             R11, R2
9D71A:  CMP             R0, R1
9D71C:  BNE             loc_9D75C
9D71E:  CMP             R0, #0
9D720:  ADD.W           R5, R0, #1
9D724:  ITTE NE
9D726:  ADDNE.W         R1, R0, R0,LSR#31
9D72A:  ADDNE.W         R1, R0, R1,ASR#1
9D72E:  MOVEQ           R1, #8
9D730:  CMP             R1, R5
9D732:  IT GT
9D734:  MOVGT           R5, R1
9D736:  CMP             R0, R5
9D738:  BGE             loc_9D75C
9D73A:  LSLS            R0, R5, #3
9D73C:  BL              sub_885E4
9D740:  LDR             R1, [R4,#0x60]; src
9D742:  MOV             R10, R0
9D744:  CBZ             R1, loc_9D756
9D746:  LDR             R0, [R4,#0x58]
9D748:  LSLS            R2, R0, #3; n
9D74A:  MOV             R0, R10; dest
9D74C:  BLX             j_memcpy
9D750:  LDR             R0, [R4,#0x60]
9D752:  BL              sub_88614
9D756:  LDR             R0, [R4,#0x58]
9D758:  STRD.W          R5, R10, [R4,#0x5C]
9D75C:  LDR             R1, [R4,#0x60]
9D75E:  LDRD.W          R2, R3, [R6]
9D762:  STR.W           R2, [R1,R0,LSL#3]
9D766:  ADD.W           R0, R1, R0,LSL#3
9D76A:  STR             R3, [R0,#4]
9D76C:  LDRD.W          R1, R2, [R4,#0x58]
9D770:  ADDS            R0, R1, #1
9D772:  STR             R0, [R4,#0x58]
9D774:  CMP             R0, R2
9D776:  BNE             loc_9D7B4
9D778:  ADDS            R5, R1, #2
9D77A:  CMP             R0, #0
9D77C:  ITTE NE
9D77E:  ADDNE.W         R1, R0, R0,LSR#31
9D782:  ADDNE.W         R1, R0, R1,ASR#1
9D786:  MOVEQ           R1, #8
9D788:  CMP             R1, R5
9D78A:  IT GT
9D78C:  MOVGT           R5, R1
9D78E:  CMP             R0, R5
9D790:  BGE             loc_9D7B4
9D792:  LSLS            R0, R5, #3
9D794:  BL              sub_885E4
9D798:  LDR             R1, [R4,#0x60]; src
9D79A:  MOV             R6, R0
9D79C:  CBZ             R1, loc_9D7AE
9D79E:  LDR             R0, [R4,#0x58]
9D7A0:  LSLS            R2, R0, #3; n
9D7A2:  MOV             R0, R6; dest
9D7A4:  BLX             j_memcpy
9D7A8:  LDR             R0, [R4,#0x60]
9D7AA:  BL              sub_88614
9D7AE:  LDR             R0, [R4,#0x58]
9D7B0:  STRD.W          R5, R6, [R4,#0x5C]
9D7B4:  LDR             R1, [R4,#0x60]
9D7B6:  LDRD.W          R2, R3, [R11]
9D7BA:  STR.W           R2, [R1,R0,LSL#3]
9D7BE:  ADD.W           R0, R1, R0,LSL#3
9D7C2:  STR             R3, [R0,#4]
9D7C4:  LDRD.W          R1, R2, [R4,#0x58]
9D7C8:  ADDS            R0, R1, #1
9D7CA:  STR             R0, [R4,#0x58]
9D7CC:  CMP             R0, R2
9D7CE:  BNE             loc_9D80C
9D7D0:  ADDS            R6, R1, #2
9D7D2:  CMP             R0, #0
9D7D4:  ITTE NE
9D7D6:  ADDNE.W         R1, R0, R0,LSR#31
9D7DA:  ADDNE.W         R1, R0, R1,ASR#1
9D7DE:  MOVEQ           R1, #8
9D7E0:  CMP             R1, R6
9D7E2:  IT GT
9D7E4:  MOVGT           R6, R1
9D7E6:  CMP             R0, R6
9D7E8:  BGE             loc_9D80C
9D7EA:  LSLS            R0, R6, #3
9D7EC:  BL              sub_885E4
9D7F0:  LDR             R1, [R4,#0x60]; src
9D7F2:  MOV             R5, R0
9D7F4:  CBZ             R1, loc_9D806
9D7F6:  LDR             R0, [R4,#0x58]
9D7F8:  LSLS            R2, R0, #3; n
9D7FA:  MOV             R0, R5; dest
9D7FC:  BLX             j_memcpy
9D800:  LDR             R0, [R4,#0x60]
9D802:  BL              sub_88614
9D806:  LDR             R0, [R4,#0x58]
9D808:  STRD.W          R6, R5, [R4,#0x5C]
9D80C:  LDR             R1, [R4,#0x60]
9D80E:  LDRD.W          R2, R3, [R9]
9D812:  STR.W           R2, [R1,R0,LSL#3]
9D816:  ADD.W           R0, R1, R0,LSL#3
9D81A:  STR             R3, [R0,#4]
9D81C:  MOV             R3, R8
9D81E:  LDR             R0, [R4,#0x58]
9D820:  LDR             R1, [R4,#0x60]
9D822:  ADDS            R2, R0, #1
9D824:  MOV             R0, R4
9D826:  STR             R2, [R4,#0x58]
9D828:  BL              sub_9CA40
9D82C:  MOVS            R0, #0
9D82E:  STR             R0, [R4,#0x58]
9D830:  ADD             SP, SP, #4
9D832:  POP.W           {R8-R11}
9D836:  POP             {R4-R7,PC}
