; =========================================================
; Game Engine Function: sub_E8BF4
; Address            : 0xE8BF4 - 0xE8DD4
; =========================================================

E8BF4:  PUSH            {R4-R7,LR}
E8BF6:  ADD             R7, SP, #0xC
E8BF8:  PUSH.W          {R8-R11}
E8BFC:  SUB             SP, SP, #8
E8BFE:  LDRD.W          R12, R4, [R1]
E8C02:  LDRD.W          R6, R2, [R2]
E8C06:  SUBS            R2, R2, R4
E8C08:  SUB.W           R6, R6, R12
E8C0C:  ADD.W           R11, R2, R6,LSL#3
E8C10:  CMP.W           R11, #1
E8C14:  BLT.W           loc_E8DC4
E8C18:  CMP             R4, #0
E8C1A:  STR             R0, [SP,#0x24+var_24]
E8C1C:  BEQ             loc_E8CD8
E8C1E:  MOV.W           LR, #0xFFFFFFFF
E8C22:  LDR.W           R12, [R12]
E8C26:  LSL.W           R5, LR, R4
E8C2A:  RSB.W           R4, R4, #0x20 ; ' '
E8C2E:  CMP             R11, R4
E8C30:  MOV             R6, R4
E8C32:  IT LT
E8C34:  MOVLT           R6, R11
E8C36:  SUBS            R4, R4, R6
E8C38:  LDRD.W          R9, R8, [R3]
E8C3C:  MOV             R10, R6
E8C3E:  LSR.W           R4, LR, R4
E8C42:  SUB.W           R11, R11, R6
E8C46:  ANDS            R4, R5
E8C48:  RSB.W           R5, R8, #0x20 ; ' '
E8C4C:  CMP             R5, R6
E8C4E:  IT CC
E8C50:  MOVCC           R10, R5
E8C52:  SUB.W           R5, R5, R10
E8C56:  LSL.W           R8, LR, R8
E8C5A:  AND.W           R12, R12, R4
E8C5E:  LSR.W           R5, LR, R5
E8C62:  AND.W           R8, R8, R5
E8C66:  LDR.W           R5, [R9]
E8C6A:  BIC.W           R8, R5, R8
E8C6E:  STR.W           R8, [R9]
E8C72:  LDR             R5, [R1,#4]
E8C74:  LDR             R4, [R3,#4]
E8C76:  SUBS            R2, R4, R5
E8C78:  SUBS            R4, R5, R4
E8C7A:  LSR.W           R4, R12, R4
E8C7E:  IT CC
E8C80:  LSLCC.W         R4, R12, R2
E8C84:  ORR.W           R4, R4, R8
E8C88:  STR.W           R4, [R9]
E8C8C:  LDR             R4, [R3,#4]
E8C8E:  ADD             R4, R10
E8C90:  AND.W           R8, R4, #0x1F
E8C94:  LSRS            R5, R4, #5
E8C96:  ADD.W           R9, R9, R5,LSL#2
E8C9A:  SUB.W           R5, R6, R10
E8C9E:  CMP             R5, #1
E8CA0:  STRD.W          R9, R8, [R3]
E8CA4:  BLT             loc_E8CCC
E8CA6:  RSB.W           R6, R5, #0x20 ; ' '
E8CAA:  LDR.W           R4, [R9]
E8CAE:  MOV             R8, R5
E8CB0:  LSR.W           R6, LR, R6
E8CB4:  BIC.W           R6, R4, R6
E8CB8:  STR.W           R6, [R9]
E8CBC:  LDR             R4, [R1,#4]
E8CBE:  ADD             R4, R10
E8CC0:  LSR.W           R4, R12, R4
E8CC4:  ORRS            R6, R4
E8CC6:  STR.W           R6, [R9]
E8CCA:  STR             R5, [R3,#4]
E8CCC:  LDR             R6, [R1]
E8CCE:  ADD.W           R12, R6, #4
E8CD2:  STR.W           R12, [R1]
E8CD6:  B               loc_E8CDC
E8CD8:  LDR.W           R8, [R3,#4]
E8CDC:  RSB.W           LR, R8, #0x20 ; ' '
E8CE0:  CMP.W           R11, #0x20 ; ' '
E8CE4:  BLT             loc_E8D46
E8CE6:  MOV.W           R4, #0xFFFFFFFF
E8CEA:  LSL.W           R9, R4, R8
E8CEE:  MVN.W           R0, R9
E8CF2:  STR             R0, [SP,#0x24+var_20]
E8CF4:  LDR             R6, [R3]
E8CF6:  MOV             R8, LR
E8CF8:  LDR.W           R2, [R12]
E8CFC:  CMP.W           R11, #0x3F ; '?'
E8D00:  LDR             R0, [SP,#0x24+var_20]
E8D02:  MOV             R4, R6
E8D04:  LDR.W           R10, [R4,#4]!
E8D08:  STR             R4, [R3]
E8D0A:  LDR             R5, [R1]
E8D0C:  AND.W           R10, R10, R9
E8D10:  ADD.W           R12, R5, #4
E8D14:  LSR.W           R5, R2, LR
E8D18:  LDR.W           LR, [R6]
E8D1C:  ORR.W           R5, R5, R10
E8D20:  STR.W           R12, [R1]
E8D24:  AND.W           R0, R0, LR
E8D28:  STR             R0, [R6]
E8D2A:  LDR.W           LR, [R3,#4]
E8D2E:  STR             R5, [R4]
E8D30:  SUB.W           R4, R11, #0x20 ; ' '
E8D34:  LSL.W           R2, R2, LR
E8D38:  MOV             LR, R8
E8D3A:  MOV             R11, R4
E8D3C:  ORR.W           R0, R0, R2
E8D40:  STR             R0, [R6]
E8D42:  BHI             loc_E8CF4
E8D44:  B               loc_E8D48
E8D46:  MOV             R4, R11
E8D48:  LDR             R0, [SP,#0x24+var_24]
E8D4A:  CMP             R4, #1
E8D4C:  BLT             loc_E8DC4
E8D4E:  MOV             R1, R4
E8D50:  LDRD.W          R8, R6, [R3]
E8D54:  CMP             LR, R4
E8D56:  IT LT
E8D58:  MOVLT           R1, LR
E8D5A:  SUB.W           R5, LR, R1
E8D5E:  MOV.W           LR, #0xFFFFFFFF
E8D62:  LSL.W           R6, LR, R6
E8D66:  LDR.W           R2, [R12]
E8D6A:  LSR.W           R5, LR, R5
E8D6E:  ANDS            R6, R5
E8D70:  LDR.W           R5, [R8]
E8D74:  BICS            R5, R6
E8D76:  RSB.W           R6, R4, #0x20 ; ' '
E8D7A:  STR.W           R5, [R8]
E8D7E:  SUBS            R4, R4, R1
E8D80:  LSR.W           R6, LR, R6
E8D84:  AND.W           R12, R2, R6
E8D88:  LDR             R2, [R3,#4]
E8D8A:  CMP             R4, #1
E8D8C:  LSL.W           R2, R12, R2
E8D90:  ORR.W           R2, R2, R5
E8D94:  STR.W           R2, [R8]
E8D98:  LDR             R2, [R3,#4]
E8D9A:  ADD             R2, R1
E8D9C:  AND.W           R6, R2, #0x1F
E8DA0:  MOV.W           R2, R2,LSR#5
E8DA4:  ADD.W           R5, R8, R2,LSL#2
E8DA8:  STRD.W          R5, R6, [R3]
E8DAC:  BLT             loc_E8DC4
E8DAE:  RSB.W           R2, R4, #0x20 ; ' '
E8DB2:  LSR.W           R6, R12, R1
E8DB6:  LDR             R1, [R5]
E8DB8:  LSR.W           R2, LR, R2
E8DBC:  BICS            R1, R2
E8DBE:  ORRS            R1, R6
E8DC0:  STR             R1, [R5]
E8DC2:  STR             R4, [R3,#4]
E8DC4:  LDRD.W          R2, R1, [R3]
E8DC8:  STRD.W          R2, R1, [R0]
E8DCC:  ADD             SP, SP, #8
E8DCE:  POP.W           {R8-R11}
E8DD2:  POP             {R4-R7,PC}
