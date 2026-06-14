; =========================================================
; Game Engine Function: sub_200D60
; Address            : 0x200D60 - 0x200E36
; =========================================================

200D60:  PUSH            {R4-R7,LR}
200D62:  ADD             R7, SP, #0xC
200D64:  PUSH.W          {R6-R10}
200D68:  STR             R1, [SP,#0x20+var_20]
200D6A:  MOV             R5, R0
200D6C:  LDR             R0, =(__stack_chk_guard_ptr - 0x200D78)
200D6E:  MOV             R1, SP
200D70:  MOV             R10, R3
200D72:  MOV             R8, R2
200D74:  ADD             R0, PC; __stack_chk_guard_ptr
200D76:  LDR             R0, [R0]; __stack_chk_guard
200D78:  LDR             R0, [R0]
200D7A:  STR             R0, [SP,#0x20+var_1C]
200D7C:  MOV             R0, R5
200D7E:  BL              sub_1FB030
200D82:  CBZ             R0, loc_200D8A
200D84:  MOVS            R4, #0
200D86:  MOVS            R0, #6
200D88:  B               loc_200DA8
200D8A:  MOV             R0, R5
200D8C:  BL              sub_1FC808
200D90:  SXTB            R0, R0
200D92:  CMP             R0, #0
200D94:  BMI             loc_200DA4
200D96:  UXTB            R1, R0
200D98:  LDR.W           R0, [R10,#8]
200D9C:  LDRB.W          R0, [R0,R1,LSL#2]
200DA0:  LSLS            R0, R0, #0x19
200DA2:  BMI             loc_200DCC
200DA4:  MOVS            R4, #0
200DA6:  MOVS            R0, #4
200DA8:  LDR.W           R1, [R8]
200DAC:  ORRS            R0, R1
200DAE:  STR.W           R0, [R8]
200DB2:  LDR             R0, [SP,#0x20+var_1C]
200DB4:  LDR             R1, =(__stack_chk_guard_ptr - 0x200DBA)
200DB6:  ADD             R1, PC; __stack_chk_guard_ptr
200DB8:  LDR             R1, [R1]; __stack_chk_guard
200DBA:  LDR             R1, [R1]
200DBC:  CMP             R1, R0
200DBE:  ITTT EQ
200DC0:  MOVEQ           R0, R4
200DC2:  POPEQ.W         {R2,R3,R8-R10}
200DC6:  POPEQ           {R4-R7,PC}
200DC8:  BLX             __stack_chk_fail
200DCC:  LDR.W           R0, [R10]
200DD0:  MOVS            R2, #0
200DD2:  LDR             R6, [R7,#arg_0]
200DD4:  LDR             R3, [R0,#0x24]
200DD6:  MOV             R0, R10
200DD8:  BLX             R3
200DDA:  MOV             R4, R0
200DDC:  MOV             R9, SP
200DDE:  MOV             R0, R5
200DE0:  BL              sub_1FC816
200DE4:  MOV             R0, R5
200DE6:  MOV             R1, R9
200DE8:  BL              sub_1F531C
200DEC:  SUBS            R4, #0x30 ; '0'
200DEE:  CBZ             R0, loc_200E26
200DF0:  CMP             R6, #2
200DF2:  BLT             loc_200E26
200DF4:  MOV             R0, R5
200DF6:  BL              sub_1FC808
200DFA:  SXTB            R0, R0
200DFC:  CMP             R0, #0
200DFE:  BMI             loc_200DB2
200E00:  UXTB            R1, R0
200E02:  LDR.W           R0, [R10,#8]
200E06:  LDRB.W          R0, [R0,R1,LSL#2]
200E0A:  LSLS            R0, R0, #0x19
200E0C:  BPL             loc_200DB2
200E0E:  LDR.W           R0, [R10]
200E12:  MOVS            R2, #0
200E14:  LDR             R3, [R0,#0x24]
200E16:  MOV             R0, R10
200E18:  BLX             R3
200E1A:  ADD.W           R1, R4, R4,LSL#2
200E1E:  SUBS            R6, #1
200E20:  ADD.W           R4, R0, R1,LSL#1
200E24:  B               loc_200DDE
200E26:  MOV             R1, SP
200E28:  MOV             R0, R5
200E2A:  BL              sub_1FB030
200E2E:  CMP             R0, #0
200E30:  BEQ             loc_200DB2
200E32:  MOVS            R0, #2
200E34:  B               loc_200DA8
