; =========================================================
; Game Engine Function: sub_1E3A24
; Address            : 0x1E3A24 - 0x1E3B06
; =========================================================

1E3A24:  PUSH            {R4-R7,LR}
1E3A26:  ADD             R7, SP, #0xC
1E3A28:  PUSH.W          {R8-R11}
1E3A2C:  SUB             SP, SP, #0x34
1E3A2E:  MOV             R5, R1
1E3A30:  LDR             R1, =(__stack_chk_guard_ptr - 0x1E3A3A)
1E3A32:  LDR             R6, [R7,#arg_0]
1E3A34:  MOV             R10, R3
1E3A36:  ADD             R1, PC; __stack_chk_guard_ptr
1E3A38:  CMP             R5, R2
1E3A3A:  LDR             R1, [R1]; __stack_chk_guard
1E3A3C:  LDR             R1, [R1]
1E3A3E:  STR             R1, [SP,#0x50+var_20]
1E3A40:  BEQ             loc_1E3AE8
1E3A42:  STR             R0, [SP,#0x50+var_4C]
1E3A44:  ADD             R0, SP, #0x50+var_48
1E3A46:  ADD.W           R8, R0, #0xC
1E3A4A:  ADD.W           R9, SP, #0x50+var_30
1E3A4E:  ADD             R4, SP, #0x50+var_48
1E3A50:  MOV             R11, R2
1E3A52:  ADD.W           R1, R5, #0x20 ; ' '
1E3A56:  MOV             R0, R9
1E3A58:  BL              sub_EC3AC
1E3A5C:  ADD.W           R1, R5, #0x10
1E3A60:  MOV             R0, R4
1E3A62:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1E3A66:  LDR             R0, [SP,#0x50+var_28]
1E3A68:  VLDR            D16, [SP,#0x50+var_30]
1E3A6C:  STR.W           R0, [R8,#8]
1E3A70:  VSTR            D16, [R8]
1E3A74:  MOV             R0, R10
1E3A76:  MOV             R1, R6
1E3A78:  MOV             R2, R4
1E3A7A:  MOV             R3, R4
1E3A7C:  BLX             j__ZNSt6__ndk16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE30__emplace_hint_unique_key_argsIS7_JNS_4pairIKS7_S7_EEEEENS_15__tree_iteratorIS8_PNS_11__tree_nodeIS8_PvEEiEENS_21__tree_const_iteratorIS8_SN_iEERKT_DpOT0_; std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string>>(std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,int>,std::string const&,std::pair<std::string const,std::string> &&)
1E3A80:  LDR             R1, [R0,#4]
1E3A82:  CBZ             R1, loc_1E3A90
1E3A84:  MOV             R6, R1
1E3A86:  LDR             R1, [R1]
1E3A88:  CMP             R1, #0
1E3A8A:  BNE             loc_1E3A84
1E3A8C:  B               loc_1E3A9C
1E3A8E:  LDR             R0, [R1]
1E3A90:  MOV             R1, R0
1E3A92:  LDR.W           R6, [R1,#8]!
1E3A96:  LDR             R2, [R6]
1E3A98:  CMP             R2, R0
1E3A9A:  BNE             loc_1E3A8E
1E3A9C:  LDRB.W          R0, [SP,#0x50+var_3C]
1E3AA0:  LSLS            R0, R0, #0x1F
1E3AA2:  ITT NE
1E3AA4:  LDRNE           R0, [SP,#0x50+var_34]; void *
1E3AA6:  BLXNE           j__ZdlPv; operator delete(void *)
1E3AAA:  LDRB.W          R0, [SP,#0x50+var_48]
1E3AAE:  LSLS            R0, R0, #0x1F
1E3AB0:  ITT NE
1E3AB2:  LDRNE           R0, [SP,#0x50+var_40]; void *
1E3AB4:  BLXNE           j__ZdlPv; operator delete(void *)
1E3AB8:  LDR             R0, [R5,#4]
1E3ABA:  CBZ             R0, loc_1E3AC6
1E3ABC:  MOV             R5, R0
1E3ABE:  LDR             R0, [R0]
1E3AC0:  CMP             R0, #0
1E3AC2:  BNE             loc_1E3ABC
1E3AC4:  B               loc_1E3AE2
1E3AC6:  MOV             R0, R5
1E3AC8:  LDR.W           R1, [R0,#8]!
1E3ACC:  LDR             R2, [R1]
1E3ACE:  CMP             R2, R5
1E3AD0:  MOV             R5, R1
1E3AD2:  BEQ             loc_1E3AE2
1E3AD4:  LDR             R1, [R0]
1E3AD6:  MOV             R0, R1
1E3AD8:  LDR.W           R5, [R0,#8]!
1E3ADC:  LDR             R2, [R5]
1E3ADE:  CMP             R2, R1
1E3AE0:  BNE             loc_1E3AD4
1E3AE2:  CMP             R5, R11
1E3AE4:  BNE             loc_1E3A52
1E3AE6:  LDR             R0, [SP,#0x50+var_4C]
1E3AE8:  STRD.W          R10, R6, [R0]
1E3AEC:  LDR             R0, [SP,#0x50+var_20]
1E3AEE:  LDR             R1, =(__stack_chk_guard_ptr - 0x1E3AF4)
1E3AF0:  ADD             R1, PC; __stack_chk_guard_ptr
1E3AF2:  LDR             R1, [R1]; __stack_chk_guard
1E3AF4:  LDR             R1, [R1]
1E3AF6:  CMP             R1, R0
1E3AF8:  ITTT EQ
1E3AFA:  ADDEQ           SP, SP, #0x34 ; '4'
1E3AFC:  POPEQ.W         {R8-R11}
1E3B00:  POPEQ           {R4-R7,PC}
1E3B02:  BLX             __stack_chk_fail
