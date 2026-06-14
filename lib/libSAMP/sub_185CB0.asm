; =========================================================
; Game Engine Function: sub_185CB0
; Address            : 0x185CB0 - 0x185E5E
; =========================================================

185CB0:  PUSH            {R4-R7,LR}
185CB2:  ADD             R7, SP, #0xC
185CB4:  PUSH.W          {R8,R9,R11}
185CB8:  SUB             SP, SP, #0x40
185CBA:  LDM.W           R1!, {R3-R6,R12}
185CBE:  MOV             R9, SP
185CC0:  MOV             R8, R2
185CC2:  MOV             R2, R9
185CC4:  STM.W           R2!, {R3-R6,R12}
185CC8:  LDM.W           R1!, {R3-R6,R12}
185CCC:  STM.W           R2!, {R3-R6,R12}
185CD0:  LDM.W           R1, {R3-R6,R12,LR}
185CD4:  MOV             R1, R8
185CD6:  STM.W           R2, {R3-R6,R12,LR}
185CDA:  LDM             R0!, {R2-R6}
185CDC:  STM             R1!, {R2-R6}
185CDE:  LDM             R0!, {R2-R6}
185CE0:  STM             R1!, {R2-R6}
185CE2:  LDM.W           R0, {R2-R6,R12}
185CE6:  STM.W           R1, {R2-R6,R12}
185CEA:  LDR             R0, [SP,#0x58+var_1C]
185CEC:  CMP             R0, #0
185CEE:  BMI             loc_185D28
185CF0:  LDR.W           R2, [R8,#0x3C]
185CF4:  CMP             R2, R0
185CF6:  BHI             loc_185D12
185CF8:  MOVS            R1, #0xE
185CFA:  MOV             R3, R0
185CFC:  CMP             R2, R3
185CFE:  BCC             loc_185D28
185D00:  ADDS            R2, R1, #1
185D02:  BEQ             loc_185D28
185D04:  LDR.W           R2, [R8,R1,LSL#2]
185D08:  LDR.W           R3, [R9,R1,LSL#2]
185D0C:  SUBS            R1, #1
185D0E:  CMP             R2, R3
185D10:  BLS             loc_185CFC
185D12:  MOVS            R2, #0xF
185D14:  MOV.W           R1, #0x1E0
185D18:  LDR.W           R3, [R8,R2,LSL#2]
185D1C:  CBNZ            R3, loc_185D6A
185D1E:  SUBS            R2, #1
185D20:  SUBS            R1, #0x20 ; ' '
185D22:  ADDS            R3, R2, #1
185D24:  BNE             loc_185D18
185D26:  B               loc_185D86
185D28:  LDR.W           R2, [R8,#0x3C]
185D2C:  CMP             R0, R2
185D2E:  BHI             loc_185D4C
185D30:  MOVS            R1, #0xE
185D32:  MOV             R3, R0
185D34:  MOVS            R6, #1
185D36:  CMP             R3, R2
185D38:  BCC             loc_185E1A
185D3A:  ADDS            R2, R1, #1
185D3C:  BEQ             loc_185E1A
185D3E:  LDR.W           R2, [R8,R1,LSL#2]
185D42:  LDR.W           R3, [R9,R1,LSL#2]
185D46:  SUBS            R1, #1
185D48:  CMP             R3, R2
185D4A:  BLS             loc_185D36
185D4C:  LSRS            R1, R0, #1
185D4E:  STR             R1, [SP,#0x58+var_1C]
185D50:  MOVS            R1, #0xE
185D52:  LDR.W           R2, [R9,R1,LSL#2]
185D56:  LSLS            R0, R0, #0x1F
185D58:  ORR.W           R0, R0, R2,LSR#1
185D5C:  STR.W           R0, [R9,R1,LSL#2]
185D60:  SUBS            R1, #1
185D62:  ADDS            R0, R1, #1
185D64:  MOV             R0, R2
185D66:  BNE             loc_185D52
185D68:  B               loc_185E56
185D6A:  CMP             R2, #0
185D6C:  BMI             loc_185D86
185D6E:  MOV             R3, R2
185D70:  LDR.W           R6, [R9,R3,LSL#2]
185D74:  CBNZ            R6, loc_185D82
185D76:  SUBS            R6, R3, #1
185D78:  CMP             R3, #0
185D7A:  MOV             R3, R6
185D7C:  BGT             loc_185D70
185D7E:  MOV.W           R3, #0xFFFFFFFF
185D82:  CMP             R3, R2
185D84:  BNE             loc_185E06
185D86:  MOVS            R6, #1
185D88:  CMP             R0, #0
185D8A:  BMI             loc_185DD0
185D8C:  LDR.W           R1, [R8,#0x3C]
185D90:  CMP             R1, R0
185D92:  BHI             loc_185DAE
185D94:  MOVS            R2, #0xE
185D96:  MOV             R3, R1
185D98:  CMP             R3, R0
185D9A:  BCC             loc_185DD0
185D9C:  ADDS            R0, R2, #1
185D9E:  BEQ             loc_185DD0
185DA0:  LDR.W           R3, [R8,R2,LSL#2]
185DA4:  LDR.W           R0, [R9,R2,LSL#2]
185DA8:  SUBS            R2, #1
185DAA:  CMP             R3, R0
185DAC:  BLS             loc_185D98
185DAE:  MOVS            R0, #0
185DB0:  MOVS            R2, #0
185DB2:  LDR.W           R3, [R9,R0,LSL#2]
185DB6:  ORR.W           R2, R2, R3,LSL#1
185DBA:  STR.W           R2, [R9,R0,LSL#2]
185DBE:  ADDS            R0, #1
185DC0:  LSRS            R2, R3, #0x1F
185DC2:  CMP             R0, #0x10
185DC4:  BNE             loc_185DB2
185DC6:  LDR             R0, [SP,#0x58+var_1C]
185DC8:  ADDS            R6, #1
185DCA:  CMP.W           R0, #0xFFFFFFFF
185DCE:  BGT             loc_185D90
185DD0:  MOVS            R0, #0x3C ; '<'
185DD2:  LDR.W           R1, [R8,R0]
185DD6:  LDR.W           R2, [R9,R0]
185DDA:  CMP             R2, R1
185DDC:  BHI             loc_185DEA
185DDE:  BCC             loc_185E18
185DE0:  SUBS            R1, R0, #4
185DE2:  CMP             R0, #0
185DE4:  MOV             R0, R1
185DE6:  BNE             loc_185DD2
185DE8:  B               loc_185E18
185DEA:  MOVS            R1, #0
185DEC:  MOVS            R0, #0xF
185DEE:  LDR.W           R2, [R9,R0,LSL#2]
185DF2:  ORR.W           R1, R1, R2,LSR#1
185DF6:  STR.W           R1, [R9,R0,LSL#2]
185DFA:  SUBS            R0, #1
185DFC:  LSLS            R1, R2, #0x1F
185DFE:  ADDS            R2, R0, #1
185E00:  BNE             loc_185DEE
185E02:  SUBS            R6, #1
185E04:  B               loc_185DD0
185E06:  SUB.W           R6, R1, R3,LSL#5
185E0A:  MOV             R0, SP; int
185E0C:  MOV             R1, R6
185E0E:  BL              sub_185E5E
185E12:  LDR             R0, [SP,#0x58+var_1C]
185E14:  ADDS            R6, #1
185E16:  B               loc_185D88
185E18:  CBZ             R6, loc_185E56
185E1A:  SUBS            R6, #1
185E1C:  MOVS            R0, #0x3C ; '<'
185E1E:  LDR.W           R1, [R8,R0]
185E22:  LDR.W           R2, [R9,R0]
185E26:  CMP             R2, R1
185E28:  BHI             loc_185E3C
185E2A:  BCC             loc_185E34
185E2C:  SUBS            R1, R0, #4
185E2E:  CMP             R0, #0
185E30:  MOV             R0, R1
185E32:  BNE             loc_185E1E
185E34:  MOV             R0, R8
185E36:  MOV             R1, R9
185E38:  BL              sub_185F02
185E3C:  MOVS            R1, #0
185E3E:  MOVS            R0, #0xF
185E40:  LDR.W           R2, [R9,R0,LSL#2]
185E44:  ORR.W           R1, R1, R2,LSR#1
185E48:  STR.W           R1, [R9,R0,LSL#2]
185E4C:  SUBS            R0, #1
185E4E:  LSLS            R1, R2, #0x1F
185E50:  ADDS            R2, R0, #1
185E52:  BNE             loc_185E40
185E54:  B               loc_185E18
185E56:  ADD             SP, SP, #0x40 ; '@'
185E58:  POP.W           {R8,R9,R11}
185E5C:  POP             {R4-R7,PC}
