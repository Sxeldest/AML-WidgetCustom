; =========================================================
; Game Engine Function: sub_1414B4
; Address            : 0x1414B4 - 0x14156A
; =========================================================

1414B4:  PUSH            {R4-R7,LR}
1414B6:  ADD             R7, SP, #0xC
1414B8:  PUSH.W          {R8}
1414BC:  SUB             SP, SP, #0x138
1414BE:  MOV             R5, R0
1414C0:  ADD             R0, SP, #0x148+var_128
1414C2:  MOV             R4, R1
1414C4:  BL              sub_17D4A8
1414C8:  LSRS            R0, R4, #4
1414CA:  CMP             R0, #0x7C ; '|'
1414CC:  BHI             loc_14155C
1414CE:  LDR             R0, =(off_23496C - 0x1414D4)
1414D0:  ADD             R0, PC; off_23496C
1414D2:  LDR.W           R8, [R0]; dword_23DEF4
1414D6:  LDR.W           R0, [R8]
1414DA:  LDR.W           R0, [R0,#0x3B0]
1414DE:  LDR             R6, [R0,#4]
1414E0:  MOV             R0, R6
1414E2:  MOV             R1, R4
1414E4:  BL              sub_F2396
1414E8:  CBZ             R0, loc_14155C
1414EA:  LDR.W           R6, [R6,R4,LSL#2]
1414EE:  CBZ             R6, loc_14155C
1414F0:  LDR             R0, [R5,#0x1C]
1414F2:  BL              sub_10411A
1414F6:  CBNZ            R0, loc_1414FA
1414F8:  STRH            R4, [R5,#0x18]
1414FA:  MOV             R0, R6
1414FC:  BL              sub_109F36
141500:  CBZ             R0, loc_141510
141502:  LDR             R0, =(off_234970 - 0x141508)
141504:  ADD             R0, PC; off_234970
141506:  LDR             R0, [R0]; dword_23DEF0
141508:  LDR             R0, [R0]
14150A:  LDR             R0, [R0,#4]
14150C:  BL              sub_F85F0
141510:  MOV             R0, R6
141512:  BL              sub_109A0C
141516:  CBNZ            R0, loc_14155C
141518:  STRH.W          R4, [R7,#var_12]
14151C:  ADD             R0, SP, #0x148+var_128
14151E:  SUB.W           R1, R7, #-var_12
141522:  MOVS            R2, #0x10
141524:  MOVS            R3, #1
141526:  BL              sub_17D628
14152A:  LDR.W           R0, [R8]
14152E:  MOVS            R3, #0
141530:  LDR.W           R0, [R0,#0x210]
141534:  LDR             R1, =(off_234C40 - 0x14153A)
141536:  ADD             R1, PC; off_234C40
141538:  LDR             R2, [R0]
14153A:  LDR             R1, [R1]; unk_23C75C
14153C:  LDR             R6, [R2,#0x6C]
14153E:  MOV.W           R12, #0xFFFFFFFF
141542:  MOVS            R4, #0xA
141544:  ADD             R2, SP, #0x148+var_128
141546:  MOVW            R5, #0xFFFF
14154A:  STRD.W          R4, R3, [SP,#0x148+var_148]
14154E:  STRD.W          R3, R12, [SP,#0x148+var_140]
141552:  STR             R3, [SP,#0x148+var_130]
141554:  MOVS            R3, #1
141556:  STRD.W          R5, R5, [SP,#0x148+var_138]
14155A:  BLX             R6
14155C:  ADD             R0, SP, #0x148+var_128
14155E:  BL              sub_17D542
141562:  ADD             SP, SP, #0x138
141564:  POP.W           {R8}
141568:  POP             {R4-R7,PC}
