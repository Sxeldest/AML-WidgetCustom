; =========================================================
; Game Engine Function: sub_12B5D0
; Address            : 0x12B5D0 - 0x12B742
; =========================================================

12B5D0:  PUSH            {R4-R7,LR}
12B5D2:  ADD             R7, SP, #0xC
12B5D4:  PUSH.W          {R8-R11}
12B5D8:  SUB             SP, SP, #4
12B5DA:  VPUSH           {D8-D11}
12B5DE:  SUB             SP, SP, #0x28
12B5E0:  MOV             R8, R1
12B5E2:  MOV             R6, R0
12B5E4:  BL              sub_11C908
12B5E8:  MOV             R4, R0
12B5EA:  BL              sub_11C920
12B5EE:  MOV             R5, R0
12B5F0:  MOV             R0, R6
12B5F2:  MOV             R1, R8
12B5F4:  STR             R6, [SP,#0x68+var_5C]
12B5F6:  BL              sub_12B7EC
12B5FA:  BL              sub_12B778
12B5FE:  LDR.W           R12, [R8,#8]
12B602:  CMP.W           R12, #1
12B606:  BLT.W           loc_12B734
12B60A:  LDR             R1, [SP,#0x68+var_5C]
12B60C:  VMOV            S16, R4
12B610:  VMOV.I32        Q5, #0
12B614:  MOVS            R0, #0
12B616:  VMOV            S18, R5
12B61A:  STR.W           R8, [SP,#0x68+var_64]
12B61E:  LDR             R4, [R1,#0x20]
12B620:  MOVS            R1, #0
12B622:  STR             R1, [SP,#0x68+var_58]
12B624:  LDR.W           R1, [R8,#4]
12B628:  LDR.W           R11, [R1,R0,LSL#2]
12B62C:  LDR.W           R1, [R11,#0x18]
12B630:  CMP             R1, #1
12B632:  BLT             loc_12B662
12B634:  LDR.W           R2, [R11,#0x20]
12B638:  MOV             R3, R1
12B63A:  LDR             R6, [R2]
12B63C:  SUBS            R3, #1
12B63E:  LDR             R5, [R2,#0x10]
12B640:  STR             R6, [R4]
12B642:  LDR             R6, [R2,#4]
12B644:  VSTR            S16, [R4,#8]
12B648:  VSTR            S18, [R4,#0xC]
12B64C:  STR             R5, [R4,#0x10]
12B64E:  STR             R6, [R4,#4]
12B650:  LDR             R6, [R2,#8]
12B652:  STR             R6, [R4,#0x14]
12B654:  LDR             R6, [R2,#0xC]
12B656:  ADD.W           R2, R2, #0x14
12B65A:  STR             R6, [R4,#0x18]
12B65C:  ADD.W           R4, R4, #0x1C
12B660:  BNE             loc_12B63A
12B662:  LDR.W           R2, [R11]
12B666:  CMP             R2, #1
12B668:  BLT             loc_12B726
12B66A:  LDR.W           R5, [R11,#0x14]
12B66E:  MOV.W           R9, #0
12B672:  MOV.W           R8, #0
12B676:  STR             R0, [SP,#0x68+var_60]
12B678:  STR.W           R11, [SP,#0x68+var_54]
12B67C:  LDR.W           R10, [R11,#8]
12B680:  ADD.W           R6, R10, R9
12B684:  LDR             R2, [R6,#0x20]
12B686:  CBZ             R2, loc_12B690
12B688:  MOV             R0, R11
12B68A:  MOV             R1, R6
12B68C:  BLX             R2
12B68E:  B               loc_12B700
12B690:  ADD             R1, SP, #0x68+var_50
12B692:  MOV             R0, R1
12B694:  MOV             R2, R1
12B696:  MOVS            R1, #4
12B698:  VST1.64         {D10-D11}, [R2],R1
12B69C:  LDR             R1, [R6,#4]
12B69E:  STR             R1, [SP,#0x68+var_50]
12B6A0:  LDR             R1, [R6,#0x10]
12B6A2:  STR             R1, [R2]
12B6A4:  LDR             R1, [R6,#0xC]
12B6A6:  STR             R1, [SP,#0x68+var_48]
12B6A8:  LDR             R1, [R6,#8]
12B6AA:  STR             R1, [SP,#0x68+var_44]
12B6AC:  BL              sub_11C8F0
12B6B0:  LDR             R0, =(off_234A8C - 0x12B6B8)
12B6B2:  LDR             R1, [R6,#0x14]
12B6B4:  ADD             R0, PC; off_234A8C
12B6B6:  LDR.W           R11, [R0]; off_263758
12B6BA:  MOVS            R0, #1
12B6BC:  LDR.W           R2, [R11]
12B6C0:  BLX             R2
12B6C2:  LDR             R0, =(off_234B58 - 0x12B6CE)
12B6C4:  MOV             R3, R5
12B6C6:  LDR.W           R1, [R10,R9]
12B6CA:  ADD             R0, PC; off_234B58
12B6CC:  LDR             R0, [R0]; off_263768
12B6CE:  LDR             R6, [R0]
12B6D0:  LDR             R0, [SP,#0x68+var_54]
12B6D2:  LDR             R2, [R0,#0x18]
12B6D4:  LDR             R0, [SP,#0x68+var_5C]
12B6D6:  LDR             R0, [R0,#0x20]
12B6D8:  STR             R1, [SP,#0x68+var_68]
12B6DA:  LDR             R1, [SP,#0x68+var_58]
12B6DC:  RSB.W           R1, R1, R1,LSL#3
12B6E0:  ADD.W           R1, R0, R1,LSL#2
12B6E4:  MOVS            R0, #3
12B6E6:  BLX             R6
12B6E8:  LDR.W           R2, [R11]
12B6EC:  MOVS            R0, #1
12B6EE:  MOVS            R1, #0
12B6F0:  LDR.W           R11, [SP,#0x68+var_54]
12B6F4:  BLX             R2
12B6F6:  ADD             R0, SP, #0x68+var_50
12B6F8:  VST1.64         {D10-D11}, [R0]
12B6FC:  BL              sub_11C8F0
12B700:  LDR.W           R0, [R10,R9]
12B704:  ADD.W           R9, R9, #0x28 ; '('
12B708:  LDR.W           R1, [R11]
12B70C:  ADD.W           R8, R8, #1
12B710:  CMP             R8, R1
12B712:  ADD.W           R5, R5, R0,LSL#1
12B716:  BLT             loc_12B67C
12B718:  LDR.W           R8, [SP,#0x68+var_64]
12B71C:  LDR.W           R1, [R11,#0x18]
12B720:  LDR             R0, [SP,#0x68+var_60]
12B722:  LDR.W           R12, [R8,#8]
12B726:  LDR             R2, [SP,#0x68+var_58]
12B728:  ADDS            R0, #1
12B72A:  CMP             R0, R12
12B72C:  ADD             R2, R1
12B72E:  STR             R2, [SP,#0x68+var_58]
12B730:  BLT.W           loc_12B624
12B734:  ADD             SP, SP, #0x28 ; '('
12B736:  VPOP            {D8-D11}
12B73A:  ADD             SP, SP, #4
12B73C:  POP.W           {R8-R11}
12B740:  POP             {R4-R7,PC}
