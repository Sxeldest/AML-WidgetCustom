; =========================================================
; Game Engine Function: sub_81E1C
; Address            : 0x81E1C - 0x81EDA
; =========================================================

81E1C:  PUSH            {R4-R7,LR}
81E1E:  ADD             R7, SP, #0xC
81E20:  PUSH.W          {R8-R11}
81E24:  SUB             SP, SP, #0x1C
81E26:  MOV             R8, R0
81E28:  LDR             R0, =(__stack_chk_guard_ptr - 0x81E32)
81E2A:  MOV             R10, R3
81E2C:  MOV             R9, R2
81E2E:  ADD             R0, PC; __stack_chk_guard_ptr
81E30:  MOV             R4, R1
81E32:  LDR             R0, [R0]; __stack_chk_guard
81E34:  LDR             R0, [R0]
81E36:  STR             R0, [SP,#0x38+var_20]
81E38:  MOVS            R0, #0x60 ; '`'; unsigned int
81E3A:  BLX             j__Znwj; operator new(uint)
81E3E:  MOV             R11, R0
81E40:  MOV             R0, R9; s
81E42:  LDR             R6, [R4]
81E44:  BLX             strlen
81E48:  CMN.W           R0, #0x10
81E4C:  BCS             loc_81ED4
81E4E:  MOV             R5, R0
81E50:  CMP             R0, #0xB
81E52:  BCS             loc_81E64
81E54:  LSLS            R0, R5, #1
81E56:  STRB.W          R0, [SP,#0x38+var_2C]
81E5A:  ADD             R0, SP, #0x38+var_2C
81E5C:  ADD.W           R4, R0, #1
81E60:  CBNZ            R5, loc_81E86
81E62:  B               loc_81E90
81E64:  ADD.W           R0, R5, #0x10
81E68:  STR             R6, [SP,#0x38+var_30]
81E6A:  MOV             R6, R8
81E6C:  BIC.W           R8, R0, #0xF
81E70:  MOV             R0, R8; unsigned int
81E72:  BLX             j__Znwj; operator new(uint)
81E76:  MOV             R4, R0
81E78:  ORR.W           R0, R8, #1
81E7C:  MOV             R8, R6
81E7E:  STR             R5, [SP,#0x38+var_28]
81E80:  STR             R0, [SP,#0x38+var_2C]
81E82:  STR             R4, [SP,#0x38+var_24]
81E84:  LDR             R6, [SP,#0x38+var_30]
81E86:  MOV             R0, R4; dest
81E88:  MOV             R1, R9; src
81E8A:  MOV             R2, R5; n
81E8C:  BLX             j_memcpy
81E90:  MOVS            R1, #0
81E92:  LDR             R0, [R7,#arg_0]
81E94:  STRB            R1, [R4,R5]
81E96:  ADD             R2, SP, #0x38+var_2C; int
81E98:  MOV             R1, R6; int
81E9A:  LDR.W           R3, [R10]; float
81E9E:  LDRH            R0, [R0]
81EA0:  STR             R0, [SP,#0x38+var_38]; int
81EA2:  MOV             R0, R11; int
81EA4:  BL              sub_85944
81EA8:  LDRB.W          R0, [SP,#0x38+var_2C]
81EAC:  STR.W           R11, [R8]
81EB0:  LSLS            R0, R0, #0x1F
81EB2:  ITT NE
81EB4:  LDRNE           R0, [SP,#0x38+var_24]; void *
81EB6:  BLXNE           j__ZdlPv; operator delete(void *)
81EBA:  LDR             R0, [SP,#0x38+var_20]
81EBC:  LDR             R1, =(__stack_chk_guard_ptr - 0x81EC2)
81EBE:  ADD             R1, PC; __stack_chk_guard_ptr
81EC0:  LDR             R1, [R1]; __stack_chk_guard
81EC2:  LDR             R1, [R1]
81EC4:  CMP             R1, R0
81EC6:  ITTT EQ
81EC8:  ADDEQ           SP, SP, #0x1C
81ECA:  POPEQ.W         {R8-R11}
81ECE:  POPEQ           {R4-R7,PC}
81ED0:  BLX             __stack_chk_fail
81ED4:  ADD             R0, SP, #0x38+var_2C
81ED6:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
