; =========================================================
; Game Engine Function: sub_1EFF64
; Address            : 0x1EFF64 - 0x1EFFEE
; =========================================================

1EFF64:  PUSH            {R4-R7,LR}
1EFF66:  ADD             R7, SP, #0xC
1EFF68:  PUSH.W          {R11}
1EFF6C:  SUB             SP, SP, #0x20
1EFF6E:  MOV             R5, R0
1EFF70:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EFF78)
1EFF72:  MOV             R4, R1
1EFF74:  ADD             R0, PC; __stack_chk_guard_ptr
1EFF76:  LDR             R0, [R0]; __stack_chk_guard
1EFF78:  LDR             R0, [R0]
1EFF7A:  STR             R0, [SP,#0x30+var_14]
1EFF7C:  LDR             R0, [R5,#4]
1EFF7E:  CBZ             R0, loc_1EFFA2
1EFF80:  LDRD.W          R1, R2, [R4]
1EFF84:  STRD.W          R1, R2, [R0]
1EFF88:  LDR             R0, [SP,#0x30+var_14]
1EFF8A:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EFF90)
1EFF8C:  ADD             R1, PC; __stack_chk_guard_ptr
1EFF8E:  LDR             R1, [R1]; __stack_chk_guard
1EFF90:  LDR             R1, [R1]
1EFF92:  CMP             R1, R0
1EFF94:  ITTT EQ
1EFF96:  ADDEQ           SP, SP, #0x20 ; ' '
1EFF98:  POPEQ.W         {R11}
1EFF9C:  POPEQ           {R4-R7,PC}
1EFF9E:  BLX             __stack_chk_fail
1EFFA2:  ADD             R6, SP, #0x30+var_2C
1EFFA4:  LDR             R1, =(aIn_0 - 0x1EFFAA); "in " ...
1EFFA6:  ADD             R1, PC; "in "
1EFFA8:  MOV             R0, R6; int
1EFFAA:  BL              sub_DC6DC
1EFFAE:  LDR             R2, [R5]; s
1EFFB0:  ADD             R0, SP, #0x30+var_20; int
1EFFB2:  MOV             R1, R6; int
1EFFB4:  BL              sub_1EE6FE
1EFFB8:  ADD             R0, SP, #0x30+var_2C
1EFFBA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EFFBE:  LDRD.W          R1, R2, [R5,#8]
1EFFC2:  CMP             R1, #0
1EFFC4:  MOV             R0, R1
1EFFC6:  IT NE
1EFFC8:  MOVNE           R0, #1
1EFFCA:  CMP             R2, #0
1EFFCC:  IT NE
1EFFCE:  ADDNE           R0, #1
1EFFD0:  CBZ             R0, loc_1EFFDE
1EFFD2:  CMP             R0, #1
1EFFD4:  BNE             loc_1EFFE6
1EFFD6:  ADD             R0, SP, #0x30+var_20
1EFFD8:  MOV             R2, R4
1EFFDA:  BL              sub_1EE764
1EFFDE:  ADD             R0, SP, #0x30+var_20
1EFFE0:  MOV             R1, R4
1EFFE2:  BL              sub_1EE720
1EFFE6:  ADD             R0, SP, #0x30+var_20
1EFFE8:  MOV             R3, R4
1EFFEA:  BL              sub_1EE7B0
