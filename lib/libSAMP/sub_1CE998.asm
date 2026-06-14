; =========================================================
; Game Engine Function: sub_1CE998
; Address            : 0x1CE998 - 0x1CED58
; =========================================================

1CE998:  PUSH            {R4-R11,LR}
1CE99C:  ADD             R11, SP, #0x1C
1CE9A0:  SUB             SP, SP, #0x24
1CE9A4:  MOV             R12, R0
1CE9A8:  MOVW            R0, #0x1204
1CE9AC:  SUB             R0, R2, R0
1CE9B0:  MOV             LR, R1
1CE9B4:  MOVW            R7, #0xA002
1CE9B8:  CMP             R0, #0xE; switch 15 cases
1CE9BC:  BHI             def_1CE9CC; jumptable 001CE9CC default case
1CE9C0:  ADR             R1, jpt_1CE9CC
1CE9C4:  MOV             R0, R0,LSL#2
1CE9C8:  LDR             R0, [R0,R1]
1CE9CC:  ADD             PC, R0, R1; switch jump
1CE9D0:  DCD loc_1CEA0C - 0x1CE9D0; jump table for switch statement
1CE9D4:  DCD loc_1CEAC4 - 0x1CE9D0; jumptable 001CE9CC case 1
1CE9D8:  DCD loc_1CEACC - 0x1CE9D0; jumptable 001CE9CC case 2
1CE9DC:  DCD loc_1CEAD4 - 0x1CE9D0; jumptable 001CE9CC case 3
1CE9E0:  DCD loc_1CEADC - 0x1CE9D0; jumptable 001CE9CC case 4
1CE9E4:  DCD loc_1CEAE4 - 0x1CE9D0; jumptable 001CE9CC case 5
1CE9E8:  DCD loc_1CEAEC - 0x1CE9D0; jumptable 001CE9CC case 6
1CE9EC:  DCD loc_1CEAF4 - 0x1CE9D0; jumptable 001CE9CC case 7
1CE9F0:  DCD loc_1CEAFC - 0x1CE9D0; jumptable 001CE9CC case 8
1CE9F4:  DCD loc_1CEB04 - 0x1CE9D0; jumptable 001CE9CC case 9
1CE9F8:  DCD loc_1CEB0C - 0x1CE9D0; jumptable 001CE9CC case 10
1CE9FC:  DCD loc_1CEB14 - 0x1CE9D0; jumptable 001CE9CC case 11
1CEA00:  DCD loc_1CEB1C - 0x1CE9D0; jumptable 001CE9CC case 12
1CEA04:  DCD loc_1CEB24 - 0x1CE9D0; jumptable 001CE9CC case 13
1CEA08:  DCD loc_1CEB2C - 0x1CE9D0; jumptable 001CE9CC case 14
1CEA0C:  MOV             R0, #0xB; jumptable 001CE9CC case 0
1CEA10:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEA14:  SUB             R1, R2, #0x1100; jumptable 001CE9CC default case
1CEA18:  CMP             R1, #3
1CEA1C:  BLS             loc_1CEA80
1CEA20:  SUB             R0, R2, #4; jumptable 001CEA90 default case
1CEA24:  SUB             R0, R0, #0x10000; switch 14 cases
1CEA28:  CMP             R0, #0xD
1CEA2C:  BHI             def_1CEA3C; jumptable 001CEA3C default case, cases 65538-65547
1CEA30:  ADR             R1, jpt_1CEA3C
1CEA34:  MOV             R0, R0,LSL#2
1CEA38:  LDR             R0, [R0,R1]
1CEA3C:  ADD             PC, R0, R1; switch jump
1CEA40:  DCD loc_1CEA78 - 0x1CEA40; jump table for switch statement
1CEA44:  DCD loc_1CEAAC - 0x1CEA40; jumptable 001CEA3C case 65537
1CEA48:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA4C:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA50:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA54:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA58:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA5C:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA60:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA64:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA68:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA6C:  DCD def_1CEA3C - 0x1CEA40; jumptable 001CEA3C default case, cases 65538-65547
1CEA70:  DCD loc_1CEAB4 - 0x1CEA40; jumptable 001CEA3C case 65548
1CEA74:  DCD loc_1CEABC - 0x1CEA40; jumptable 001CEA3C case 65549
1CEA78:  MOV             R0, #9; jumptable 001CEA3C case 65536
1CEA7C:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEA80:  ADR             R6, jpt_1CEA90
1CEA84:  MOV             R1, R1,LSL#2
1CEA88:  MOV             R0, #0
1CEA8C:  LDR             R1, [R1,R6]
1CEA90:  ADD             PC, R1, R6; switch jump
1CEA94:  DCD loc_1CEB40 - 0x1CEA94; jump table for switch statement
1CEA98:  DCD loc_1CEAA4 - 0x1CEA94; jumptable 001CEA90 case 4353
1CEA9C:  DCD loc_1CEB34 - 0x1CEA94; jumptable 001CEA90 case 4354
1CEAA0:  DCD loc_1CEB3C - 0x1CEA94; jumptable 001CEA90 case 4355
1CEAA4:  MOV             R0, #1; jumptable 001CEA90 case 4353
1CEAA8:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAAC:  MOV             R0, #0xA; jumptable 001CEA3C case 65537
1CEAB0:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAB4:  MOV             R0, #2; jumptable 001CEA3C case 65548
1CEAB8:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEABC:  MOV             R0, #5; jumptable 001CEA3C case 65549
1CEAC0:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAC4:  MOV             R0, #0xC; jumptable 001CE9CC case 1
1CEAC8:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEACC:  MOV             R0, #0xD; jumptable 001CE9CC case 2
1CEAD0:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAD4:  MOV             R0, #6; jumptable 001CE9CC case 3
1CEAD8:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEADC:  MOV             R0, #7; jumptable 001CE9CC case 4
1CEAE0:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAE4:  MOV             R0, #8; jumptable 001CE9CC case 5
1CEAE8:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAEC:  MOV             R0, #0xE; jumptable 001CE9CC case 6
1CEAF0:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAF4:  MOV             R0, #0xF; jumptable 001CE9CC case 7
1CEAF8:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEAFC:  MOV             R0, #0x10; jumptable 001CE9CC case 8
1CEB00:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB04:  MOV             R0, #0x11; jumptable 001CE9CC case 9
1CEB08:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB0C:  MOV             R0, #0x12; jumptable 001CE9CC case 10
1CEB10:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB14:  MOV             R0, #0x13; jumptable 001CE9CC case 11
1CEB18:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB1C:  MOV             R0, #0x14; jumptable 001CE9CC case 12
1CEB20:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB24:  MOV             R0, #0x15; jumptable 001CE9CC case 13
1CEB28:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB2C:  MOV             R0, #0x16; jumptable 001CE9CC case 14
1CEB30:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB34:  MOV             R0, #3; jumptable 001CEA90 case 4354
1CEB38:  B               loc_1CEB40; jumptable 001CEA90 case 4352
1CEB3C:  MOV             R0, #4; jumptable 001CEA90 case 4355
1CEB40:  LDR             R1, =(unk_C4FC4 - 0x1CEB54); jumptable 001CEA90 case 4352
1CEB44:  ADD             R0, R0, R0,LSL#1
1CEB48:  LDR             R4, [R11,#arg_0]
1CEB4C:  ADD             R1, PC, R1; unk_C4FC4
1CEB50:  ADD             R0, R1, R0,LSL#2
1CEB54:  LDR             R1, [R0,#4]
1CEB58:  CMP             R1, R4
1CEB5C:  BNE             def_1CEA3C; jumptable 001CEA3C default case, cases 65538-65547
1CEB60:  SUB             R9, R4, #0x1500
1CEB64:  LDR             R6, [R0,#8]
1CEB68:  CMP             R9, #6
1CEB6C:  MOV             R10, #0
1CEB70:  LDRLS           R0, =(unk_C5130 - 0x1CEB84)
1CEB74:  MOV             R5, #0
1CEB78:  MOV             R7, R3,ASR#31
1CEB7C:  ADDLS           R0, PC, R0; unk_C5130
1CEB80:  LDRLS           R10, [R0,R9,LSL#2]
1CEB84:  SUB             R0, R6, #0x1400
1CEB88:  CMP             R0, #6
1CEB8C:  LDRLS           R1, =(unk_C5150 - 0x1CEB98)
1CEB90:  ADDLS           R1, PC, R1; unk_C5150
1CEB94:  LDRLS           R5, [R1,R0,LSL#2]
1CEB98:  UMULL           R0, R1, R10, R3
1CEB9C:  MLA             R1, R10, R7, R1
1CEBA0:  MOVW            R7, #0xA005
1CEBA4:  UMULL           R8, R0, R0, R5
1CEBA8:  MLA             R4, R1, R5, R0
1CEBAC:  MOV             R0, R8,LSR#31
1CEBB0:  ORR             R0, R0, R4,LSL#1
1CEBB4:  ORR             R0, R0, R4,LSR#31
1CEBB8:  CMP             R0, #0
1CEBBC:  BNE             def_1CEA3C; jumptable 001CEA3C default case, cases 65538-65547
1CEBC0:  STR             R6, [SP,#0x40+var_28]
1CEBC4:  ADD             R6, R12, #0x30 ; '0'
1CEBC8:  STR             LR, [SP,#0x40+var_30]
1CEBCC:  MOV             R0, R6
1CEBD0:  STR             R2, [SP,#0x40+var_2C]
1CEBD4:  STR             R3, [SP,#0x40+var_24]
1CEBD8:  STR             R12, [SP,#0x40+var_20]
1CEBDC:  BL              j_WriteLock
1CEBE0:  LDR             R1, [SP,#0x40+var_20]
1CEBE4:  LDR             R0, [R1,#0x2C]
1CEBE8:  CMP             R0, #0
1CEBEC:  BEQ             loc_1CEC00
1CEBF0:  MOV             R0, R6
1CEBF4:  BL              j_WriteUnlock
1CEBF8:  MOVW            R7, #0xA004
1CEBFC:  B               def_1CEA3C; jumptable 001CEA3C default case, cases 65538-65547
1CEC00:  STR             R6, [SP,#0x40+var_34]
1CEC04:  LDR             R0, [R1]; ptr
1CEC08:  MOV             R1, R8; size
1CEC0C:  BL              realloc
1CEC10:  ORRS            R1, R8, R4
1CEC14:  BEQ             loc_1CEC28
1CEC18:  CMP             R0, #0
1CEC1C:  BNE             loc_1CEC28
1CEC20:  LDR             R0, [SP,#0x40+var_34]
1CEC24:  B               loc_1CED48
1CEC28:  LDR             R4, [SP,#0x40+var_20]
1CEC2C:  LDR             R2, [R11,#arg_8]
1CEC30:  LDR             R8, [R11,#arg_C]
1CEC34:  LDR             R7, [R11,#arg_4]
1CEC38:  CMP             R2, #0
1CEC3C:  STR             R0, [R4]
1CEC40:  BEQ             loc_1CEC60
1CEC44:  LDR             R1, [SP,#0x40+var_24]
1CEC48:  MOV             R3, R7
1CEC4C:  STR             R10, [SP,#0x40+var_40]
1CEC50:  STR             R1, [SP,#0x40+var_3C]
1CEC54:  LDR             R1, [SP,#0x40+var_28]
1CEC58:  BL              sub_1CF100
1CEC5C:  LDR             R4, [SP,#0x40+var_20]
1CEC60:  LDR             R0, [R11,#arg_0]
1CEC64:  CMP             R8, #0
1CEC68:  STR             R0, [R4,#0x18]
1CEC6C:  LDR             R3, [SP,#0x40+var_24]
1CEC70:  LDR             R12, [SP,#0x40+var_34]
1CEC74:  BEQ             loc_1CECCC
1CEC78:  STR             R7, [R4,#0x1C]
1CEC7C:  MOVW            R0, #0x140C
1CEC80:  LDR             R6, [SP,#0x40+var_2C]
1CEC84:  CMP             R7, R0
1CEC88:  LDR             R5, [SP,#0x40+var_30]
1CEC8C:  BNE             loc_1CECE8
1CEC90:  MOVW            R0, #0xE07F
1CEC94:  CMP             R9, #6
1CEC98:  MOVT            R0, #0x7E07
1CEC9C:  LDR             R2, [SP,#0x40+var_28]
1CECA0:  SMMUL           R0, R3, R0
1CECA4:  MOV             R1, R0,ASR#5
1CECA8:  ADD             R0, R1, R0,LSR#31
1CECAC:  MOV             R1, #0
1CECB0:  LDRLS           R1, =(unk_C5130 - 0x1CECC0)
1CECB4:  ADD             R0, R0, R0,LSL#3
1CECB8:  ADDLS           R1, PC, R1; unk_C5130
1CECBC:  MOV             R0, R0,LSL#2
1CECC0:  LDRLS           R1, [R1,R9,LSL#2]
1CECC4:  MUL             R0, R0, R1
1CECC8:  B               loc_1CED20
1CECCC:  MUL             R0, R10, R3
1CECD0:  LDR             R2, [SP,#0x40+var_28]
1CECD4:  STR             R2, [R4,#0x1C]
1CECD8:  LDR             R6, [SP,#0x40+var_2C]
1CECDC:  MUL             R0, R0, R5
1CECE0:  LDR             R5, [SP,#0x40+var_30]
1CECE4:  B               loc_1CED20
1CECE8:  CMP             R9, #6
1CECEC:  MOV             R1, #0
1CECF0:  LDRLS           R1, =(unk_C5130 - 0x1CED04)
1CECF4:  SUB             R2, R7, #0x1400
1CECF8:  MOV             R0, #0
1CECFC:  ADDLS           R1, PC, R1; unk_C5130
1CED00:  LDRLS           R1, [R1,R9,LSL#2]
1CED04:  CMP             R2, #0xB
1CED08:  LDRLS           R0, =(unk_C5100 - 0x1CED18)
1CED0C:  MUL             R1, R1, R3
1CED10:  ADDLS           R0, PC, R0; unk_C5100
1CED14:  LDRLS           R0, [R0,R2,LSL#2]
1CED18:  LDR             R2, [SP,#0x40+var_28]
1CED1C:  MUL             R0, R1, R0
1CED20:  LDR             R1, [R11,#arg_0]
1CED24:  MOV             R7, #0
1CED28:  STMIB           R4, {R5,R6}
1CED2C:  STR             R3, [R4,#0xC]
1CED30:  STR             R1, [R4,#0x10]
1CED34:  STR             R2, [R4,#0x14]
1CED38:  STR             R0, [R4,#0x20]
1CED3C:  MOV             R0, R12
1CED40:  STR             R7, [R4,#0x24]
1CED44:  STR             R3, [R4,#0x28]
1CED48:  BL              j_WriteUnlock
1CED4C:  MOV             R0, R7; jumptable 001CEA3C default case, cases 65538-65547
1CED50:  SUB             SP, R11, #0x1C
1CED54:  POP             {R4-R11,PC}
