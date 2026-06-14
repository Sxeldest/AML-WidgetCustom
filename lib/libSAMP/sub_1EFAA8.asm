; =========================================================
; Game Engine Function: sub_1EFAA8
; Address            : 0x1EFAA8 - 0x1EFB36
; =========================================================

1EFAA8:  PUSH            {R4-R7,LR}
1EFAAA:  ADD             R7, SP, #0xC
1EFAAC:  PUSH.W          {R11}
1EFAB0:  SUB             SP, SP, #0x20
1EFAB2:  MOV             R5, R1
1EFAB4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EFABC)
1EFAB6:  MOV             R4, R2
1EFAB8:  ADD             R1, PC; __stack_chk_guard_ptr
1EFABA:  LDR             R1, [R1]; __stack_chk_guard
1EFABC:  LDR             R1, [R1]
1EFABE:  STR             R1, [SP,#0x30+var_14]
1EFAC0:  LDR             R1, [R5,#4]
1EFAC2:  CBZ             R1, loc_1EFAEA
1EFAC4:  LDRD.W          R2, R3, [R4]
1EFAC8:  STRD.W          R2, R3, [R1]
1EFACC:  BL              sub_1EE5C6
1EFAD0:  LDR             R0, [SP,#0x30+var_14]
1EFAD2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EFAD8)
1EFAD4:  ADD             R1, PC; __stack_chk_guard_ptr
1EFAD6:  LDR             R1, [R1]; __stack_chk_guard
1EFAD8:  LDR             R1, [R1]
1EFADA:  CMP             R1, R0
1EFADC:  ITTT EQ
1EFADE:  ADDEQ           SP, SP, #0x20 ; ' '
1EFAE0:  POPEQ.W         {R11}
1EFAE4:  POPEQ           {R4-R7,PC}
1EFAE6:  BLX             __stack_chk_fail
1EFAEA:  ADD             R6, SP, #0x30+var_2C
1EFAEC:  LDR             R1, =(aIn_0 - 0x1EFAF2); "in " ...
1EFAEE:  ADD             R1, PC; "in "
1EFAF0:  MOV             R0, R6; int
1EFAF2:  BL              sub_DC6DC
1EFAF6:  LDR             R2, [R5]; s
1EFAF8:  ADD             R0, SP, #0x30+var_20; int
1EFAFA:  MOV             R1, R6; int
1EFAFC:  BL              sub_1EE6FE
1EFB00:  ADD             R0, SP, #0x30+var_2C
1EFB02:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1EFB06:  LDRD.W          R1, R2, [R5,#8]
1EFB0A:  CMP             R1, #0
1EFB0C:  MOV             R0, R1
1EFB0E:  IT NE
1EFB10:  MOVNE           R0, #1
1EFB12:  CMP             R2, #0
1EFB14:  IT NE
1EFB16:  ADDNE           R0, #1
1EFB18:  CBZ             R0, loc_1EFB26
1EFB1A:  CMP             R0, #1
1EFB1C:  BNE             loc_1EFB2E
1EFB1E:  ADD             R0, SP, #0x30+var_20
1EFB20:  MOV             R2, R4
1EFB22:  BL              sub_1EE764
1EFB26:  ADD             R0, SP, #0x30+var_20
1EFB28:  MOV             R1, R4
1EFB2A:  BL              sub_1EE720
1EFB2E:  ADD             R0, SP, #0x30+var_20
1EFB30:  MOV             R3, R4
1EFB32:  BL              sub_1EE7B0
