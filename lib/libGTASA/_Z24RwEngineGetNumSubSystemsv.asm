; =========================================================
; Game Engine Function: _Z24RwEngineGetNumSubSystemsv
; Address            : 0x1D746C - 0x1D749A
; =========================================================

1D746C:  PUSH            {R4,R6,R7,LR}
1D746E:  ADD             R7, SP, #8
1D7470:  SUB             SP, SP, #8
1D7472:  LDR             R0, =(RwEngineInstance_ptr - 0x1D747E)
1D7474:  MOVS            R4, #1
1D7476:  STR             R4, [SP,#0x10+var_C]
1D7478:  ADD             R1, SP, #0x10+var_C
1D747A:  ADD             R0, PC; RwEngineInstance_ptr
1D747C:  MOVS            R2, #0
1D747E:  MOVS            R3, #0
1D7480:  LDR             R0, [R0]; RwEngineInstance
1D7482:  LDR             R0, [R0]
1D7484:  LDR.W           R12, [R0,#0x14]
1D7488:  MOVS            R0, #0xD
1D748A:  BLX             R12
1D748C:  CMP             R0, #0
1D748E:  ITE EQ
1D7490:  STREQ           R4, [SP,#0x10+var_C]
1D7492:  LDRNE           R4, [SP,#0x10+var_C]
1D7494:  MOV             R0, R4
1D7496:  ADD             SP, SP, #8
1D7498:  POP             {R4,R6,R7,PC}
