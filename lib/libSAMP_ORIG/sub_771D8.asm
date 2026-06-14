; =========================================================
; Game Engine Function: sub_771D8
; Address            : 0x771D8 - 0x77292
; =========================================================

771D8:  PUSH            {R4,R5,R7,LR}
771DA:  ADD             R7, SP, #8
771DC:  VPUSH           {D8-D9}
771E0:  SUB             SP, SP, #0x40
771E2:  MOV             R5, R0
771E4:  LDR             R0, =(__stack_chk_guard_ptr - 0x771EC)
771E6:  MOV             R4, R2
771E8:  ADD             R0, PC; __stack_chk_guard_ptr
771EA:  LDR             R0, [R0]; __stack_chk_guard
771EC:  LDR             R0, [R0]
771EE:  STR             R0, [SP,#0x58+var_1C]
771F0:  ADD             R0, SP, #0x58+var_34
771F2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
771F6:  ADD             R0, SP, #0x58+var_40
771F8:  MOV             R1, R4
771FA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
771FE:  MOVS            R0, #0
77200:  STRH.W          R0, [SP,#0x58+var_4C]
77204:  ADD             R4, SP, #0x58+var_28
77206:  ADD             R0, SP, #0x58+var_4C
77208:  ADD             R2, SP, #0x58+var_34
7720A:  ADD             R3, SP, #0x58+var_40
7720C:  STR             R0, [SP,#0x58+var_58]
7720E:  MOV             R0, R4
77210:  MOV             R1, R5
77212:  BL              sub_773B8
77216:  LDRB.W          R0, [SP,#0x58+var_4C]
7721A:  LSLS            R0, R0, #0x1F
7721C:  ITT NE
7721E:  LDRNE           R0, [SP,#0x58+var_44]; void *
77220:  BLXNE           j__ZdlPv; operator delete(void *)
77224:  LDRB.W          R0, [SP,#0x58+var_40]
77228:  LSLS            R0, R0, #0x1F
7722A:  ITT NE
7722C:  LDRNE           R0, [SP,#0x58+var_38]; void *
7722E:  BLXNE           j__ZdlPv; operator delete(void *)
77232:  LDRB.W          R0, [SP,#0x58+var_34]
77236:  LSLS            R0, R0, #0x1F
77238:  ITT NE
7723A:  LDRNE           R0, [SP,#0x58+var_2C]; void *
7723C:  BLXNE           j__ZdlPv; operator delete(void *)
77240:  LDRB.W          R0, [SP,#0x58+var_28]
77244:  ADD             R1, SP, #0x58+endptr; endptr
77246:  LDR             R5, [SP,#0x58+var_20]
77248:  VLDR            D8, [R7,#arg_0]
7724C:  LSLS            R0, R0, #0x1F
7724E:  IT EQ
77250:  ADDEQ           R5, R4, #1
77252:  MOV             R0, R5; nptr
77254:  BLX             strtod
77258:  LDRB.W          R2, [SP,#0x58+var_28]
7725C:  VMOV            D9, R0, R1
77260:  LDR             R4, [SP,#0x58+endptr]
77262:  LSLS            R0, R2, #0x1F
77264:  ITT NE
77266:  LDRNE           R0, [SP,#0x58+var_20]; void *
77268:  BLXNE           j__ZdlPv; operator delete(void *)
7726C:  CMP             R4, R5
7726E:  IT HI
77270:  VMOVHI.F64      D8, D9
77274:  LDR             R0, [SP,#0x58+var_1C]
77276:  LDR             R1, =(__stack_chk_guard_ptr - 0x7727C)
77278:  ADD             R1, PC; __stack_chk_guard_ptr
7727A:  LDR             R1, [R1]; __stack_chk_guard
7727C:  LDR             R1, [R1]
7727E:  CMP             R1, R0
77280:  ITTTT EQ
77282:  VMOVEQ          R0, R1, D8
77286:  ADDEQ           SP, SP, #0x40 ; '@'
77288:  VPOPEQ          {D8-D9}
7728C:  POPEQ           {R4,R5,R7,PC}
7728E:  BLX             __stack_chk_fail
