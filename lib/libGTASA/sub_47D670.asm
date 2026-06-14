; =========================================================
; Game Engine Function: sub_47D670
; Address            : 0x47D670 - 0x47D836
; =========================================================

47D670:  PUSH            {R4-R7,LR}
47D672:  ADD             R7, SP, #0xC
47D674:  PUSH.W          {R8-R11}
47D678:  SUB             SP, SP, #4
47D67A:  MOV             R4, R0
47D67C:  LDR.W           R0, [R4,#0x124]
47D680:  CMP             R0, #1
47D682:  BNE             loc_47D6C8
47D684:  LDR.W           R6, [R4,#0x128]
47D688:  MOV.W           R8, #1
47D68C:  LDR             R0, [R6,#0x1C]
47D68E:  STR.W           R0, [R4,#0x138]
47D692:  LDR             R0, [R6,#0x20]
47D694:  STR.W           R0, [R4,#0x13C]
47D698:  LDR             R5, [R6,#0xC]
47D69A:  LDRD.W          R0, R1, [R6,#0x20]
47D69E:  STRD.W          R8, R8, [R6,#0x34]
47D6A2:  STRD.W          R8, R1, [R6,#0x3C]
47D6A6:  MOV             R1, R5
47D6A8:  STR.W           R8, [R6,#0x44]
47D6AC:  BLX             __aeabi_uidivmod
47D6B0:  CMP             R1, #0
47D6B2:  IT EQ
47D6B4:  MOVEQ           R1, R5
47D6B6:  STR             R1, [R6,#0x48]
47D6B8:  MOVS            R1, #0
47D6BA:  LDR.W           R0, [R4,#0x124]
47D6BE:  STRD.W          R8, R1, [R4,#0x140]
47D6C2:  CMP             R0, #1
47D6C4:  BGE             loc_47D7B0
47D6C6:  B               loc_47D80E
47D6C8:  SUBS            R0, #1
47D6CA:  CMP             R0, #4
47D6CC:  BCC             loc_47D6EA
47D6CE:  LDR             R0, [R4]
47D6D0:  MOVS            R1, #0x1A
47D6D2:  STR             R1, [R0,#0x14]
47D6D4:  LDR             R0, [R4]
47D6D6:  LDR.W           R1, [R4,#0x124]
47D6DA:  STR             R1, [R0,#0x18]
47D6DC:  MOVS            R1, #4
47D6DE:  LDR             R0, [R4]
47D6E0:  STR             R1, [R0,#0x1C]
47D6E2:  LDR             R0, [R4]
47D6E4:  LDR             R1, [R0]
47D6E6:  MOV             R0, R4
47D6E8:  BLX             R1
47D6EA:  LDR.W           R1, [R4,#0x110]
47D6EE:  LDR             R0, [R4,#0x1C]; int
47D6F0:  LSLS            R1, R1, #3; int
47D6F2:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
47D6F6:  LDR.W           R1, [R4,#0x114]
47D6FA:  LDR             R2, [R4,#0x20]
47D6FC:  STR.W           R0, [R4,#0x138]
47D700:  LSLS            R1, R1, #3; int
47D702:  MOV             R0, R2; int
47D704:  BLX             j__Z13jdiv_round_upll; jdiv_round_up(long,long)
47D708:  LDR.W           R1, [R4,#0x124]
47D70C:  MOVS            R2, #0
47D70E:  STRD.W          R0, R2, [R4,#0x13C]
47D712:  CMP             R1, #1
47D714:  BLT             loc_47D80E
47D716:  MOVS            R6, #0
47D718:  ADD.W           R0, R4, R6,LSL#2
47D71C:  LDR.W           R10, [R0,#0x128]
47D720:  LDRD.W          R5, R9, [R10,#8]
47D724:  LDRD.W          R0, R8, [R10,#0x1C]
47D728:  LDR.W           R1, [R10,#0x24]
47D72C:  MUL.W           R11, R9, R5
47D730:  MULS            R1, R5
47D732:  STR             R1, [SP,#0x20+var_20]
47D734:  MOV             R1, R5
47D736:  STRD.W          R5, R9, [R10,#0x34]
47D73A:  BLX             __aeabi_uidivmod
47D73E:  CMP             R1, #0
47D740:  MOV             R0, R8
47D742:  IT EQ
47D744:  MOVEQ           R1, R5
47D746:  STR.W           R1, [R10,#0x44]
47D74A:  MOV             R1, R9
47D74C:  BLX             __aeabi_uidivmod
47D750:  CMP             R1, #0
47D752:  IT EQ
47D754:  MOVEQ           R1, R9
47D756:  STR.W           R1, [R10,#0x48]
47D75A:  STR.W           R11, [R10,#0x3C]
47D75E:  LDR             R0, [SP,#0x20+var_20]
47D760:  STR.W           R0, [R10,#0x40]
47D764:  LDR.W           R0, [R4,#0x140]
47D768:  MLA.W           R0, R9, R5, R0
47D76C:  CMP             R0, #0xB
47D76E:  BLT             loc_47D77E
47D770:  LDR             R0, [R4]
47D772:  MOVS            R1, #0xD
47D774:  STR             R1, [R0,#0x14]
47D776:  LDR             R0, [R4]
47D778:  LDR             R1, [R0]
47D77A:  MOV             R0, R4
47D77C:  BLX             R1
47D77E:  CMP.W           R11, #1
47D782:  BLT             loc_47D7A2
47D784:  ADD.W           R0, R11, #1
47D788:  LDR.W           R1, [R4,#0x140]
47D78C:  SUBS            R0, #1
47D78E:  CMP             R0, #1
47D790:  ADD.W           R2, R1, #1
47D794:  STR.W           R2, [R4,#0x140]
47D798:  ADD.W           R1, R4, R1,LSL#2
47D79C:  STR.W           R6, [R1,#0x144]
47D7A0:  BGT             loc_47D788
47D7A2:  LDR.W           R0, [R4,#0x124]
47D7A6:  ADDS            R6, #1
47D7A8:  CMP             R6, R0
47D7AA:  BLT             loc_47D718
47D7AC:  CMP             R0, #1
47D7AE:  BLT             loc_47D80E
47D7B0:  ADD.W           R8, R4, #0x128
47D7B4:  MOVS            R6, #0
47D7B6:  MOV.W           R9, #0x34 ; '4'
47D7BA:  LDR.W           R5, [R8,R6,LSL#2]
47D7BE:  LDR             R1, [R5,#0x4C]
47D7C0:  CBNZ            R1, loc_47D808
47D7C2:  LDR             R0, [R5,#0x10]
47D7C4:  CMP             R0, #3
47D7C6:  ADD.W           R1, R4, R0,LSL#2
47D7CA:  ADD.W           R11, R1, #0x90
47D7CE:  BHI             loc_47D7D6
47D7D0:  LDR.W           R1, [R11]
47D7D4:  CBNZ            R1, loc_47D7E8
47D7D6:  LDR             R1, [R4]
47D7D8:  STR.W           R9, [R1,#0x14]
47D7DC:  LDR             R1, [R4]
47D7DE:  STR             R0, [R1,#0x18]
47D7E0:  LDR             R0, [R4]
47D7E2:  LDR             R1, [R0]
47D7E4:  MOV             R0, R4
47D7E6:  BLX             R1
47D7E8:  LDR             R0, [R4,#4]
47D7EA:  MOVS            R1, #1
47D7EC:  MOVS            R2, #0x82
47D7EE:  LDR             R3, [R0]
47D7F0:  MOV             R0, R4
47D7F2:  BLX             R3
47D7F4:  LDR.W           R1, [R11]; void *
47D7F8:  MOVS            R2, #0x82; size_t
47D7FA:  MOV             R10, R0
47D7FC:  BLX             memcpy_1
47D800:  STR.W           R10, [R5,#0x4C]
47D804:  LDR.W           R0, [R4,#0x124]
47D808:  ADDS            R6, #1
47D80A:  CMP             R6, R0
47D80C:  BLT             loc_47D7BA
47D80E:  LDR.W           R0, [R4,#0x198]
47D812:  LDR             R1, [R0]
47D814:  MOV             R0, R4
47D816:  BLX             R1
47D818:  LDR.W           R0, [R4,#0x188]
47D81C:  LDR             R1, [R0]
47D81E:  MOV             R0, R4
47D820:  BLX             R1
47D822:  LDR.W           R0, [R4,#0x188]
47D826:  LDR.W           R1, [R4,#0x190]
47D82A:  LDR             R0, [R0,#4]
47D82C:  STR             R0, [R1]
47D82E:  ADD             SP, SP, #4
47D830:  POP.W           {R8-R11}
47D834:  POP             {R4-R7,PC}
