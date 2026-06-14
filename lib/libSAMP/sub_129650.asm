; =========================================================
; Game Engine Function: sub_129650
; Address            : 0x129650 - 0x12970E
; =========================================================

129650:  PUSH            {R4-R7,LR}
129652:  ADD             R7, SP, #0xC
129654:  PUSH.W          {R8-R11}
129658:  SUB             SP, SP, #0x4C
12965A:  MOV             R4, R0
12965C:  LDR             R0, =(off_23494C - 0x129666)
12965E:  LDR             R1, =(sub_129758+1 - 0x12966A)
129660:  MOVS            R2, #0
129662:  ADD             R0, PC; off_23494C
129664:  MOV             R9, SP
129666:  ADD             R1, PC; sub_129758
129668:  MOV             R3, R4
12966A:  LDR             R0, [R0]; dword_23DF24
12966C:  LDR.W           R10, [R0]
129670:  MOV             R0, R9
129672:  STR             R2, [R4]
129674:  MOVS            R2, #0
129676:  BL              sub_12980C
12967A:  ADD.W           R11, SP, #0x68+var_50
12967E:  MOV             R1, R9
129680:  MOV             R0, R11
129682:  BL              sub_10CD74
129686:  BL              sub_1299C8
12968A:  LDR             R0, =(unk_314168 - 0x129690)
12968C:  ADD             R0, PC; unk_314168
12968E:  LDR             R6, [R0,#(dword_314178 - 0x314168)]
129690:  CBNZ            R6, loc_1296C4
129692:  ADD.W           R8, SP, #0x68+var_50
129696:  ADD             R0, SP, #0x68+var_38
129698:  MOV             R1, R8
12969A:  BL              sub_10CD74
12969E:  BL              sub_1299C8
1296A2:  LDR             R0, =(unk_314168 - 0x1296A8)
1296A4:  ADD             R0, PC; unk_314168
1296A6:  ADD             R5, SP, #0x68+var_38
1296A8:  MOV             R1, R5
1296AA:  BL              sub_10CDA0
1296AE:  LDR             R0, [SP,#0x68+var_28]
1296B0:  CMP             R5, R0
1296B2:  BEQ             loc_1296BA
1296B4:  CBZ             R0, loc_1296C4
1296B6:  MOVS            R1, #5
1296B8:  B               loc_1296BC
1296BA:  MOVS            R1, #4
1296BC:  LDR             R2, [R0]
1296BE:  LDR.W           R1, [R2,R1,LSL#2]
1296C2:  BLX             R1
1296C4:  LDR             R0, [SP,#0x68+var_40]
1296C6:  CMP             R11, R0
1296C8:  BEQ             loc_1296D0
1296CA:  CBZ             R0, loc_1296DA
1296CC:  MOVS            R1, #5
1296CE:  B               loc_1296D2
1296D0:  MOVS            R1, #4
1296D2:  LDR             R2, [R0]
1296D4:  LDR.W           R1, [R2,R1,LSL#2]
1296D8:  BLX             R1
1296DA:  CBNZ            R6, loc_1296EE
1296DC:  LDR             R1, =(sub_1299A4+1 - 0x1296EA)
1296DE:  ADD.W           R0, R10, #0x670000
1296E2:  ADD.W           R0, R0, #0x4280
1296E6:  ADD             R1, PC; sub_1299A4
1296E8:  MOV             R2, R4
1296EA:  BL              sub_164196
1296EE:  LDR             R0, [SP,#0x68+var_58]
1296F0:  CMP             R9, R0
1296F2:  BEQ             loc_1296FA
1296F4:  CBZ             R0, loc_129704
1296F6:  MOVS            R1, #5
1296F8:  B               loc_1296FC
1296FA:  MOVS            R1, #4
1296FC:  LDR             R2, [R0]
1296FE:  LDR.W           R1, [R2,R1,LSL#2]
129702:  BLX             R1
129704:  MOV             R0, R4
129706:  ADD             SP, SP, #0x4C ; 'L'
129708:  POP.W           {R8-R11}
12970C:  POP             {R4-R7,PC}
