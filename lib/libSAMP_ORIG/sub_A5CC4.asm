; =========================================================
; Game Engine Function: sub_A5CC4
; Address            : 0xA5CC4 - 0xA5E7A
; =========================================================

A5CC4:  PUSH            {R4-R7,LR}
A5CC6:  ADD             R7, SP, #0xC
A5CC8:  PUSH.W          {R8-R11}
A5CCC:  SUB             SP, SP, #0x24
A5CCE:  MOV             R9, R0
A5CD0:  LDR             R0, =(__stack_chk_guard_ptr - 0xA5CD8)
A5CD2:  CMP             R1, #0xD
A5CD4:  ADD             R0, PC; __stack_chk_guard_ptr
A5CD6:  LDR             R0, [R0]; __stack_chk_guard
A5CD8:  LDR             R0, [R0]
A5CDA:  STR             R0, [SP,#0x40+var_20]
A5CDC:  BLT.W           loc_A5E60
A5CE0:  ADD.W           R8, SP, #0x40+var_38
A5CE4:  MOV             R6, R1
A5CE6:  MOV.W           R11, #4
A5CEA:  MOV             R10, #0xFFFFFFEC
A5CEE:  B               loc_A5CFC
A5CF0:  MOV             R0, R4
A5CF2:  BL              sub_A5CC4
A5CF6:  CMP             R6, #0xC
A5CF8:  BLE.W           loc_A5E60
A5CFC:  LSRS            R0, R6, #1
A5CFE:  VLDR            S0, [R9,#4]
A5D02:  ADD.W           R0, R0, R0,LSL#2
A5D06:  STR             R6, [SP,#0x40+var_3C]
A5D08:  MOVS            R3, #0
A5D0A:  ADD.W           R5, R9, R0,LSL#2
A5D0E:  SUBS            R0, R6, #1
A5D10:  ADD.W           R2, R0, R0,LSL#2
A5D14:  VLDR            S4, [R5,#4]
A5D18:  ADD.W           R2, R9, R2,LSL#2
A5D1C:  VLDR            S2, [R2,#4]
A5D20:  MOVS            R2, #0
A5D22:  VCMP.F32        S4, S2
A5D26:  VMRS            APSR_nzcv, FPSCR
A5D2A:  VCMP.F32        S0, S4
A5D2E:  IT MI
A5D30:  MOVMI           R2, #1
A5D32:  VMRS            APSR_nzcv, FPSCR
A5D36:  IT PL
A5D38:  MOVPL           R3, #1
A5D3A:  EORS            R3, R2
A5D3C:  BNE             loc_A5D9A
A5D3E:  VCMP.F32        S4, S2
A5D42:  MOVS            R2, #0
A5D44:  VMRS            APSR_nzcv, FPSCR
A5D48:  VCMP.F32        S0, S2
A5D4C:  IT MI
A5D4E:  MOVMI           R2, #1
A5D50:  VMRS            APSR_nzcv, FPSCR
A5D54:  MOV.W           R3, #0
A5D58:  MOV             R4, R8
A5D5A:  IT PL
A5D5C:  MOVPL           R3, #1
A5D5E:  EORS            R3, R2
A5D60:  MOV             R2, R0
A5D62:  IT NE
A5D64:  MOVNE           R2, #0
A5D66:  ADD.W           R2, R2, R2,LSL#2
A5D6A:  ADD.W           R2, R9, R2,LSL#2
A5D6E:  MOV             R3, R2
A5D70:  VLD1.32         {D16-D17}, [R3]!
A5D74:  LDR             R6, [R3]
A5D76:  VST1.64         {D16-D17}, [R4]!
A5D7A:  STR             R6, [R4]
A5D7C:  MOV             R6, R5
A5D7E:  VLD1.32         {D16-D17}, [R6]!
A5D82:  LDR.W           R12, [R6]
A5D86:  VST1.32         {D16-D17}, [R2]
A5D8A:  STR.W           R12, [R3]
A5D8E:  VLD1.64         {D16-D17}, [R8]
A5D92:  LDR             R2, [R4]
A5D94:  STR             R2, [R6]
A5D96:  VST1.32         {D16-D17}, [R5]
A5D9A:  MOV             R2, R9
A5D9C:  MOV             R6, R8
A5D9E:  VLD1.32         {D16-D17}, [R2]!
A5DA2:  MOV             R12, R9
A5DA4:  MOVS            R1, #0x14
A5DA6:  LDR             R3, [R2]
A5DA8:  VST1.64         {D16-D17}, [R6]!
A5DAC:  STR             R3, [R6]
A5DAE:  MOV             R3, R5
A5DB0:  VLD1.32         {D16-D17}, [R3]!
A5DB4:  LDR             R3, [R3]
A5DB6:  VST1.32         {D16-D17}, [R12],R1
A5DBA:  STR             R3, [R2]
A5DBC:  MOVS            R2, #1
A5DBE:  MOV             R3, R8
A5DC0:  VLD1.32         {D16-D17}, [R3]!
A5DC4:  LDR             R3, [R3]
A5DC6:  VST1.32         {D16-D17}, [R5]!
A5DCA:  STR             R3, [R5]
A5DCC:  ADD.W           R3, R2, R2,LSL#2
A5DD0:  VLDR            S0, [R9,#4]
A5DD4:  ADD.W           R1, R11, R3,LSL#2
A5DD8:  ADD.W           R4, R10, R3,LSL#2
A5DDC:  ADD.W           R3, R9, R1
A5DE0:  ADDS            R1, #0x14
A5DE2:  ADDS            R4, #0x14
A5DE4:  ADDS            R2, #1
A5DE6:  VLDR            S2, [R3]
A5DEA:  VCMP.F32        S2, S0
A5DEE:  VMRS            APSR_nzcv, FPSCR
A5DF2:  BMI             loc_A5DDC
A5DF4:  ADD.W           R1, R0, R0,LSL#2
A5DF8:  SUBS            R3, R2, #1
A5DFA:  ADD.W           R5, R12, R1,LSL#2
A5DFE:  VLDR            S2, [R5,#-0x10]
A5E02:  SUBS            R5, #0x14
A5E04:  SUBS            R0, #1
A5E06:  VCMP.F32        S0, S2
A5E0A:  VMRS            APSR_nzcv, FPSCR
A5E0E:  BMI             loc_A5DFE
A5E10:  ADDS            R6, R0, #1
A5E12:  CMP             R3, R6
A5E14:  BGE             loc_A5E3E
A5E16:  ADD.W           R6, R9, R4
A5E1A:  MOV             R4, R8
A5E1C:  MOV             R1, R5
A5E1E:  MOV             R3, R6
A5E20:  VLD1.32         {D16-D17}, [R3]!
A5E24:  LDR.W           LR, [R3]
A5E28:  VST1.64         {D16-D17}, [R4]!
A5E2C:  STR.W           LR, [R4]
A5E30:  VLD1.32         {D16-D17}, [R1]!
A5E34:  LDR             R1, [R1]
A5E36:  VST1.32         {D16-D17}, [R6]
A5E3A:  STR             R1, [R3]
A5E3C:  B               loc_A5DBE
A5E3E:  LDR             R0, [SP,#0x40+var_3C]
A5E40:  ADD             R4, R9
A5E42:  SUBS            R0, R0, R2
A5E44:  ADDS            R1, R0, #1
A5E46:  CMP             R6, R1
A5E48:  BGE.W           loc_A5CF0
A5E4C:  MOV             R5, R1
A5E4E:  MOV             R0, R9
A5E50:  MOV             R1, R6
A5E52:  BL              sub_A5CC4
A5E56:  MOV             R6, R5
A5E58:  MOV             R9, R4
A5E5A:  CMP             R6, #0xC
A5E5C:  BGT.W           loc_A5CFC
A5E60:  LDR             R0, [SP,#0x40+var_20]
A5E62:  LDR             R1, =(__stack_chk_guard_ptr - 0xA5E68)
A5E64:  ADD             R1, PC; __stack_chk_guard_ptr
A5E66:  LDR             R1, [R1]; __stack_chk_guard
A5E68:  LDR             R1, [R1]
A5E6A:  CMP             R1, R0
A5E6C:  ITTT EQ
A5E6E:  ADDEQ           SP, SP, #0x24 ; '$'
A5E70:  POPEQ.W         {R8-R11}
A5E74:  POPEQ           {R4-R7,PC}
A5E76:  BLX             __stack_chk_fail
