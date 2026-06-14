; =========================================================
; Game Engine Function: sub_140448
; Address            : 0x140448 - 0x1405F8
; =========================================================

140448:  PUSH            {R4-R7,LR}
14044A:  ADD             R7, SP, #0xC
14044C:  PUSH.W          {R8,R9,R11}
140450:  SUB             SP, SP, #0x180
140452:  MOV             R4, R0
140454:  ADD             R0, SP, #0x198+var_130
140456:  BL              sub_17D4A8
14045A:  LDR             R0, =(off_23496C - 0x140460)
14045C:  ADD             R0, PC; off_23496C
14045E:  LDR.W           R9, [R0]; dword_23DEF4
140462:  LDR.W           R0, [R9]
140466:  LDR.W           R0, [R0,#0x3B0]
14046A:  LDR             R6, [R0,#4]
14046C:  LDR             R0, [R4,#0x1C]
14046E:  MOVS            R1, #1
140470:  ADD             R2, SP, #0x198+var_134
140472:  STR             R1, [SP,#0x198+var_198]
140474:  ADD.W           R1, SP, #0x198+var_132
140478:  ADD.W           R3, SP, #0x198+var_135
14047C:  BL              sub_104BA4
140480:  VMOV.I32        Q8, #0
140484:  ADD             R1, SP, #0x198+var_150
140486:  MOV             R8, R0
140488:  LDR             R0, [R4,#0x1C]
14048A:  MOVS            R2, #0
14048C:  VST1.64         {D16-D17}, [R1]!
140490:  STR             R2, [R1]
140492:  STR             R2, [SP,#0x198+var_13C]
140494:  BL              sub_104326
140498:  CMP             R0, #0
14049A:  BEQ.W           loc_1405EA
14049E:  MOVW            R1, #0xEA60
1404A2:  ADDS            R2, R6, R1
1404A4:  LDRD.W          R1, R2, [R2]
1404A8:  CMP             R1, R2
1404AA:  BEQ             loc_1404C4
1404AC:  MOV.W           R3, #0x1F40
1404B0:  LDR             R5, [R1]
1404B2:  ADD.W           R5, R6, R5,LSL#2
1404B6:  LDR             R5, [R5,R3]
1404B8:  CMP             R5, R0
1404BA:  BEQ             loc_1404C4
1404BC:  ADDS            R1, #4
1404BE:  CMP             R1, R2
1404C0:  BNE             loc_1404B0
1404C2:  B               loc_1405EA
1404C4:  CMP             R1, R2
1404C6:  BEQ.W           loc_1405EA
1404CA:  LDRH            R0, [R1]
1404CC:  MOVW            R1, #0xFFFF
1404D0:  STRH.W          R0, [SP,#0x198+var_150]
1404D4:  CMP             R0, R1
1404D6:  BEQ.W           loc_1405EA
1404DA:  LDRH.W          R0, [SP,#0x198+var_132]
1404DE:  LDRH.W          R1, [SP,#0x198+var_134]
1404E2:  STRH.W          R0, [SP,#0x198+var_14A]
1404E6:  LDRB.W          R6, [SP,#0x198+var_135]
1404EA:  LDR             R0, [R4,#0x1C]
1404EC:  STRH.W          R8, [SP,#0x198+var_146]
1404F0:  STRH.W          R1, [SP,#0x198+var_148]
1404F4:  BL              sub_1042D8
1404F8:  VMOV            S0, R0
1404FC:  LDR             R0, [R4,#0x1C]
1404FE:  VCVT.U32.F32    S0, S0
140502:  VMOV            R1, S0
140506:  STRB.W          R1, [SP,#0x198+var_14C]
14050A:  BL              sub_104300
14050E:  VMOV            S0, R0
140512:  LDR             R0, [R4,#0x1C]
140514:  VCVT.U32.F32    S0, S0
140518:  VMOV            R1, S0
14051C:  STRB.W          R1, [SP,#0x198+var_14B]
140520:  BL              sub_1054CA
140524:  LDR             R1, [R4,#0x1C]
140526:  AND.W           R0, R0, #0x3F ; '?'
14052A:  LDRB.W          R3, [R4,#0x23]
14052E:  LDRB.W          R2, [R1,#0x42]
140532:  CMP             R2, #0
140534:  IT NE
140536:  MOVNE           R2, #1
140538:  ORR.W           R0, R0, R2,LSL#7
14053C:  ORR.W           R0, R0, R3,LSL#6
140540:  STRB.W          R0, [SP,#0x198+var_14E]
140544:  MOV             R0, R1
140546:  BL              sub_104648
14054A:  AND.W           R0, R0, #0x3F ; '?'
14054E:  LSLS            R1, R6, #6
140550:  ORRS            R0, R1
140552:  STRB.W          R0, [SP,#0x198+var_14D]
140556:  LDR             R0, [R4,#0x1C]
140558:  ADD             R1, SP, #0x198+var_190
14055A:  BL              sub_F8910
14055E:  ADD             R2, SP, #0x198+var_160
140560:  ADD.W           R8, R4, #0x124
140564:  ADD             R3, SP, #0x198+var_144
140566:  LDM             R2, {R0-R2}
140568:  STM             R3!, {R0-R2}
14056A:  ADD             R2, SP, #0x198+var_150
14056C:  MOV             R0, R4
14056E:  MOV             R1, R8
140570:  MOVS            R3, #0x18
140572:  BL              sub_140978
140576:  CBZ             R0, loc_1405EA
140578:  MOVS            R0, #0xD3
14057A:  STRB.W          R0, [R7,#var_19]
14057E:  ADD             R0, SP, #0x198+var_130
140580:  SUB.W           R1, R7, #-var_19
140584:  MOVS            R2, #8
140586:  MOVS            R3, #1
140588:  BL              sub_17D628
14058C:  ADD             R5, SP, #0x198+var_150
14058E:  ADD             R0, SP, #0x198+var_130
140590:  MOVS            R2, #0x18
140592:  MOV             R1, R5
140594:  BL              sub_17D566
140598:  LDR.W           R0, [R9]
14059C:  LDR.W           R0, [R0,#0x210]
1405A0:  LDR             R1, [R0]
1405A2:  LDR             R6, [R1,#0x20]
1405A4:  MOVS            R1, #1
1405A6:  MOVS            R2, #1
1405A8:  STR             R1, [SP,#0x198+var_198]
1405AA:  ADD             R1, SP, #0x198+var_130
1405AC:  MOVS            R3, #7
1405AE:  BLX             R6
1405B0:  VLD1.32         {D16-D17}, [R5]!
1405B4:  LDRB.W          R6, [R4,#0x23]
1405B8:  VLDR            D18, [R5]
1405BC:  VST1.32         {D16-D17}, [R8]!
1405C0:  VSTR            D18, [R8]
1405C4:  BL              sub_F0B30
1405C8:  LDR.W           R2, [R4,#0x1C0]
1405CC:  MOVS            R1, #0x64 ; 'd'
1405CE:  CMP             R6, #0
1405D0:  IT EQ
1405D2:  MOVEQ.W         R1, #0x3E8
1405D6:  SUBS            R0, R0, R2
1405D8:  CMP             R0, R1
1405DA:  BLS             loc_1405EA
1405DC:  BL              sub_F0B30
1405E0:  STR.W           R0, [R4,#0x1C0]
1405E4:  MOV             R0, R4
1405E6:  BL              sub_13FB70
1405EA:  ADD             R0, SP, #0x198+var_130
1405EC:  BL              sub_17D542
1405F0:  ADD             SP, SP, #0x180
1405F2:  POP.W           {R8,R9,R11}
1405F6:  POP             {R4-R7,PC}
