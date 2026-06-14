; =========================================================
; Game Engine Function: sub_1717CC
; Address            : 0x1717CC - 0x171862
; =========================================================

1717CC:  PUSH            {R4-R7,LR}
1717CE:  ADD             R7, SP, #0xC
1717D0:  PUSH.W          {R8,R9,R11}
1717D4:  MOV             R4, R0
1717D6:  LDR             R0, [R0]
1717D8:  MOV             R5, R1
1717DA:  CBZ             R0, loc_1717E8
1717DC:  LDR             R1, [R4,#8]
1717DE:  MOV             R0, R4
1717E0:  MOV             R2, R5
1717E2:  BL              sub_171874
1717E6:  B               loc_17185C
1717E8:  LDR             R0, [R4,#4]
1717EA:  CBZ             R0, loc_1717F2
1717EC:  LDR             R6, [R4,#8]
1717EE:  MOVS            R0, #0
1717F0:  B               loc_171850
1717F2:  LDR             R0, =(dword_381B58 - 0x1717F8)
1717F4:  ADD             R0, PC; dword_381B58
1717F6:  MOV             R8, R0
1717F8:  LDR             R0, [R0]
1717FA:  CBZ             R0, loc_171806
1717FC:  LDR.W           R1, [R0,#0x370]
171800:  ADDS            R1, #1
171802:  STR.W           R1, [R0,#0x370]
171806:  LDR             R1, =(dword_381B60 - 0x17180E)
171808:  LDR             R0, =(off_2390AC - 0x171810)
17180A:  ADD             R1, PC; dword_381B60
17180C:  ADD             R0, PC; off_2390AC
17180E:  MOV             R9, R1
171810:  LDR             R1, [R1]
171812:  LDR             R2, [R0]; sub_171190
171814:  MOVS            R0, #0x20 ; ' '
171816:  BLX             R2; sub_171190
171818:  LDR             R1, [R4,#8]; src
17181A:  MOV             R6, R0
17181C:  CBZ             R1, loc_171848
17181E:  LDR             R0, [R4]
171820:  LSLS            R2, R0, #2; n
171822:  MOV             R0, R6; dest
171824:  BLX             j_memcpy
171828:  LDR             R0, [R4,#8]
17182A:  CBZ             R0, loc_17183C
17182C:  LDR.W           R1, [R8]
171830:  CBZ             R1, loc_17183C
171832:  LDR.W           R2, [R1,#0x370]
171836:  SUBS            R2, #1
171838:  STR.W           R2, [R1,#0x370]
17183C:  LDR             R2, =(off_2390B0 - 0x171846)
17183E:  LDR.W           R1, [R9]
171842:  ADD             R2, PC; off_2390B0
171844:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171846:  BLX             R2; j_opus_decoder_destroy_0
171848:  LDR             R0, [R4]
17184A:  MOVS            R1, #8
17184C:  STRD.W          R1, R6, [R4,#4]
171850:  LDR             R1, [R5]
171852:  STR.W           R1, [R6,R0,LSL#2]
171856:  LDR             R0, [R4]
171858:  ADDS            R0, #1
17185A:  STR             R0, [R4]
17185C:  POP.W           {R8,R9,R11}
171860:  POP             {R4-R7,PC}
