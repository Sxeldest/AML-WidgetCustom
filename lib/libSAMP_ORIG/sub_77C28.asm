; =========================================================
; Game Engine Function: sub_77C28
; Address            : 0x77C28 - 0x77CB8
; =========================================================

77C28:  PUSH            {R4-R7,LR}
77C2A:  ADD             R7, SP, #0xC
77C2C:  PUSH.W          {R8,R9,R11}
77C30:  SUB             SP, SP, #8
77C32:  MOV             R8, R0
77C34:  LDR             R0, =(__stack_chk_guard_ptr - 0x77C3E)
77C36:  MOV             R5, R1
77C38:  MOV             R1, SP
77C3A:  ADD             R0, PC; __stack_chk_guard_ptr
77C3C:  LDR             R0, [R0]; __stack_chk_guard
77C3E:  LDR             R0, [R0]
77C40:  STR             R0, [SP,#0x20+var_1C]
77C42:  MOV             R0, R5
77C44:  BL              sub_77CCC
77C48:  LDR             R6, [R0]
77C4A:  CBZ             R6, loc_77C50
77C4C:  MOVS            R0, #0
77C4E:  B               loc_77C96
77C50:  MOV             R4, R0
77C52:  MOVS            R0, #0x28 ; '('; unsigned int
77C54:  LDR.W           R9, [R7,#arg_0]
77C58:  BLX             j__Znwj; operator new(uint)
77C5C:  LDR.W           R1, [R9]
77C60:  MOV             R6, R0
77C62:  ADDS            R0, #0x10
77C64:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
77C68:  MOVS            R1, #0
77C6A:  LDR             R0, [SP,#0x20+var_20]
77C6C:  STRD.W          R1, R1, [R6,#0x1C]
77C70:  STR             R1, [R6,#0x24]
77C72:  STRD.W          R1, R1, [R6]
77C76:  STR             R0, [R6,#8]
77C78:  STR             R6, [R4]
77C7A:  LDR             R0, [R5]
77C7C:  LDR             R0, [R0]
77C7E:  CMP             R0, #0
77C80:  ITTE NE
77C82:  STRNE           R0, [R5]
77C84:  LDRNE           R1, [R4]
77C86:  MOVEQ           R1, R6
77C88:  LDR             R0, [R5,#4]
77C8A:  BL              sub_77D8A
77C8E:  LDR             R0, [R5,#8]
77C90:  ADDS            R0, #1
77C92:  STR             R0, [R5,#8]
77C94:  MOVS            R0, #1
77C96:  STRB.W          R0, [R8,#4]
77C9A:  STR.W           R6, [R8]
77C9E:  LDR             R0, [SP,#0x20+var_1C]
77CA0:  LDR             R1, =(__stack_chk_guard_ptr - 0x77CA6)
77CA2:  ADD             R1, PC; __stack_chk_guard_ptr
77CA4:  LDR             R1, [R1]; __stack_chk_guard
77CA6:  LDR             R1, [R1]
77CA8:  CMP             R1, R0
77CAA:  ITTT EQ
77CAC:  ADDEQ           SP, SP, #8
77CAE:  POPEQ.W         {R8,R9,R11}
77CB2:  POPEQ           {R4-R7,PC}
77CB4:  BLX             __stack_chk_fail
