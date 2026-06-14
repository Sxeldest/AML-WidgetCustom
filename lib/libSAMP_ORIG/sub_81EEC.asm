; =========================================================
; Game Engine Function: sub_81EEC
; Address            : 0x81EEC - 0x81FAA
; =========================================================

81EEC:  PUSH            {R4-R7,LR}
81EEE:  ADD             R7, SP, #0xC
81EF0:  PUSH.W          {R8-R11}
81EF4:  SUB             SP, SP, #0x1C
81EF6:  MOV             R8, R0
81EF8:  LDR             R0, =(__stack_chk_guard_ptr - 0x81F02)
81EFA:  MOV             R10, R3
81EFC:  MOV             R9, R2
81EFE:  ADD             R0, PC; __stack_chk_guard_ptr
81F00:  MOV             R4, R1
81F02:  LDR             R0, [R0]; __stack_chk_guard
81F04:  LDR             R0, [R0]
81F06:  STR             R0, [SP,#0x38+var_20]
81F08:  MOVS            R0, #0x60 ; '`'; unsigned int
81F0A:  BLX             j__Znwj; operator new(uint)
81F0E:  MOV             R11, R0
81F10:  MOV             R0, R9; s
81F12:  LDR             R6, [R4]
81F14:  BLX             strlen
81F18:  CMN.W           R0, #0x10
81F1C:  BCS             loc_81FA4
81F1E:  MOV             R5, R0
81F20:  CMP             R0, #0xB
81F22:  BCS             loc_81F34
81F24:  LSLS            R0, R5, #1
81F26:  STRB.W          R0, [SP,#0x38+var_2C]
81F2A:  ADD             R0, SP, #0x38+var_2C
81F2C:  ADD.W           R4, R0, #1
81F30:  CBNZ            R5, loc_81F56
81F32:  B               loc_81F60
81F34:  ADD.W           R0, R5, #0x10
81F38:  STR             R6, [SP,#0x38+var_30]
81F3A:  MOV             R6, R8
81F3C:  BIC.W           R8, R0, #0xF
81F40:  MOV             R0, R8; unsigned int
81F42:  BLX             j__Znwj; operator new(uint)
81F46:  MOV             R4, R0
81F48:  ORR.W           R0, R8, #1
81F4C:  MOV             R8, R6
81F4E:  STR             R5, [SP,#0x38+var_28]
81F50:  STR             R0, [SP,#0x38+var_2C]
81F52:  STR             R4, [SP,#0x38+var_24]
81F54:  LDR             R6, [SP,#0x38+var_30]
81F56:  MOV             R0, R4; dest
81F58:  MOV             R1, R9; src
81F5A:  MOV             R2, R5; n
81F5C:  BLX             j_memcpy
81F60:  MOVS            R1, #0
81F62:  LDR             R0, [R7,#arg_0]
81F64:  STRB            R1, [R4,R5]
81F66:  ADD             R2, SP, #0x38+var_2C; int
81F68:  MOV             R1, R6; int
81F6A:  LDR.W           R3, [R10]; float
81F6E:  LDRH            R0, [R0]
81F70:  STR             R0, [SP,#0x38+var_38]; int
81F72:  MOV             R0, R11; int
81F74:  BL              sub_8566C
81F78:  LDRB.W          R0, [SP,#0x38+var_2C]
81F7C:  STR.W           R11, [R8]
81F80:  LSLS            R0, R0, #0x1F
81F82:  ITT NE
81F84:  LDRNE           R0, [SP,#0x38+var_24]; void *
81F86:  BLXNE           j__ZdlPv; operator delete(void *)
81F8A:  LDR             R0, [SP,#0x38+var_20]
81F8C:  LDR             R1, =(__stack_chk_guard_ptr - 0x81F92)
81F8E:  ADD             R1, PC; __stack_chk_guard_ptr
81F90:  LDR             R1, [R1]; __stack_chk_guard
81F92:  LDR             R1, [R1]
81F94:  CMP             R1, R0
81F96:  ITTT EQ
81F98:  ADDEQ           SP, SP, #0x1C
81F9A:  POPEQ.W         {R8-R11}
81F9E:  POPEQ           {R4-R7,PC}
81FA0:  BLX             __stack_chk_fail
81FA4:  ADD             R0, SP, #0x38+var_2C
81FA6:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
