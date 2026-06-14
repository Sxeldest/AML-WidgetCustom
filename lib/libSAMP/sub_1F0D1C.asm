; =========================================================
; Game Engine Function: sub_1F0D1C
; Address            : 0x1F0D1C - 0x1F0DA6
; =========================================================

1F0D1C:  PUSH            {R4-R7,LR}
1F0D1E:  ADD             R7, SP, #0xC
1F0D20:  PUSH.W          {R11}
1F0D24:  SUB             SP, SP, #0x20
1F0D26:  MOV             R5, R0
1F0D28:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F0D30)
1F0D2A:  MOV             R4, R1
1F0D2C:  ADD             R0, PC; __stack_chk_guard_ptr
1F0D2E:  LDR             R0, [R0]; __stack_chk_guard
1F0D30:  LDR             R0, [R0]
1F0D32:  STR             R0, [SP,#0x30+var_14]
1F0D34:  LDR             R0, [R5,#4]
1F0D36:  CBZ             R0, loc_1F0D5A
1F0D38:  LDRD.W          R1, R2, [R4]
1F0D3C:  STRD.W          R1, R2, [R0]
1F0D40:  LDR             R0, [SP,#0x30+var_14]
1F0D42:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F0D48)
1F0D44:  ADD             R1, PC; __stack_chk_guard_ptr
1F0D46:  LDR             R1, [R1]; __stack_chk_guard
1F0D48:  LDR             R1, [R1]
1F0D4A:  CMP             R1, R0
1F0D4C:  ITTT EQ
1F0D4E:  ADDEQ           SP, SP, #0x20 ; ' '
1F0D50:  POPEQ.W         {R11}
1F0D54:  POPEQ           {R4-R7,PC}
1F0D56:  BLX             __stack_chk_fail
1F0D5A:  ADD             R6, SP, #0x30+var_2C
1F0D5C:  LDR             R1, =(aIn_0 - 0x1F0D62); "in " ...
1F0D5E:  ADD             R1, PC; "in "
1F0D60:  MOV             R0, R6; int
1F0D62:  BL              sub_DC6DC
1F0D66:  LDR             R2, [R5]; s
1F0D68:  ADD             R0, SP, #0x30+var_20; int
1F0D6A:  MOV             R1, R6; int
1F0D6C:  BL              sub_1EE6FE
1F0D70:  ADD             R0, SP, #0x30+var_2C
1F0D72:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev; std::string::~string()
1F0D76:  LDRD.W          R1, R2, [R5,#8]
1F0D7A:  CMP             R1, #0
1F0D7C:  MOV             R0, R1
1F0D7E:  IT NE
1F0D80:  MOVNE           R0, #1
1F0D82:  CMP             R2, #0
1F0D84:  IT NE
1F0D86:  ADDNE           R0, #1
1F0D88:  CBZ             R0, loc_1F0D96
1F0D8A:  CMP             R0, #1
1F0D8C:  BNE             loc_1F0D9E
1F0D8E:  ADD             R0, SP, #0x30+var_20
1F0D90:  MOV             R2, R4
1F0D92:  BL              sub_1EE764
1F0D96:  ADD             R0, SP, #0x30+var_20
1F0D98:  MOV             R1, R4
1F0D9A:  BL              sub_1EE720
1F0D9E:  ADD             R0, SP, #0x30+var_20
1F0DA0:  MOV             R3, R4
1F0DA2:  BL              sub_1EE7B0
