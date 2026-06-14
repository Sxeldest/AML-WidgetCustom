; =========================================================
; Game Engine Function: sub_172794
; Address            : 0x172794 - 0x1728D8
; =========================================================

172794:  PUSH            {R4-R7,LR}
172796:  ADD             R7, SP, #0xC
172798:  PUSH.W          {R8}
17279C:  MOV             R4, R0
17279E:  LDR             R0, [R0,#4]
1727A0:  CMP.W           R0, #0xFFFFFFFF
1727A4:  BGT             loc_1727CC
1727A6:  MOVS            R0, #0
1727A8:  MOVS            R6, #0
1727AA:  BL              sub_1654B0
1727AE:  LDR             R1, [R4,#8]; src
1727B0:  MOV             R5, R0
1727B2:  CBZ             R1, loc_1727C8
1727B4:  LDR             R0, [R4]
1727B6:  ADD.W           R0, R0, R0,LSL#2
1727BA:  LSLS            R2, R0, #3; n
1727BC:  MOV             R0, R5; dest
1727BE:  BLX             j_memcpy
1727C2:  LDR             R0, [R4,#8]
1727C4:  BL              sub_165578
1727C8:  STRD.W          R6, R5, [R4,#4]
1727CC:  LDR             R0, [R4,#0x10]
1727CE:  MOVS            R6, #0
1727D0:  STR             R6, [R4]
1727D2:  CMP.W           R0, #0xFFFFFFFF
1727D6:  BGT             loc_1727FC
1727D8:  MOVS            R0, #0
1727DA:  MOV.W           R8, #0
1727DE:  BL              sub_1654B0
1727E2:  LDR             R1, [R4,#0x14]; src
1727E4:  MOV             R5, R0
1727E6:  CBZ             R1, loc_1727F8
1727E8:  LDR             R0, [R4,#0xC]
1727EA:  LSLS            R2, R0, #1; n
1727EC:  MOV             R0, R5; dest
1727EE:  BLX             j_memcpy
1727F2:  LDR             R0, [R4,#0x14]
1727F4:  BL              sub_165578
1727F8:  STRD.W          R8, R5, [R4,#0x10]
1727FC:  LDR             R0, [R4,#0x1C]
1727FE:  STR             R6, [R4,#0xC]
172800:  CMP.W           R0, #0xFFFFFFFF
172804:  BGT             loc_17282C
172806:  MOVS            R0, #0
172808:  MOVS            R6, #0
17280A:  BL              sub_1654B0
17280E:  LDR             R1, [R4,#0x20]; src
172810:  MOV             R5, R0
172812:  CBZ             R1, loc_172828
172814:  LDR             R0, [R4,#0x18]
172816:  ADD.W           R0, R0, R0,LSL#2
17281A:  LSLS            R2, R0, #2; n
17281C:  MOV             R0, R5; dest
17281E:  BLX             j_memcpy
172822:  LDR             R0, [R4,#0x20]
172824:  BL              sub_165578
172828:  STRD.W          R6, R5, [R4,#0x1C]
17282C:  LDR             R0, [R4,#0x28]
17282E:  VMOV.I32        Q8, #0
172832:  ADD.W           R1, R4, #0x30 ; '0'
172836:  MOVS            R6, #0
172838:  STR             R6, [R4,#0x18]
17283A:  LDR             R0, [R0,#0x24]
17283C:  VST1.32         {D16-D17}, [R1]!
172840:  LDR             R1, [R1,#4]
172842:  STR             R0, [R4,#0x24]
172844:  CMP.W           R1, #0xFFFFFFFF
172848:  BGT             loc_17286E
17284A:  MOVS            R0, #0
17284C:  MOV.W           R8, #0
172850:  BL              sub_1654B0
172854:  LDR             R1, [R4,#0x48]; src
172856:  MOV             R5, R0
172858:  CBZ             R1, loc_17286A
17285A:  LDR             R0, [R4,#0x40]
17285C:  LSLS            R2, R0, #4; n
17285E:  MOV             R0, R5; dest
172860:  BLX             j_memcpy
172864:  LDR             R0, [R4,#0x48]
172866:  BL              sub_165578
17286A:  STRD.W          R8, R5, [R4,#0x44]
17286E:  LDR             R0, [R4,#0x50]
172870:  STR             R6, [R4,#0x40]
172872:  CMP.W           R0, #0xFFFFFFFF
172876:  BGT             loc_17289A
172878:  MOVS            R0, #0
17287A:  MOVS            R6, #0
17287C:  BL              sub_1654B0
172880:  LDR             R1, [R4,#0x54]; src
172882:  MOV             R5, R0
172884:  CBZ             R1, loc_172896
172886:  LDR             R0, [R4,#0x4C]
172888:  LSLS            R2, R0, #2; n
17288A:  MOV             R0, R5; dest
17288C:  BLX             j_memcpy
172890:  LDR             R0, [R4,#0x54]
172892:  BL              sub_165578
172896:  STRD.W          R6, R5, [R4,#0x50]
17289A:  LDR             R0, [R4,#0x5C]
17289C:  MOVS            R6, #0
17289E:  STR             R6, [R4,#0x4C]
1728A0:  CMP.W           R0, #0xFFFFFFFF
1728A4:  BGT             loc_1728CA
1728A6:  MOVS            R0, #0
1728A8:  MOV.W           R8, #0
1728AC:  BL              sub_1654B0
1728B0:  LDR             R1, [R4,#0x60]; src
1728B2:  MOV             R5, R0
1728B4:  CBZ             R1, loc_1728C6
1728B6:  LDR             R0, [R4,#0x58]
1728B8:  LSLS            R2, R0, #3; n
1728BA:  MOV             R0, R5; dest
1728BC:  BLX             j_memcpy
1728C0:  LDR             R0, [R4,#0x60]
1728C2:  BL              sub_165578
1728C6:  STRD.W          R8, R5, [R4,#0x5C]
1728CA:  MOVS            R0, #1
1728CC:  STR             R6, [R4,#0x58]
1728CE:  STRD.W          R6, R0, [R4,#0x64]
1728D2:  POP.W           {R8}
1728D6:  POP             {R4-R7,PC}
