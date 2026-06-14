; =========================================================
; Game Engine Function: sub_150438
; Address            : 0x150438 - 0x1504AC
; =========================================================

150438:  PUSH            {R4,R5,R7,LR}
15043A:  ADD             R7, SP, #8
15043C:  SUB             SP, SP, #0x138
15043E:  LDR             R0, =(off_23496C - 0x15044A)
150440:  MOV             R4, R1
150442:  MOVW            R1, #0x13BC
150446:  ADD             R0, PC; off_23496C
150448:  LDR             R5, [R0]; dword_23DEF4
15044A:  LDR             R0, [R5]
15044C:  LDR.W           R0, [R0,#0x3B0]
150450:  LDR             R0, [R0]
150452:  LDR             R0, [R0,R1]
150454:  LDRH            R0, [R0,#0x18]
150456:  CMP             R0, R4
150458:  BNE             loc_1504A8
15045A:  ADD             R0, SP, #0x140+var_120
15045C:  BL              sub_17D4A8
150460:  STRH.W          R4, [R7,#var_A]
150464:  SUB.W           R1, R7, #-var_A
150468:  MOVS            R2, #0x10
15046A:  MOVS            R3, #1
15046C:  BL              sub_17D628
150470:  LDR             R0, [R5]
150472:  MOVS            R3, #0
150474:  LDR.W           R0, [R0,#0x210]
150478:  LDR             R1, =(off_234E48 - 0x15047E)
15047A:  ADD             R1, PC; off_234E48
15047C:  LDR             R2, [R0]
15047E:  LDR             R1, [R1]; unk_23C7BC
150480:  LDR.W           LR, [R2,#0x6C]
150484:  MOV.W           R12, #0xFFFFFFFF
150488:  MOVS            R5, #0xA
15048A:  ADD             R2, SP, #0x140+var_120
15048C:  MOVW            R4, #0xFFFF
150490:  STRD.W          R5, R3, [SP,#0x140+var_140]
150494:  STRD.W          R3, R12, [SP,#0x140+var_138]
150498:  STR             R3, [SP,#0x140+var_128]
15049A:  MOVS            R3, #1
15049C:  STRD.W          R4, R4, [SP,#0x140+var_130]
1504A0:  BLX             LR
1504A2:  ADD             R0, SP, #0x140+var_120
1504A4:  BL              sub_17D542
1504A8:  ADD             SP, SP, #0x138
1504AA:  POP             {R4,R5,R7,PC}
