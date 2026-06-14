; =========================================================
; Game Engine Function: sub_167664
; Address            : 0x167664 - 0x167712
; =========================================================

167664:  PUSH            {R4-R7,LR}
167666:  ADD             R7, SP, #0xC
167668:  PUSH.W          {R8}
16766C:  LDR             R6, =(dword_381B58 - 0x16767C)
16766E:  MOV             R8, R1
167670:  MOVW            R1, #0x19BC
167674:  MOVW            R3, #0x19AC
167678:  ADD             R6, PC; dword_381B58
16767A:  LDR             R2, [R6]
16767C:  ADDS            R4, R2, R3
16767E:  LDR             R1, [R2,R1]
167680:  CBZ             R1, loc_16768A
167682:  CMP             R1, R8
167684:  BEQ             loc_16768A
167686:  LDRB            R1, [R4,#0x14]
167688:  CBZ             R1, loc_167692
16768A:  LDRD.W          R5, R1, [R4]
16768E:  CMP             R1, R5
167690:  BEQ             loc_16769A
167692:  MOVS            R0, #0
167694:  POP.W           {R8}
167698:  POP             {R4-R7,PC}
16769A:  LDR             R1, [R4,#0x24]
16769C:  CBZ             R1, loc_1676AA
16769E:  CMP             R1, R8
1676A0:  BEQ             loc_1676AA
1676A2:  LDRB.W          R1, [R4,#0x31]
1676A6:  CMP             R1, #0
1676A8:  BEQ             loc_167692
1676AA:  ADD.W           R1, R0, #8
1676AE:  MOVS            R2, #1
1676B0:  BL              sub_1674C8
1676B4:  CMP             R0, #0
1676B6:  BEQ             loc_167692
1676B8:  LDRB.W          R0, [R4,#0x16B]
1676BC:  CMP             R0, #0
1676BE:  BNE             loc_167692
1676C0:  LDR             R1, [R6]
1676C2:  MOVW            R0, #0x1AB4
1676C6:  LDR             R0, [R1,R0]
1676C8:  CBZ             R0, loc_1676E6
1676CA:  LDR.W           R0, [R0,#0x2FC]
1676CE:  CBZ             R0, loc_1676E6
1676D0:  LDRB.W          R2, [R0,#0x7B]
1676D4:  CBZ             R2, loc_1676E6
1676D6:  LDR.W           R2, [R5,#0x2FC]
1676DA:  CMP             R0, R2
1676DC:  ITT NE
1676DE:  LDRBNE          R0, [R0,#0xB]
1676E0:  TSTNE.W         R0, #0xC
1676E4:  BNE             loc_167692
1676E6:  LDRB.W          R0, [R5,#0x16C]
1676EA:  LSLS            R0, R0, #0x1D
1676EC:  MOV.W           R0, #0
1676F0:  BMI             loc_167694
1676F2:  MOVW            R2, #0x19BC
1676F6:  ADD             R1, R2
1676F8:  CMP.W           R8, #0
1676FC:  STRB            R0, [R1,#4]
1676FE:  STR.W           R8, [R1]
167702:  ITTTT NE
167704:  LDRNE           R0, [R1,#8]
167706:  CMPNE           R0, R8
167708:  MOVNE           R0, #0
16770A:  STRDNE.W        R0, R0, [R1,#0xC]
16770E:  MOVS            R0, #1
167710:  B               loc_167694
