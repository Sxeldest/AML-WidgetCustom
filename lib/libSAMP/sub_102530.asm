; =========================================================
; Game Engine Function: sub_102530
; Address            : 0x102530 - 0x102806
; =========================================================

102530:  PUSH            {R4-R7,LR}
102532:  ADD             R7, SP, #0xC
102534:  PUSH.W          {R8-R11}
102538:  SUB             SP, SP, #4
10253A:  VPUSH           {D8-D12}
10253E:  SUB             SP, SP, #0xE0
102540:  MOV             R5, R1
102542:  ADD             R1, SP, #0x128+var_88
102544:  MOV             R8, R3
102546:  MOV             R6, R2
102548:  MOV             R4, R0
10254A:  BL              sub_F8910
10254E:  LDRB.W          R0, [R4,#0x2C4]
102552:  VMOV            S20, R8
102556:  VLDR            S16, [R7,#arg_4]
10255A:  VMOV            S22, R6
10255E:  VLDR            S18, [R7,#arg_0]
102562:  VMOV            S24, R5
102566:  LSLS            R0, R0, #0x1F
102568:  BEQ             loc_10262E
10256A:  MOV             R0, R4
10256C:  MOVS            R1, #0
10256E:  MOVS            R2, #0
102570:  MOVS            R3, #0
102572:  BL              sub_F89BC
102576:  MOV             R0, R4
102578:  MOVS            R1, #0
10257A:  MOVS            R2, #0
10257C:  MOVS            R3, #0
10257E:  BL              sub_F8A08
102582:  LDRB.W          R0, [R4,#0x2C4]
102586:  LDRB.W          R1, [R4,#0x2CC]
10258A:  VLDR            S0, [R4,#0x300]
10258E:  AND.W           R0, R0, #0xFE
102592:  VLDR            S2, [R4,#0x304]
102596:  VLDR            S4, [R4,#0x308]
10259A:  STRB.W          R0, [R4,#0x2C4]
10259E:  ADD             R0, SP, #0x128+var_E0
1025A0:  VSTR            S0, [SP,#0x128+var_58]
1025A4:  VSTR            S2, [SP,#0x128+var_54]
1025A8:  VSTR            S4, [SP,#0x128+var_50]
1025AC:  STM.W           R0, {R5,R6,R8}
1025B0:  CBZ             R1, loc_1025C8
1025B2:  ADD.W           R0, R4, #0x320
1025B6:  ADD             R1, SP, #0x128+var_88
1025B8:  BL              sub_17D238
1025BC:  LDR             R0, [SP,#0x128+var_58]
1025BE:  STR             R0, [SP,#0x128+var_E4]
1025C0:  LDR             R0, [SP,#0x128+var_54]
1025C2:  STR             R0, [SP,#0x128+var_E8]
1025C4:  LDR             R0, [SP,#0x128+var_50]
1025C6:  B               loc_1025D8
1025C8:  VMOV            R0, S0
1025CC:  STR             R0, [SP,#0x128+var_E4]
1025CE:  VMOV            R0, S2
1025D2:  STR             R0, [SP,#0x128+var_E8]
1025D4:  VMOV            R0, S4
1025D8:  STR             R0, [SP,#0x128+var_EC]
1025DA:  LDR             R0, [SP,#0x128+var_88]
1025DC:  STR             R0, [SP,#0x128+var_F0]
1025DE:  LDR             R0, [SP,#0x128+var_84]
1025E0:  STR             R0, [SP,#0x128+var_F4]
1025E2:  LDR             R1, [SP,#0x128+var_E4]
1025E4:  LDRD.W          R6, R5, [SP,#0x128+var_78]
1025E8:  LDR             R0, [SP,#0x128+var_4C]
1025EA:  LDRD.W          R3, R2, [SP,#0x128+var_80]
1025EE:  STR             R1, [SP,#0x128+var_104]
1025F0:  LDR             R1, [SP,#0x128+var_E8]
1025F2:  STR             R1, [SP,#0x128+var_100]
1025F4:  LDR             R1, [SP,#0x128+var_EC]
1025F6:  STRD.W          R1, R0, [SP,#0x128+var_FC]
1025FA:  ADD             R0, SP, #0x128+var_120
1025FC:  STRD.W          R2, R6, [SP,#0x128+var_128]
102600:  LDRD.W          R2, R1, [SP,#0x128+var_F4]
102604:  LDRD.W          R10, R11, [SP,#0x128+var_60]
102608:  LDRD.W          R12, LR, [SP,#0x128+var_70]
10260C:  LDRD.W          R9, R8, [SP,#0x128+var_68]
102610:  STM.W           R0, {R5,R12,LR}
102614:  MOV             R0, R4
102616:  STR.W           R11, [SP,#0x128+var_108]
10261A:  STRD.W          R9, R8, [SP,#0x128+var_114]
10261E:  STR.W           R10, [SP,#0x128+var_10C]
102622:  BL              sub_F8F58
102626:  ADD.W           R8, SP, #0x128+var_E0
10262A:  LDM.W           R8, {R5,R6,R8}
10262E:  BL              sub_F0B30
102632:  VLDR            S0, =-999.0
102636:  LDRB.W          R1, [R4,#0x2C4]
10263A:  VCMP.F32        S16, S0
10263E:  STR.W           R0, [R4,#0x34C]
102642:  ORR.W           R0, R1, #1
102646:  VSTR            S24, [R4,#0x300]
10264A:  VSTR            S22, [R4,#0x304]
10264E:  VSTR            S20, [R4,#0x308]
102652:  VSTR            S18, [R4,#0x2C8]
102656:  STRB.W          R0, [R4,#0x2C4]
10265A:  VMRS            APSR_nzcv, FPSCR
10265E:  ITTT HI
102660:  VLDRHI          S20, [R7,#arg_8]
102664:  VCMPHI.F32      S20, S0
102668:  VMRSHI          APSR_nzcv, FPSCR
10266C:  BHI             loc_102676
10266E:  MOVS            R0, #0
102670:  STRB.W          R0, [R4,#0x2CC]
102674:  B               loc_1027C2
102676:  VLDR            S18, [R7,#arg_C]
10267A:  VCMP.F32        S18, S0
10267E:  VMRS            APSR_nzcv, FPSCR
102682:  BLS             loc_10266E
102684:  ADD             R1, SP, #0x128+var_94
102686:  MOVS            R0, #1
102688:  ADDS            R2, R1, #4
10268A:  ADD.W           R3, R1, #8
10268E:  STRB.W          R0, [R4,#0x2CC]
102692:  MOV             R0, R4
102694:  BL              sub_1021F0
102698:  VMOV            R8, S16
10269C:  MOV             R0, R8
10269E:  BL              sub_1087C8
1026A2:  VMOV            R6, S20
1026A6:  STR.W           R0, [R4,#0x330]
1026AA:  MOV             R0, R6
1026AC:  BL              sub_1087C8
1026B0:  VMOV            R5, S18
1026B4:  STR.W           R0, [R4,#0x334]
1026B8:  MOV             R0, R5
1026BA:  BL              sub_1087C8
1026BE:  LDR             R1, [SP,#0x128+var_94]
1026C0:  STR.W           R0, [R4,#0x338]
1026C4:  MOV             R0, R1
1026C6:  MOV             R1, R8
1026C8:  BL              sub_108818
1026CC:  LDR             R1, [SP,#0x128+var_90]
1026CE:  STR.W           R0, [R4,#0x33C]
1026D2:  MOV             R0, R1
1026D4:  MOV             R1, R6
1026D6:  BL              sub_108818
1026DA:  LDR             R1, [SP,#0x128+var_8C]
1026DC:  STR.W           R0, [R4,#0x340]
1026E0:  MOV             R0, R1
1026E2:  MOV             R1, R5
1026E4:  BL              sub_108818
1026E8:  STR.W           R0, [R4,#0x344]
1026EC:  MOV             R0, R4
1026EE:  MOV             R1, R8
1026F0:  MOV             R2, R6
1026F2:  MOV             R3, R5
1026F4:  BL              sub_1022AC
1026F8:  ADD             R1, SP, #0x128+var_D4
1026FA:  MOV             R0, R4
1026FC:  BL              sub_F8910
102700:  LDR             R0, [SP,#0x128+var_D4]
102702:  ADD.W           R12, SP, #0x128+var_A8
102706:  STR             R0, [SP,#0x128+var_DC]
102708:  LDR             R0, [SP,#0x128+var_D0]
10270A:  STR             R0, [SP,#0x128+var_E0]
10270C:  LDR             R0, [SP,#0x128+var_CC]
10270E:  STR             R0, [SP,#0x128+var_E4]
102710:  LDRD.W          R5, R0, [SP,#0x128+var_C0]
102714:  LDRD.W          LR, R8, [SP,#0x128+var_B8]
102718:  STR             R0, [SP,#0x128+var_D8]
10271A:  LDM.W           R12, {R0-R3,R12}
10271E:  STR             R0, [SP,#0x128+var_108]
102720:  LDR             R0, [SP,#0x128+var_D8]
102722:  STR             R1, [SP,#0x128+var_104]
102724:  STRD.W          R0, LR, [SP,#0x128+var_11C]
102728:  ADD             R0, SP, #0x128+var_114
10272A:  STR             R2, [SP,#0x128+var_100]
10272C:  STR             R3, [SP,#0x128+var_FC]
10272E:  LDR             R1, [SP,#0x128+var_DC]
102730:  LDRD.W          R3, R2, [SP,#0x128+var_E4]
102734:  LDRD.W          R9, R10, [SP,#0x128+var_B0]
102738:  STM.W           R0, {R8-R10}
10273C:  ADD.W           R0, R4, #0x310
102740:  LDRD.W          R11, R6, [SP,#0x128+var_C8]
102744:  STR.W           R12, [SP,#0x128+var_F8]
102748:  STRD.W          R11, R6, [SP,#0x128+var_128]
10274C:  STR             R5, [SP,#0x128+var_120]
10274E:  STR             R0, [SP,#0x128+var_D8]
102750:  BL              sub_17D12C
102754:  LDR.W           R0, [R4,#0x2D0]
102758:  ADD.W           R12, R4, #0x2FC
10275C:  STR             R0, [SP,#0x128+var_DC]
10275E:  LDR.W           R0, [R4,#0x2D4]
102762:  STR             R0, [SP,#0x128+var_E0]
102764:  LDR.W           R0, [R4,#0x2D8]
102768:  STR             R0, [SP,#0x128+var_E4]
10276A:  LDRD.W          R5, R0, [R4,#0x2E4]
10276E:  LDRD.W          LR, R9, [R4,#0x2EC]
102772:  STR             R0, [SP,#0x128+var_E8]
102774:  LDRD.W          R8, R6, [R4,#0x2DC]
102778:  LDM.W           R12, {R0-R3,R12}
10277C:  LDRD.W          R10, R11, [R4,#0x2F4]
102780:  STR             R0, [SP,#0x128+var_108]
102782:  STR             R1, [SP,#0x128+var_104]
102784:  STRD.W          R8, R6, [SP,#0x128+var_128]
102788:  ADD.W           R6, R4, #0x320
10278C:  LDR             R0, [SP,#0x128+var_E8]
10278E:  STR             R2, [SP,#0x128+var_100]
102790:  STR             R3, [SP,#0x128+var_FC]
102792:  LDR             R1, [SP,#0x128+var_DC]
102794:  LDRD.W          R3, R2, [SP,#0x128+var_E4]
102798:  STRD.W          R0, LR, [SP,#0x128+var_11C]
10279C:  ADD             R0, SP, #0x128+var_114
10279E:  STM.W           R0, {R9-R11}
1027A2:  MOV             R0, R6
1027A4:  STR.W           R12, [SP,#0x128+var_F8]
1027A8:  STR             R5, [SP,#0x128+var_120]
1027AA:  BL              sub_17D12C
1027AE:  LDR             R0, [SP,#0x128+var_D8]
1027B0:  BL              sub_17D2F2
1027B4:  MOV             R0, R6
1027B6:  BL              sub_17D2F2
1027BA:  ADD.W           R8, R4, #0x300
1027BE:  LDM.W           R8, {R5,R6,R8}
1027C2:  MOV             R0, R4
1027C4:  MOV             R1, R5
1027C6:  MOV             R2, R6
1027C8:  MOV             R3, R8
1027CA:  BL              sub_F8DB8
1027CE:  LDR             R1, =(off_23496C - 0x1027D8)
1027D0:  STR.W           R0, [R4,#0x348]
1027D4:  ADD             R1, PC; off_23496C
1027D6:  LDR             R1, [R1]; dword_23DEF4
1027D8:  LDR             R1, [R1]
1027DA:  CBZ             R1, loc_1027EE
1027DC:  LDR.W           R0, [R1,#0x3B0]
1027E0:  LDR             R0, [R0]
1027E2:  CBZ             R0, loc_1027EE
1027E4:  MOVW            R1, #0x13BC
1027E8:  LDR             R0, [R0,R1]
1027EA:  BL              sub_13FE54
1027EE:  LDR             R0, [R4,#4]
1027F0:  LDR             R1, [R0,#0x44]
1027F2:  BIC.W           R1, R1, #8
1027F6:  STR             R1, [R0,#0x44]
1027F8:  ADD             SP, SP, #0xE0
1027FA:  VPOP            {D8-D12}
1027FE:  ADD             SP, SP, #4
102800:  POP.W           {R8-R11}
102804:  POP             {R4-R7,PC}
