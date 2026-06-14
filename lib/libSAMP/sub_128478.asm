; =========================================================
; Game Engine Function: sub_128478
; Address            : 0x128478 - 0x128550
; =========================================================

128478:  PUSH            {R4-R7,LR}
12847A:  ADD             R7, SP, #0xC
12847C:  PUSH.W          {R8-R11}
128480:  SUB             SP, SP, #0x4C
128482:  MOV             R4, R0
128484:  LDR             R0, =(off_23494C - 0x12848E)
128486:  LDR             R1, =(sub_1285C0+1 - 0x128492)
128488:  MOVS            R2, #0
12848A:  ADD             R0, PC; off_23494C
12848C:  MOV             R6, R4
12848E:  ADD             R1, PC; sub_1285C0
128490:  STR.W           R2, [R6,#0x18]!
128494:  LDR             R0, [R0]; dword_23DF24
128496:  STR             R2, [R4,#8]
128498:  LDR.W           R11, [R0]
12849C:  STRD.W          R2, R2, [R4]
1284A0:  MOV             R0, SP
1284A2:  MOVS            R2, #0
1284A4:  MOV             R3, R4
1284A6:  BL              sub_1285D4
1284AA:  ADD.W           R10, SP, #0x68+var_50
1284AE:  MOV             R5, SP
1284B0:  MOV             R1, R5
1284B2:  MOV             R0, R10
1284B4:  BL              sub_128984
1284B8:  BL              sub_12892C
1284BC:  LDR             R0, =(unk_314118 - 0x1284C2)
1284BE:  ADD             R0, PC; unk_314118
1284C0:  LDR.W           R8, [R0,#(dword_314128 - 0x314118)]
1284C4:  CMP.W           R8, #0
1284C8:  BNE             loc_128500
1284CA:  ADD.W           R9, SP, #0x68+var_50
1284CE:  ADD             R0, SP, #0x68+var_38
1284D0:  MOV             R1, R9
1284D2:  BL              sub_128984
1284D6:  BL              sub_12892C
1284DA:  LDR             R0, =(unk_314118 - 0x1284E0)
1284DC:  ADD             R0, PC; unk_314118
1284DE:  ADD             R5, SP, #0x68+var_38
1284E0:  MOV             R1, R5
1284E2:  BL              sub_1289B0
1284E6:  LDR             R0, [SP,#0x68+var_28]
1284E8:  CMP             R5, R0
1284EA:  BEQ             loc_1284F4
1284EC:  MOV             R5, SP
1284EE:  CBZ             R0, loc_128500
1284F0:  MOVS            R1, #5
1284F2:  B               loc_1284F8
1284F4:  MOVS            R1, #4
1284F6:  MOV             R5, SP
1284F8:  LDR             R2, [R0]
1284FA:  LDR.W           R1, [R2,R1,LSL#2]
1284FE:  BLX             R1
128500:  LDR             R0, [SP,#0x68+var_40]
128502:  CMP             R10, R0
128504:  BEQ             loc_12850C
128506:  CBZ             R0, loc_128516
128508:  MOVS            R1, #5
12850A:  B               loc_12850E
12850C:  MOVS            R1, #4
12850E:  LDR             R2, [R0]
128510:  LDR.W           R1, [R2,R1,LSL#2]
128514:  BLX             R1
128516:  CMP.W           R8, #0
12851A:  BNE             loc_128530
12851C:  MOVW            R0, #0x3050
128520:  LDR             R1, =(sub_128900+1 - 0x12852C)
128522:  MOVT            R0, #0x67 ; 'g'
128526:  ADD             R0, R11
128528:  ADD             R1, PC; sub_128900
12852A:  MOV             R2, R6
12852C:  BL              sub_164196
128530:  LDR             R0, [SP,#0x68+var_58]
128532:  CMP             R5, R0
128534:  BEQ             loc_12853C
128536:  CBZ             R0, loc_128546
128538:  MOVS            R1, #5
12853A:  B               loc_12853E
12853C:  MOVS            R1, #4
12853E:  LDR             R2, [R0]
128540:  LDR.W           R1, [R2,R1,LSL#2]
128544:  BLX             R1
128546:  MOV             R0, R4
128548:  ADD             SP, SP, #0x4C ; 'L'
12854A:  POP.W           {R8-R11}
12854E:  POP             {R4-R7,PC}
