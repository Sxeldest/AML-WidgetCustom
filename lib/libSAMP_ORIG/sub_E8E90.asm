; =========================================================
; Game Engine Function: sub_E8E90
; Address            : 0xE8E90 - 0xE8F66
; =========================================================

E8E90:  PUSH            {R4-R7,LR}
E8E92:  ADD             R7, SP, #0xC
E8E94:  PUSH.W          {R6-R10}
E8E98:  STR             R1, [SP,#0x20+var_20]
E8E9A:  MOV             R5, R0
E8E9C:  LDR             R0, =(__stack_chk_guard_ptr - 0xE8EA8)
E8E9E:  MOV             R1, SP
E8EA0:  MOV             R10, R3
E8EA2:  MOV             R8, R2
E8EA4:  ADD             R0, PC; __stack_chk_guard_ptr
E8EA6:  LDR             R0, [R0]; __stack_chk_guard
E8EA8:  LDR             R0, [R0]
E8EAA:  STR             R0, [SP,#0x20+var_1C]
E8EAC:  MOV             R0, R5
E8EAE:  BL              sub_E2F64
E8EB2:  CBZ             R0, loc_E8EBA
E8EB4:  MOVS            R4, #0
E8EB6:  MOVS            R0, #6
E8EB8:  B               loc_E8ED8
E8EBA:  MOV             R0, R5
E8EBC:  BL              sub_E483C
E8EC0:  SXTB            R0, R0
E8EC2:  CMP             R0, #0
E8EC4:  BMI             loc_E8ED4
E8EC6:  UXTB            R1, R0
E8EC8:  LDR.W           R0, [R10,#8]
E8ECC:  LDRB.W          R0, [R0,R1,LSL#2]
E8ED0:  LSLS            R0, R0, #0x19
E8ED2:  BMI             loc_E8EFC
E8ED4:  MOVS            R4, #0
E8ED6:  MOVS            R0, #4
E8ED8:  LDR.W           R1, [R8]
E8EDC:  ORRS            R0, R1
E8EDE:  STR.W           R0, [R8]
E8EE2:  LDR             R0, [SP,#0x20+var_1C]
E8EE4:  LDR             R1, =(__stack_chk_guard_ptr - 0xE8EEA)
E8EE6:  ADD             R1, PC; __stack_chk_guard_ptr
E8EE8:  LDR             R1, [R1]; __stack_chk_guard
E8EEA:  LDR             R1, [R1]
E8EEC:  CMP             R1, R0
E8EEE:  ITTT EQ
E8EF0:  MOVEQ           R0, R4
E8EF2:  POPEQ.W         {R2,R3,R8-R10}
E8EF6:  POPEQ           {R4-R7,PC}
E8EF8:  BLX             __stack_chk_fail
E8EFC:  LDR.W           R0, [R10]
E8F00:  MOVS            R2, #0
E8F02:  LDR             R6, [R7,#arg_0]
E8F04:  LDR             R3, [R0,#0x24]
E8F06:  MOV             R0, R10
E8F08:  BLX             R3
E8F0A:  MOV             R4, R0
E8F0C:  MOV             R9, SP
E8F0E:  MOV             R0, R5
E8F10:  BL              sub_E484A
E8F14:  MOV             R0, R5
E8F16:  MOV             R1, R9
E8F18:  BL              sub_DD238
E8F1C:  SUBS            R4, #0x30 ; '0'
E8F1E:  CBZ             R0, loc_E8F56
E8F20:  CMP             R6, #2
E8F22:  BLT             loc_E8F56
E8F24:  MOV             R0, R5
E8F26:  BL              sub_E483C
E8F2A:  SXTB            R0, R0
E8F2C:  CMP             R0, #0
E8F2E:  BMI             loc_E8EE2
E8F30:  UXTB            R1, R0
E8F32:  LDR.W           R0, [R10,#8]
E8F36:  LDRB.W          R0, [R0,R1,LSL#2]
E8F3A:  LSLS            R0, R0, #0x19
E8F3C:  BPL             loc_E8EE2
E8F3E:  LDR.W           R0, [R10]
E8F42:  MOVS            R2, #0
E8F44:  LDR             R3, [R0,#0x24]
E8F46:  MOV             R0, R10
E8F48:  BLX             R3
E8F4A:  ADD.W           R1, R4, R4,LSL#2
E8F4E:  SUBS            R6, #1
E8F50:  ADD.W           R4, R0, R1,LSL#1
E8F54:  B               loc_E8F0E
E8F56:  MOV             R1, SP
E8F58:  MOV             R0, R5
E8F5A:  BL              sub_E2F64
E8F5E:  CMP             R0, #0
E8F60:  BEQ             loc_E8EE2
E8F62:  MOVS            R0, #2
E8F64:  B               loc_E8ED8
