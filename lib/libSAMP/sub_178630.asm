; =========================================================
; Game Engine Function: sub_178630
; Address            : 0x178630 - 0x178824
; =========================================================

178630:  PUSH            {R4-R7,LR}
178632:  ADD             R7, SP, #0xC
178634:  PUSH.W          {R8-R11}
178638:  SUB             SP, SP, #4
17863A:  MOV             R8, R0
17863C:  LDR             R0, [R0,#0x20]
17863E:  CBZ             R0, loc_178658
178640:  LDR.W           R2, [R8,#0x28]
178644:  MOVS            R1, #0
178646:  LDRH.W          R3, [R2],#0x28
17864A:  CMP             R1, R3
17864C:  IT CC
17864E:  MOVCC           R1, R3
178650:  SUBS            R0, #1
178652:  BNE             loc_178646
178654:  ADDS            R5, R1, #1
178656:  B               loc_17865A
178658:  MOVS            R5, #1
17865A:  LDR.W           R0, [R8,#8]
17865E:  CBZ             R0, loc_17866E
178660:  MOVS            R6, #0
178662:  STRD.W          R6, R6, [R8]
178666:  BL              sub_165578
17866A:  STR.W           R6, [R8,#8]
17866E:  LDR.W           R0, [R8,#0x1C]
178672:  CBZ             R0, loc_178682
178674:  MOVS            R6, #0
178676:  STRD.W          R6, R6, [R8,#0x14]
17867A:  BL              sub_165578
17867E:  STR.W           R6, [R8,#0x1C]
178682:  MOVS            R0, #0
178684:  MOV             R1, R5
178686:  STRB.W          R0, [R8,#0x54]
17868A:  MOV             R0, R8
17868C:  BL              sub_1788DE
178690:  LDRD.W          R2, R10, [R8,#0x1C]
178694:  CMP.W           R10, #1
178698:  LDR.W           R0, [R8,#8]
17869C:  LDR.W           R9, [R8,#0x28]
1786A0:  BLT             loc_1786BE
1786A2:  ADD.W           R1, R9, #4
1786A6:  MOVS            R3, #0
1786A8:  LDRH.W          R4, [R1,#-4]
1786AC:  LDR.W           R6, [R1],#0x28
1786B0:  STRH.W          R3, [R2,R4,LSL#1]
1786B4:  ADDS            R3, #1
1786B6:  CMP             R10, R3
1786B8:  STR.W           R6, [R0,R4,LSL#2]
1786BC:  BNE             loc_1786A8
1786BE:  LDR.W           R12, [R8,#0x14]
1786C2:  MOVW            R11, #0xFFFF
1786C6:  CMP.W           R12, #0x20 ; ' '
1786CA:  BLE             loc_1786E2
1786CC:  LDRH.W          R1, [R2,#0x40]
1786D0:  LDRD.W          R9, R3, [R8,#0x28]
1786D4:  CMP             R1, R11
1786D6:  ADD.W           LR, R1, R1,LSL#2
1786DA:  IT NE
1786DC:  ADDNE.W         R3, R9, LR,LSL#3
1786E0:  B               loc_1786E6
1786E2:  LDR.W           R3, [R8,#0x2C]
1786E6:  CMP             R3, #0
1786E8:  BEQ             loc_1787C6
1786EA:  SUB.W           R0, R10, #1
1786EE:  ADD.W           R1, R0, R0,LSL#2
1786F2:  LDRH.W          R1, [R9,R1,LSL#3]
1786F6:  CMP             R1, #9
1786F8:  BNE             loc_1786FE
1786FA:  MOV             R10, R0
1786FC:  B               loc_17875E
1786FE:  LDR.W           R0, [R8,#0x24]
178702:  ADD.W           R11, R10, #1
178706:  MOV             R6, R11
178708:  CMP             R0, R10
17870A:  BGT             loc_178756
17870C:  CMP             R0, #0
17870E:  ITTE NE
178710:  ADDNE.W         R1, R0, R0,LSR#31
178714:  ADDNE.W         R2, R0, R1,ASR#1
178718:  MOVEQ           R2, #8
17871A:  CMP             R2, R11
17871C:  IT GT
17871E:  MOVGT           R11, R2
178720:  CMP             R0, R11
178722:  BGE             loc_178756
178724:  ADD.W           R0, R11, R11,LSL#2
178728:  LSLS            R0, R0, #3
17872A:  BL              sub_1654B0
17872E:  LDR.W           R1, [R8,#0x28]; src
178732:  MOV             R9, R0
178734:  CBZ             R1, loc_17874E
178736:  LDR.W           R0, [R8,#0x20]
17873A:  ADD.W           R0, R0, R0,LSL#2
17873E:  LSLS            R2, R0, #3; n
178740:  MOV             R0, R9; dest
178742:  BLX             j_memcpy
178746:  LDR.W           R0, [R8,#0x28]
17874A:  BL              sub_165578
17874E:  LDR.W           R12, [R8,#0x14]
178752:  STRD.W          R11, R9, [R8,#0x24]
178756:  MOVW            R11, #0xFFFF
17875A:  STR.W           R6, [R8,#0x20]
17875E:  ADD.W           R0, R10, R10,LSL#2
178762:  CMP.W           R12, #0x20 ; ' '
178766:  ADD.W           LR, R9, R0,LSL#3
17876A:  BLE             loc_178786
17876C:  LDR.W           R1, [R8,#0x1C]
178770:  LDRD.W          R2, R12, [R8,#0x28]
178774:  LDRH.W          R1, [R1,#0x40]
178778:  CMP             R1, R11
17877A:  ADD.W           R6, R1, R1,LSL#2
17877E:  IT NE
178780:  ADDNE.W         R12, R2, R6,LSL#3
178784:  B               loc_17878A
178786:  LDR.W           R12, [R8,#0x2C]
17878A:  LDM.W           R12!, {R0,R2-R4,R6}
17878E:  MOV             R1, LR
178790:  VMOV.F32        S0, #4.0
178794:  STM             R1!, {R0,R2-R4,R6}
178796:  LDM.W           R12, {R0,R2-R4,R6}
17879A:  STM             R1!, {R0,R2-R4,R6}
17879C:  MOVS            R3, #9
17879E:  VLDR            S2, [LR,#4]
1787A2:  LDR.W           R0, [R8,#8]
1787A6:  VMUL.F32        S0, S2, S0
1787AA:  LDR.W           R12, [R8,#0x14]
1787AE:  LDR.W           R2, [R8,#0x1C]
1787B2:  LDRH.W          R1, [R8,#0x20]
1787B6:  STRH.W          R3, [LR]
1787BA:  SUBS            R1, #1
1787BC:  STRH            R1, [R2,#0x12]
1787BE:  VSTR            S0, [LR,#4]
1787C2:  VSTR            S0, [R0,#0x24]
1787C6:  LDRH.W          R3, [R8,#0x42]
1787CA:  CMP             R12, R3
1787CC:  BLE             loc_1787D6
1787CE:  LDRH.W          R1, [R2,R3,LSL#1]
1787D2:  CMP             R1, R11
1787D4:  BNE             loc_1787E2
1787D6:  MOVS            R1, #0
1787D8:  VLDR            S0, =0.0
1787DC:  STR.W           R1, [R8,#0x2C]
1787E0:  B               loc_1787FE
1787E2:  LDR.W           R2, [R8,#0x28]
1787E6:  ADD.W           R1, R1, R1,LSL#2
1787EA:  ADD.W           R1, R2, R1,LSL#3
1787EE:  STR.W           R1, [R8,#0x2C]
1787F2:  CMP             R2, #0
1787F4:  ITE NE
1787F6:  VLDRNE          S0, [R1,#4]
1787FA:  VLDREQ          S0, =0.0
1787FE:  VSTR            S0, [R8,#0xC]
178802:  VLDR            S0, [R0]
178806:  VCMP.F32        S0, #0.0
17880A:  VMRS            APSR_nzcv, FPSCR
17880E:  ITT MI
178810:  LDRMI.W         R1, [R8,#0xC]
178814:  STRMI           R1, [R0]
178816:  ADDS            R0, #4
178818:  SUBS            R5, #1
17881A:  BNE             loc_178802
17881C:  ADD             SP, SP, #4
17881E:  POP.W           {R8-R11}
178822:  POP             {R4-R7,PC}
