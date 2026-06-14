; =========================================================
; Game Engine Function: sub_81C80
; Address            : 0x81C80 - 0x81D3C
; =========================================================

81C80:  PUSH            {R4-R7,LR}
81C82:  ADD             R7, SP, #0xC
81C84:  PUSH.W          {R8-R11}
81C88:  SUB             SP, SP, #0x1C
81C8A:  MOV             R8, R0
81C8C:  LDR             R0, =(__stack_chk_guard_ptr - 0x81C96)
81C8E:  MOV             R10, R3
81C90:  MOV             R9, R2
81C92:  ADD             R0, PC; __stack_chk_guard_ptr
81C94:  MOV             R4, R1
81C96:  LDR             R0, [R0]; __stack_chk_guard
81C98:  LDR             R0, [R0]
81C9A:  STR             R0, [SP,#0x38+var_20]
81C9C:  MOVS            R0, #0x68 ; 'h'; unsigned int
81C9E:  BLX             j__Znwj; operator new(uint)
81CA2:  MOV             R11, R0
81CA4:  MOV             R0, R9; s
81CA6:  LDR             R6, [R4]
81CA8:  BLX             strlen
81CAC:  CMN.W           R0, #0x10
81CB0:  BCS             loc_81D36
81CB2:  MOV             R5, R0
81CB4:  CMP             R0, #0xB
81CB6:  BCS             loc_81CC8
81CB8:  LSLS            R0, R5, #1
81CBA:  STRB.W          R0, [SP,#0x38+var_2C]
81CBE:  ADD             R0, SP, #0x38+var_2C
81CC0:  ADD.W           R4, R0, #1
81CC4:  CBNZ            R5, loc_81CEA
81CC6:  B               loc_81CF4
81CC8:  ADD.W           R0, R5, #0x10
81CCC:  STR             R6, [SP,#0x38+var_30]
81CCE:  MOV             R6, R8
81CD0:  BIC.W           R8, R0, #0xF
81CD4:  MOV             R0, R8; unsigned int
81CD6:  BLX             j__Znwj; operator new(uint)
81CDA:  MOV             R4, R0
81CDC:  ORR.W           R0, R8, #1
81CE0:  MOV             R8, R6
81CE2:  STR             R5, [SP,#0x38+var_28]
81CE4:  STR             R0, [SP,#0x38+var_2C]
81CE6:  STR             R4, [SP,#0x38+var_24]
81CE8:  LDR             R6, [SP,#0x38+var_30]
81CEA:  MOV             R0, R4; dest
81CEC:  MOV             R1, R9; src
81CEE:  MOV             R2, R5; n
81CF0:  BLX             j_memcpy
81CF4:  MOVS            R1, #0
81CF6:  LDR             R0, [R7,#arg_0]
81CF8:  STRB            R1, [R4,R5]
81CFA:  ADD             R2, SP, #0x38+var_2C; int
81CFC:  MOV             R1, R6; int
81CFE:  LDR.W           R3, [R10]; float
81D02:  STR             R0, [SP,#0x38+var_38]; int
81D04:  MOV             R0, R11; int
81D06:  BL              sub_85C48
81D0A:  LDRB.W          R0, [SP,#0x38+var_2C]
81D0E:  STR.W           R11, [R8]
81D12:  LSLS            R0, R0, #0x1F
81D14:  ITT NE
81D16:  LDRNE           R0, [SP,#0x38+var_24]; void *
81D18:  BLXNE           j__ZdlPv; operator delete(void *)
81D1C:  LDR             R0, [SP,#0x38+var_20]
81D1E:  LDR             R1, =(__stack_chk_guard_ptr - 0x81D24)
81D20:  ADD             R1, PC; __stack_chk_guard_ptr
81D22:  LDR             R1, [R1]; __stack_chk_guard
81D24:  LDR             R1, [R1]
81D26:  CMP             R1, R0
81D28:  ITTT EQ
81D2A:  ADDEQ           SP, SP, #0x1C
81D2C:  POPEQ.W         {R8-R11}
81D30:  POPEQ           {R4-R7,PC}
81D32:  BLX             __stack_chk_fail
81D36:  ADD             R0, SP, #0x38+var_2C
81D38:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
