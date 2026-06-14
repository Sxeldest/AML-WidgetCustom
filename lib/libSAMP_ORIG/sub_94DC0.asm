; =========================================================
; Game Engine Function: sub_94DC0
; Address            : 0x94DC0 - 0x94E96
; =========================================================

94DC0:  PUSH            {R4-R7,LR}
94DC2:  ADD             R7, SP, #0xC
94DC4:  PUSH.W          {R8}
94DC8:  LDR             R0, =(dword_1ACF68 - 0x94DD2)
94DCA:  MOVW            R1, #0x1990
94DCE:  ADD             R0, PC; dword_1ACF68
94DD0:  MOV             R8, R0
94DD2:  LDR             R0, [R0]
94DD4:  LDR             R2, [R0,R1]
94DD6:  CMP             R2, #1
94DD8:  BGT             loc_94DE4
94DDA:  LDRB            R2, [R0,#2]
94DDC:  CBZ             R2, loc_94DE4
94DDE:  POP.W           {R8}
94DE2:  POP             {R4-R7,PC}
94DE4:  ADDS            R5, R0, R1
94DE6:  LDR             R4, [R5,#0x1C]
94DE8:  LDR.W           R0, [R4,#0x1C0]
94DEC:  MOV             R6, R4
94DEE:  CBZ             R0, loc_94E00
94DF0:  BL              sub_96B84
94DF4:  MOV             R0, R8
94DF6:  MOVW            R1, #0x19AC
94DFA:  LDR.W           R0, [R8]
94DFE:  LDR             R6, [R0,R1]
94E00:  LDR.W           R0, [R6,#0x27C]
94E04:  MOVS            R1, #1
94E06:  STRB.W          R1, [R6,#0x7C]
94E0A:  BL              sub_9C12E
94E0E:  LDR.W           R0, [R6,#0x27C]
94E12:  LDR             R1, [R0,#0x40]
94E14:  LDR             R0, [R0,#0x48]
94E16:  ADD.W           R0, R0, R1,LSL#4
94E1A:  SUBS            R0, #0x10
94E1C:  VLD1.32         {D16-D17}, [R0]
94E20:  ADD.W           R0, R6, #0x210
94E24:  VST1.32         {D16-D17}, [R0]
94E28:  LDR             R1, [R4,#8]
94E2A:  LSLS            R0, R1, #7
94E2C:  BMI             loc_94E34
94E2E:  BL              sub_97058
94E32:  LDR             R1, [R4,#8]
94E34:  LDR             R0, [R5]
94E36:  LSLS            R1, R1, #5
94E38:  SUB.W           R2, R0, #1
94E3C:  STR             R2, [R5]
94E3E:  ITTT MI
94E40:  LDRMI.W         R1, [R5,#0x118]
94E44:  SUBMI           R1, #1
94E46:  STRMI.W         R1, [R5,#0x118]
94E4A:  CBZ             R2, loc_94E84
94E4C:  LDR             R2, [R5,#8]
94E4E:  LDR.W           R1, [R8]
94E52:  ADD.W           R0, R2, R0,LSL#2
94E56:  MOVW            R2, #0x19AC
94E5A:  LDR.W           R0, [R0,#-8]
94E5E:  STR             R0, [R1,R2]
94E60:  CMP             R0, #0
94E62:  BEQ             loc_94DDE
94E64:  MOVW            R2, #0x18C8
94E68:  ADD             R1, R2
94E6A:  VLDR            S0, [R0,#0x274]
94E6E:  VLDR            S2, [R1,#4]
94E72:  VMUL.F32        S0, S2, S0
94E76:  VSTR            S0, [R1,#0x14]
94E7A:  VSTR            S0, [R1]
94E7E:  POP.W           {R8}
94E82:  POP             {R4-R7,PC}
94E84:  LDR.W           R0, [R8]
94E88:  MOVW            R1, #0x19AC
94E8C:  MOVS            R2, #0
94E8E:  STR             R2, [R0,R1]
94E90:  POP.W           {R8}
94E94:  POP             {R4-R7,PC}
