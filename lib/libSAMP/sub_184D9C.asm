; =========================================================
; Game Engine Function: sub_184D9C
; Address            : 0x184D9C - 0x184F38
; =========================================================

184D9C:  PUSH            {R4-R7,LR}
184D9E:  ADD             R7, SP, #0xC
184DA0:  PUSH.W          {R11}
184DA4:  SUB             SP, SP, #0x20
184DA6:  VLD1.32         {D16-D17}, [R1]!
184DAA:  MOV             R4, SP
184DAC:  MOV             R5, R2
184DAE:  VLD1.32         {D18-D19}, [R0]!
184DB2:  VLD1.32         {D20-D21}, [R1]
184DB6:  MOVS            R1, #0xC
184DB8:  VLD1.32         {D22-D23}, [R0]
184DBC:  MOV             R0, R4
184DBE:  VST1.64         {D16-D17}, [R0]!
184DC2:  VST1.64         {D20-D21}, [R0],R1
184DC6:  MOV             R1, R2
184DC8:  LDR             R0, [R0]
184DCA:  VST1.32         {D18-D19}, [R1]!
184DCE:  CMP             R0, #0
184DD0:  VST1.32         {D22-D23}, [R1]
184DD4:  BMI             loc_184E0A
184DD6:  LDR             R2, [R5,#0x1C]
184DD8:  CMP             R2, R0
184DDA:  BHI             loc_184DF6
184DDC:  MOVS            R1, #6
184DDE:  MOV             R3, R0
184DE0:  CMP             R2, R3
184DE2:  BCC             loc_184E0A
184DE4:  ADDS            R2, R1, #1
184DE6:  BEQ             loc_184E0A
184DE8:  LDR.W           R2, [R5,R1,LSL#2]
184DEC:  LDR.W           R3, [R4,R1,LSL#2]
184DF0:  SUBS            R1, #1
184DF2:  CMP             R2, R3
184DF4:  BLS             loc_184DE0
184DF6:  MOVS            R2, #7
184DF8:  MOVS            R1, #0
184DFA:  LDR.W           R3, [R5,R2,LSL#2]
184DFE:  CBNZ            R3, loc_184E4A
184E00:  SUBS            R2, #1
184E02:  ADDS            R1, #0x20 ; ' '
184E04:  ADDS            R3, R2, #1
184E06:  BNE             loc_184DFA
184E08:  B               loc_184E66
184E0A:  LDR             R2, [R5,#0x1C]
184E0C:  CMP             R0, R2
184E0E:  BHI             loc_184E2C
184E10:  MOVS            R1, #6
184E12:  MOV             R3, R0
184E14:  MOVS            R6, #1
184E16:  CMP             R3, R2
184E18:  BCC             loc_184EF8
184E1A:  ADDS            R2, R1, #1
184E1C:  BEQ             loc_184EF8
184E1E:  LDR.W           R2, [R5,R1,LSL#2]
184E22:  LDR.W           R3, [R4,R1,LSL#2]
184E26:  SUBS            R1, #1
184E28:  CMP             R3, R2
184E2A:  BLS             loc_184E16
184E2C:  LSRS            R1, R0, #1
184E2E:  STR             R1, [SP,#0x30+var_14]
184E30:  MOVS            R1, #6
184E32:  LDR.W           R2, [R4,R1,LSL#2]
184E36:  LSLS            R0, R0, #0x1F
184E38:  ORR.W           R0, R0, R2,LSR#1
184E3C:  STR.W           R0, [R4,R1,LSL#2]
184E40:  SUBS            R1, #1
184E42:  ADDS            R0, R1, #1
184E44:  MOV             R0, R2
184E46:  BNE             loc_184E32
184E48:  B               loc_184F30
184E4A:  CMP             R2, #0
184E4C:  BMI             loc_184E66
184E4E:  MOV             R3, R2
184E50:  LDR.W           R6, [R4,R3,LSL#2]
184E54:  CBNZ            R6, loc_184E62
184E56:  SUBS            R6, R3, #1
184E58:  CMP             R3, #0
184E5A:  MOV             R3, R6
184E5C:  BGT             loc_184E50
184E5E:  MOV.W           R3, #0xFFFFFFFF
184E62:  CMP             R3, R2
184E64:  BNE             loc_184EE0
184E66:  MOVS            R6, #1
184E68:  CMP             R0, #0
184E6A:  BMI             loc_184EAE
184E6C:  LDR             R1, [R5,#0x1C]
184E6E:  CMP             R1, R0
184E70:  BHI             loc_184E8C
184E72:  MOVS            R2, #6
184E74:  MOV             R3, R1
184E76:  CMP             R3, R0
184E78:  BCC             loc_184EAE
184E7A:  ADDS            R0, R2, #1
184E7C:  BEQ             loc_184EAE
184E7E:  LDR.W           R3, [R5,R2,LSL#2]
184E82:  LDR.W           R0, [R4,R2,LSL#2]
184E86:  SUBS            R2, #1
184E88:  CMP             R3, R0
184E8A:  BLS             loc_184E76
184E8C:  MOVS            R0, #0
184E8E:  MOVS            R2, #0
184E90:  LDR.W           R3, [R4,R0,LSL#2]
184E94:  ORR.W           R2, R2, R3,LSL#1
184E98:  STR.W           R2, [R4,R0,LSL#2]
184E9C:  ADDS            R0, #1
184E9E:  LSRS            R2, R3, #0x1F
184EA0:  CMP             R0, #8
184EA2:  BNE             loc_184E90
184EA4:  LDR             R0, [SP,#0x30+var_14]
184EA6:  ADDS            R6, #1
184EA8:  CMP.W           R0, #0xFFFFFFFF
184EAC:  BGT             loc_184E6E
184EAE:  MOVS            R0, #0x1C
184EB0:  LDR             R1, [R5,R0]
184EB2:  LDR             R2, [R4,R0]
184EB4:  CMP             R2, R1
184EB6:  BHI             loc_184EC4
184EB8:  BCC             loc_184EF6
184EBA:  SUBS            R1, R0, #4
184EBC:  CMP             R0, #0
184EBE:  MOV             R0, R1
184EC0:  BNE             loc_184EB0
184EC2:  B               loc_184EF6
184EC4:  MOVS            R1, #0
184EC6:  MOVS            R0, #7
184EC8:  LDR.W           R2, [R4,R0,LSL#2]
184ECC:  ORR.W           R1, R1, R2,LSR#1
184ED0:  STR.W           R1, [R4,R0,LSL#2]
184ED4:  SUBS            R0, #1
184ED6:  LSLS            R1, R2, #0x1F
184ED8:  ADDS            R2, R0, #1
184EDA:  BNE             loc_184EC8
184EDC:  SUBS            R6, #1
184EDE:  B               loc_184EAE
184EE0:  ADD.W           R6, R1, R3,LSL#5
184EE4:  MOV             R0, SP; int
184EE6:  RSB.W           R1, R6, #0xE0
184EEA:  BL              sub_1850D2
184EEE:  LDR             R0, [SP,#0x30+var_14]
184EF0:  RSB.W           R6, R6, #0xE1
184EF4:  B               loc_184E68
184EF6:  CBZ             R6, loc_184F30
184EF8:  SUBS            R6, #1
184EFA:  MOVS            R0, #0x1C
184EFC:  LDR             R1, [R5,R0]
184EFE:  LDR             R2, [R4,R0]
184F00:  CMP             R2, R1
184F02:  BHI             loc_184F16
184F04:  BCC             loc_184F0E
184F06:  SUBS            R1, R0, #4
184F08:  CMP             R0, #0
184F0A:  MOV             R0, R1
184F0C:  BNE             loc_184EFC
184F0E:  MOV             R0, R5
184F10:  MOV             R1, R4
184F12:  BL              sub_185174
184F16:  MOVS            R1, #0
184F18:  MOVS            R0, #7
184F1A:  LDR.W           R2, [R4,R0,LSL#2]
184F1E:  ORR.W           R1, R1, R2,LSR#1
184F22:  STR.W           R1, [R4,R0,LSL#2]
184F26:  SUBS            R0, #1
184F28:  LSLS            R1, R2, #0x1F
184F2A:  ADDS            R2, R0, #1
184F2C:  BNE             loc_184F1A
184F2E:  B               loc_184EF6
184F30:  ADD             SP, SP, #0x20 ; ' '
184F32:  POP.W           {R11}
184F36:  POP             {R4-R7,PC}
