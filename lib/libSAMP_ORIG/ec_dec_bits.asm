; =========================================================
; Game Engine Function: ec_dec_bits
; Address            : 0xB5DB0 - 0xB5E1E
; =========================================================

B5DB0:  PUSH            {R4-R7,LR}
B5DB2:  ADD             R7, SP, #0xC
B5DB4:  PUSH.W          {R11}
B5DB8:  LDRD.W          R2, R3, [R0,#0xC]
B5DBC:  CMP             R3, R1
B5DBE:  BCS             loc_B5E00
B5DC0:  CMP             R3, #0x11
B5DC2:  MOV             R4, R3
B5DC4:  IT LE
B5DC6:  MOVLE           R4, #0x11
B5DC8:  LDRD.W          R12, LR, [R0,#4]
B5DCC:  ADDS            R4, #7
B5DCE:  SUBS            R4, R4, R3
B5DD0:  BIC.W           R4, R4, #7
B5DD4:  ADD             R4, R3
B5DD6:  CMP             LR, R12
B5DD8:  BCS             loc_B5DEC
B5DDA:  ADD.W           LR, LR, #1
B5DDE:  STR.W           LR, [R0,#8]
B5DE2:  LDR             R5, [R0]
B5DE4:  SUB.W           R6, R12, LR
B5DE8:  LDRB            R5, [R5,R6]
B5DEA:  B               loc_B5DEE
B5DEC:  MOVS            R5, #0
B5DEE:  LSLS            R5, R3
B5DF0:  ORRS            R2, R5
B5DF2:  ADD.W           R5, R3, #8
B5DF6:  CMP             R3, #0x11
B5DF8:  MOV             R3, R5
B5DFA:  BLT             loc_B5DD6
B5DFC:  ADD.W           R3, R4, #8
B5E00:  SUBS            R3, R3, R1
B5E02:  STR             R3, [R0,#0x10]
B5E04:  LDR             R3, [R0,#0x14]
B5E06:  LSR.W           R6, R2, R1
B5E0A:  STR             R6, [R0,#0xC]
B5E0C:  ADD             R3, R1
B5E0E:  STR             R3, [R0,#0x14]
B5E10:  MOVS            R0, #1
B5E12:  LSLS            R0, R1
B5E14:  SUBS            R0, #1
B5E16:  ANDS            R0, R2
B5E18:  POP.W           {R11}
B5E1C:  POP             {R4-R7,PC}
