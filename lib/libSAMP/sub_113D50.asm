; =========================================================
; Game Engine Function: sub_113D50
; Address            : 0x113D50 - 0x113E34
; =========================================================

113D50:  PUSH            {R4-R7,LR}
113D52:  ADD             R7, SP, #0xC
113D54:  PUSH.W          {R8,R9,R11}
113D58:  VPUSH           {D8-D9}
113D5C:  SUB             SP, SP, #0x50
113D5E:  LDR             R3, =(a09d - 0x113D6C); "%09d" ...
113D60:  ADD.W           R9, SP, #0x78+var_38
113D64:  MOVS            R6, #0
113D66:  MOV             R8, R2
113D68:  ADD             R3, PC; "%09d"
113D6A:  MOV             R5, R0
113D6C:  STR             R1, [SP,#0x78+var_78]
113D6E:  MOV             R0, R9
113D70:  MOVS            R1, #0xC
113D72:  MOVS            R2, #0xC
113D74:  STRD.W          R6, R6, [SP,#0x78+var_38]
113D78:  STR             R6, [SP,#0x78+var_30]
113D7A:  BL              sub_113E38
113D7E:  LDR.W           R0, [R5,#-0x18]!
113D82:  MOV             R1, #0x3F333333
113D8A:  LDR             R2, [R0,#0x18]
113D8C:  MOV             R0, R5
113D8E:  BLX             R2
113D90:  MOV             R4, R0
113D92:  LDR             R0, [R5]
113D94:  MOV             R1, #0x3FA66666
113D9C:  LDR             R2, [R0,#0x18]
113D9E:  MOV             R0, R5
113DA0:  BLX             R2
113DA2:  MOV             R1, R0
113DA4:  MOV             R0, R4
113DA6:  BL              sub_163C58
113DAA:  MOVS            R0, #0
113DAC:  BL              sub_163CA4
113DB0:  MOVS            R0, #0
113DB2:  BL              sub_163D1C
113DB6:  MOVS            R0, #2
113DB8:  BL              sub_163D80
113DBC:  MOV.W           R0, #0xFFFFFFFF
113DC0:  STR             R0, [SP,#0x78+var_3C]
113DC2:  ADD             R0, SP, #0x78+var_3C
113DC4:  BL              sub_163C74
113DC8:  ADD             R4, SP, #0x78+var_58
113DCA:  VMOV.I32        Q8, #0
113DCE:  STR             R6, [SP,#0x78+var_44]
113DD0:  MOV             R0, R4
113DD2:  MOV             R1, R4
113DD4:  VST1.64         {D16-D17}, [R0]!
113DD8:  STR             R6, [R0]
113DDA:  MOV             R0, R9
113DDC:  BL              sub_163C40
113DE0:  LDR             R0, [R5]
113DE2:  MOV             R1, R5
113DE4:  LDR             R2, [R0,#0x14]
113DE6:  ADD             R0, SP, #0x78+var_60
113DE8:  BLX             R2
113DEA:  LDR             R0, [R5]
113DEC:  MOV             R1, R5
113DEE:  VLDR            S16, [SP,#0x78+var_60]
113DF2:  LDR             R2, [R0,#0x14]
113DF4:  ADD             R0, SP, #0x78+var_68
113DF6:  BLX             R2
113DF8:  LDR             R0, [R5]
113DFA:  MOV             R1, R5
113DFC:  VLDR            S18, [SP,#0x78+var_64]
113E00:  LDR             R2, [R0,#0x4C]
113E02:  ADD             R0, SP, #0x78+var_70
113E04:  BLX             R2
113E06:  VMOV.F32        S0, #0.5
113E0A:  VLDR            S4, [SP,#0x78+var_6C]
113E0E:  VMOV            S2, R8
113E12:  MOV             R2, R4
113E14:  VMLS.F32        S18, S4, S2
113E18:  VMOV            R1, S18
113E1C:  VMUL.F32        S0, S16, S0
113E20:  VMOV            R0, S0
113E24:  BL              sub_163D64
113E28:  ADD             SP, SP, #0x50 ; 'P'
113E2A:  VPOP            {D8-D9}
113E2E:  POP.W           {R8,R9,R11}
113E32:  POP             {R4-R7,PC}
