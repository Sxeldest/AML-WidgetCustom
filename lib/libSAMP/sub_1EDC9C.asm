; =========================================================
; Game Engine Function: sub_1EDC9C
; Address            : 0x1EDC9C - 0x1EDD64
; =========================================================

1EDC9C:  PUSH            {R4-R7,LR}
1EDC9E:  ADD             R7, SP, #0xC
1EDCA0:  PUSH.W          {R8,R9,R11}
1EDCA4:  SUB             SP, SP, #0x40
1EDCA6:  MOV             R5, R0
1EDCA8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EDCB0)
1EDCAA:  MOV             R4, R1
1EDCAC:  ADD             R0, PC; __stack_chk_guard_ptr
1EDCAE:  LDR             R0, [R0]; __stack_chk_guard
1EDCB0:  LDR             R0, [R0]
1EDCB2:  STR             R0, [SP,#0x58+var_1C]
1EDCB4:  LDR             R0, [R5,#4]
1EDCB6:  CBZ             R0, loc_1EDCDA
1EDCB8:  LDRD.W          R1, R2, [R4]
1EDCBC:  STRD.W          R1, R2, [R0]
1EDCC0:  LDR             R0, [SP,#0x58+var_1C]
1EDCC2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EDCC8)
1EDCC4:  ADD             R1, PC; __stack_chk_guard_ptr
1EDCC6:  LDR             R1, [R1]; __stack_chk_guard
1EDCC8:  LDR             R1, [R1]
1EDCCA:  CMP             R1, R0
1EDCCC:  ITTT EQ
1EDCCE:  ADDEQ           SP, SP, #0x40 ; '@'
1EDCD0:  POPEQ.W         {R8,R9,R11}
1EDCD4:  POPEQ           {R4-R7,PC}
1EDCD6:  BLX             __stack_chk_fail
1EDCDA:  LDR             R1, =(aIn_0 - 0x1EDCE8); "in " ...
1EDCDC:  ADD.W           R9, SP, #0x58+var_4C
1EDCE0:  MOV             R6, R3
1EDCE2:  MOV             R8, R2
1EDCE4:  ADD             R1, PC; "in "
1EDCE6:  MOV             R0, R9; int
1EDCE8:  BL              sub_DC6DC
1EDCEC:  LDR             R2, [R5]; s
1EDCEE:  ADD             R0, SP, #0x58+var_40; int
1EDCF0:  MOV             R1, R9; int
1EDCF2:  BL              sub_1EE6FE
1EDCF6:  ADD             R0, SP, #0x58+var_34; int
1EDCF8:  ADD             R1, SP, #0x58+var_40; int
1EDCFA:  LDR             R2, =(asc_8B87F - 0x1EDD00); ": " ...
1EDCFC:  ADD             R2, PC; ": "
1EDCFE:  BL              sub_1EE6FE
1EDD02:  LDRB            R0, [R6]
1EDD04:  LDR             R2, [R6,#8]
1EDD06:  LSLS            R0, R0, #0x1F
1EDD08:  IT EQ
1EDD0A:  ADDEQ           R2, R6, #1
1EDD0C:  MOV             R0, SP
1EDD0E:  MOV             R1, R8
1EDD10:  BL              sub_1EEC64
1EDD14:  ADD             R0, SP, #0x58+var_28
1EDD16:  ADD             R1, SP, #0x58+var_34
1EDD18:  MOV             R2, SP
1EDD1A:  BL              sub_1EEC44
1EDD1E:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x1EDD24)
1EDD20:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
1EDD22:  LDR             R6, [R0]; std::string::~string()
1EDD24:  MOV             R0, SP
1EDD26:  BLX             R6; std::string::~string()
1EDD28:  ADD             R0, SP, #0x58+var_34
1EDD2A:  BLX             R6; std::string::~string()
1EDD2C:  ADD             R0, SP, #0x58+var_40
1EDD2E:  BLX             R6; std::string::~string()
1EDD30:  ADD             R0, SP, #0x58+var_4C
1EDD32:  BLX             R6; std::string::~string()
1EDD34:  LDRD.W          R1, R2, [R5,#8]
1EDD38:  CMP             R1, #0
1EDD3A:  MOV             R0, R1
1EDD3C:  IT NE
1EDD3E:  MOVNE           R0, #1
1EDD40:  CMP             R2, #0
1EDD42:  IT NE
1EDD44:  ADDNE           R0, #1
1EDD46:  CBZ             R0, loc_1EDD54
1EDD48:  CMP             R0, #1
1EDD4A:  BNE             loc_1EDD5C
1EDD4C:  ADD             R0, SP, #0x58+var_28
1EDD4E:  MOV             R2, R4
1EDD50:  BL              sub_1EE764
1EDD54:  ADD             R0, SP, #0x58+var_28
1EDD56:  MOV             R1, R4
1EDD58:  BL              sub_1EE720
1EDD5C:  ADD             R0, SP, #0x58+var_28
1EDD5E:  MOV             R3, R4
1EDD60:  BL              sub_1EE7B0
