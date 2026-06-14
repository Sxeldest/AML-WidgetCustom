; =========================================================
; Game Engine Function: sub_120220
; Address            : 0x120220 - 0x120318
; =========================================================

120220:  PUSH            {R4-R7,LR}
120222:  ADD             R7, SP, #0xC
120224:  PUSH.W          {R8-R11}
120228:  SUB             SP, SP, #0x14
12022A:  MOV             R9, R0
12022C:  LDR             R0, =(dword_2638D4 - 0x120240)
12022E:  MOV             R8, R2
120230:  LDR             R2, =(dword_2638D0 - 0x120244)
120232:  MOV             R4, R3
120234:  LDR             R3, =(dword_2638D8 - 0x120246)
120236:  LDR             R5, =(dword_2638E4 - 0x120248)
120238:  MOV             R12, R1
12023A:  LDR             R1, =(dword_2638E0 - 0x12024A)
12023C:  ADD             R0, PC; dword_2638D4
12023E:  LDR             R6, [R7,#arg_0]
120240:  ADD             R2, PC; dword_2638D0
120242:  ADD             R3, PC; dword_2638D8
120244:  ADD             R5, PC; dword_2638E4
120246:  ADD             R1, PC; dword_2638E0
120248:  CMP.W           R9, #0
12024C:  STR.W           R12, [R0]
120250:  STR.W           R9, [R2]
120254:  STR.W           R8, [R3]
120258:  STR             R4, [R5]
12025A:  STR             R6, [R1]
12025C:  BEQ             loc_1202FA
12025E:  CMP.W           R8, #0
120262:  BEQ             loc_1202FE
120264:  LDR             R0, =(dword_2638E8 - 0x12026E)
120266:  CMP.W           R12, #1
12026A:  ADD             R0, PC; dword_2638E8
12026C:  STR             R0, [SP,#0x30+var_30]
12026E:  LDR             R2, [R0]
120270:  BLT             loc_120302
120272:  ADD.W           R0, R8, R2
120276:  STR             R0, [SP,#0x30+var_20]
120278:  NEGS            R0, R4
12027A:  ADD.W           R11, R9, R12
12027E:  STR             R0, [SP,#0x30+var_2C]
120280:  ADDS            R0, R4, #2
120282:  STR             R0, [SP,#0x30+var_24]
120284:  MOV             R0, R9
120286:  STR.W           R11, [SP,#0x30+var_28]
12028A:  LDRB.W          R1, [R8]
12028E:  CMP             R1, R6
120290:  BNE             loc_1202CA
120292:  LDRB.W          R10, [R8,#1]
120296:  CMP.W           R10, #0
12029A:  BEQ             loc_1202E8
12029C:  ADD.W           R5, R8, #2
1202A0:  MOV.W           R11, #0
1202A4:  MOV             R6, R9
1202A6:  MOV             R0, R6; dest
1202A8:  MOV             R1, R5; src
1202AA:  MOV             R2, R4; n
1202AC:  BLX             j_memcpy
1202B0:  ADD.W           R11, R11, #1
1202B4:  ADD             R6, R4
1202B6:  CMP             R10, R11
1202B8:  BNE             loc_1202A6
1202BA:  MLA.W           R1, R10, R4, R9
1202BE:  LDR             R0, [SP,#0x30+var_2C]
1202C0:  LDR.W           R11, [SP,#0x30+var_28]
1202C4:  ADD             R0, R6
1202C6:  LDR             R6, [R7,#arg_0]
1202C8:  B               loc_1202EA
1202CA:  LDR             R1, [SP,#0x30+var_20]
1202CC:  ADD.W           R5, R8, R4
1202D0:  CMP             R5, R1
1202D2:  BCS             loc_120310
1202D4:  MOV             R0, R9; dest
1202D6:  MOV             R1, R8; src
1202D8:  MOV             R2, R4; n
1202DA:  BLX             j_memcpy
1202DE:  ADD.W           R1, R9, R4
1202E2:  MOV             R8, R5
1202E4:  MOV             R0, R9
1202E6:  B               loc_1202EE
1202E8:  MOV             R1, R9
1202EA:  LDR             R2, [SP,#0x30+var_24]
1202EC:  ADD             R8, R2
1202EE:  CMP             R11, R1
1202F0:  MOV             R9, R1
1202F2:  BHI             loc_12028A
1202F4:  LDR             R6, [SP,#0x30+var_30]
1202F6:  LDR             R2, [R6]
1202F8:  B               loc_120306
1202FA:  MOVS            R0, #0
1202FC:  B               loc_120310
1202FE:  MOV             R0, R9
120300:  B               loc_120310
120302:  MOV             R0, R9
120304:  LDR             R6, [SP,#0x30+var_30]
120306:  LDR             R1, =(dword_2638DC - 0x120310)
120308:  MOVS            R3, #0
12030A:  STR             R3, [R6]
12030C:  ADD             R1, PC; dword_2638DC
12030E:  STR             R2, [R1]
120310:  ADD             SP, SP, #0x14
120312:  POP.W           {R8-R11}
120316:  POP             {R4-R7,PC}
