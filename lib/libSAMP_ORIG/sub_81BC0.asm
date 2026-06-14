; =========================================================
; Game Engine Function: sub_81BC0
; Address            : 0x81BC0 - 0x81C6C
; =========================================================

81BC0:  PUSH            {R4-R7,LR}
81BC2:  ADD             R7, SP, #0xC
81BC4:  PUSH.W          {R8-R11}
81BC8:  SUB             SP, SP, #0x14
81BCA:  MOV             R8, R0
81BCC:  LDR             R0, =(__stack_chk_guard_ptr - 0x81BD6)
81BCE:  MOV             R11, R2
81BD0:  MOV             R4, R1
81BD2:  ADD             R0, PC; __stack_chk_guard_ptr
81BD4:  LDR             R0, [R0]; __stack_chk_guard
81BD6:  LDR             R0, [R0]
81BD8:  STR             R0, [SP,#0x30+var_20]
81BDA:  MOVS            R0, #0x58 ; 'X'; unsigned int
81BDC:  BLX             j__Znwj; operator new(uint)
81BE0:  MOV             R10, R0
81BE2:  MOV             R0, R11; s
81BE4:  LDR.W           R9, [R4]
81BE8:  BLX             strlen
81BEC:  CMN.W           R0, #0x10
81BF0:  BCS             loc_81C66
81BF2:  MOV             R6, R0
81BF4:  CMP             R0, #0xB
81BF6:  BCS             loc_81C08
81BF8:  LSLS            R0, R6, #1
81BFA:  STRB.W          R0, [SP,#0x30+var_2C]
81BFE:  ADD             R0, SP, #0x30+var_2C
81C00:  ADD.W           R4, R0, #1
81C04:  CBNZ            R6, loc_81C22
81C06:  B               loc_81C2C
81C08:  ADD.W           R0, R6, #0x10
81C0C:  BIC.W           R5, R0, #0xF
81C10:  MOV             R0, R5; unsigned int
81C12:  BLX             j__Znwj; operator new(uint)
81C16:  MOV             R4, R0
81C18:  ORR.W           R0, R5, #1
81C1C:  STR             R6, [SP,#0x30+var_28]
81C1E:  STR             R0, [SP,#0x30+var_2C]
81C20:  STR             R4, [SP,#0x30+var_24]
81C22:  MOV             R0, R4; dest
81C24:  MOV             R1, R11; src
81C26:  MOV             R2, R6; n
81C28:  BLX             j_memcpy
81C2C:  MOVS            R0, #0
81C2E:  ADD             R2, SP, #0x30+var_2C
81C30:  STRB            R0, [R4,R6]
81C32:  MOV             R0, R10
81C34:  MOV             R1, R9
81C36:  BL              sub_7E024
81C3A:  LDRB.W          R0, [SP,#0x30+var_2C]
81C3E:  STR.W           R10, [R8]
81C42:  LSLS            R0, R0, #0x1F
81C44:  ITT NE
81C46:  LDRNE           R0, [SP,#0x30+var_24]; void *
81C48:  BLXNE           j__ZdlPv; operator delete(void *)
81C4C:  LDR             R0, [SP,#0x30+var_20]
81C4E:  LDR             R1, =(__stack_chk_guard_ptr - 0x81C54)
81C50:  ADD             R1, PC; __stack_chk_guard_ptr
81C52:  LDR             R1, [R1]; __stack_chk_guard
81C54:  LDR             R1, [R1]
81C56:  CMP             R1, R0
81C58:  ITTT EQ
81C5A:  ADDEQ           SP, SP, #0x14
81C5C:  POPEQ.W         {R8-R11}
81C60:  POPEQ           {R4-R7,PC}
81C62:  BLX             __stack_chk_fail
81C66:  ADD             R0, SP, #0x30+var_2C
81C68:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
