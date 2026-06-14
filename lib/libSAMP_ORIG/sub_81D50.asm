; =========================================================
; Game Engine Function: sub_81D50
; Address            : 0x81D50 - 0x81E0A
; =========================================================

81D50:  PUSH            {R4-R7,LR}
81D52:  ADD             R7, SP, #0xC
81D54:  PUSH.W          {R8-R11}
81D58:  SUB             SP, SP, #0x1C
81D5A:  MOV             R9, R0
81D5C:  LDR             R0, =(__stack_chk_guard_ptr - 0x81D66)
81D5E:  MOV             R8, R3
81D60:  MOV             R11, R2
81D62:  ADD             R0, PC; __stack_chk_guard_ptr
81D64:  MOV             R4, R1
81D66:  LDR             R0, [R0]; __stack_chk_guard
81D68:  LDR             R0, [R0]
81D6A:  STR             R0, [SP,#0x38+var_20]
81D6C:  MOVS            R0, #0x60 ; '`'; unsigned int
81D6E:  BLX             j__Znwj; operator new(uint)
81D72:  MOV             R10, R0
81D74:  MOV             R0, R11; s
81D76:  LDR             R5, [R4]
81D78:  BLX             strlen
81D7C:  CMN.W           R0, #0x10
81D80:  BCS             loc_81E04
81D82:  MOV             R6, R0
81D84:  CMP             R0, #0xB
81D86:  BCS             loc_81D98
81D88:  LSLS            R0, R6, #1
81D8A:  STRB.W          R0, [SP,#0x38+var_2C]
81D8E:  ADD             R0, SP, #0x38+var_2C
81D90:  ADD.W           R4, R0, #1
81D94:  CBNZ            R6, loc_81DB6
81D96:  B               loc_81DC0
81D98:  ADD.W           R0, R6, #0x10
81D9C:  STR             R5, [SP,#0x38+var_30]
81D9E:  BIC.W           R5, R0, #0xF
81DA2:  MOV             R0, R5; unsigned int
81DA4:  BLX             j__Znwj; operator new(uint)
81DA8:  MOV             R4, R0
81DAA:  ORR.W           R0, R5, #1
81DAE:  STR             R6, [SP,#0x38+var_28]
81DB0:  STR             R0, [SP,#0x38+var_2C]
81DB2:  STR             R4, [SP,#0x38+var_24]
81DB4:  LDR             R5, [SP,#0x38+var_30]
81DB6:  MOV             R0, R4; dest
81DB8:  MOV             R1, R11; src
81DBA:  MOV             R2, R6; n
81DBC:  BLX             j_memcpy
81DC0:  MOVS            R1, #0
81DC2:  LDR             R0, [R7,#arg_0]
81DC4:  STRB            R1, [R4,R6]
81DC6:  ADD             R2, SP, #0x38+var_2C; int
81DC8:  UXTH            R1, R5; int
81DCA:  LDR.W           R3, [R8]; float
81DCE:  LDRH            R0, [R0]
81DD0:  STR             R0, [SP,#0x38+var_38]; int
81DD2:  MOV             R0, R10; int
81DD4:  BL              sub_85DAC
81DD8:  LDRB.W          R0, [SP,#0x38+var_2C]
81DDC:  STR.W           R10, [R9]
81DE0:  LSLS            R0, R0, #0x1F
81DE2:  ITT NE
81DE4:  LDRNE           R0, [SP,#0x38+var_24]; void *
81DE6:  BLXNE           j__ZdlPv; operator delete(void *)
81DEA:  LDR             R0, [SP,#0x38+var_20]
81DEC:  LDR             R1, =(__stack_chk_guard_ptr - 0x81DF2)
81DEE:  ADD             R1, PC; __stack_chk_guard_ptr
81DF0:  LDR             R1, [R1]; __stack_chk_guard
81DF2:  LDR             R1, [R1]
81DF4:  CMP             R1, R0
81DF6:  ITTT EQ
81DF8:  ADDEQ           SP, SP, #0x1C
81DFA:  POPEQ.W         {R8-R11}
81DFE:  POPEQ           {R4-R7,PC}
81E00:  BLX             __stack_chk_fail
81E04:  ADD             R0, SP, #0x38+var_2C
81E06:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
