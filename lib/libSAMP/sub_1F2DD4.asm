; =========================================================
; Game Engine Function: sub_1F2DD4
; Address            : 0x1F2DD4 - 0x1F2EC4
; =========================================================

1F2DD4:  PUSH            {R4-R7,LR}
1F2DD6:  ADD             R7, SP, #0xC
1F2DD8:  PUSH.W          {R8}
1F2DDC:  SUB             SP, SP, #0x40
1F2DDE:  MOV             R6, R0
1F2DE0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F2DEA)
1F2DE2:  LDR             R5, [R7,#arg_0]
1F2DE4:  MOV             R8, R2
1F2DE6:  ADD             R0, PC; __stack_chk_guard_ptr
1F2DE8:  MOV             R4, R1
1F2DEA:  LDR             R0, [R0]; __stack_chk_guard
1F2DEC:  LDR             R0, [R0]
1F2DEE:  STR             R0, [SP,#0x50+var_14]
1F2DF0:  CBZ             R5, loc_1F2DFA
1F2DF2:  LDRD.W          R0, R1, [R4]
1F2DF6:  STRD.W          R0, R1, [R5]
1F2DFA:  LDR             R0, [R4]
1F2DFC:  CBZ             R0, loc_1F2E2E
1F2DFE:  CMP             R0, #0x14
1F2E00:  IT NE
1F2E02:  CMPNE           R0, #2
1F2E04:  BNE             loc_1F2E12
1F2E06:  MOVW            R0, #0xFFFF
1F2E0A:  STR             R0, [R6,#4]
1F2E0C:  MOVS            R0, #0xFF
1F2E0E:  STRB            R0, [R6]
1F2E10:  B               loc_1F2E52
1F2E12:  CBZ             R5, loc_1F2E6C
1F2E14:  MOV             R0, R5
1F2E16:  BL              sub_1EE05A
1F2E1A:  MOVW            R0, #0xFFFF
1F2E1E:  STR             R0, [R6,#4]
1F2E20:  MOVS            R0, #0
1F2E22:  STRB            R0, [R6]
1F2E24:  LDRD.W          R0, R1, [R4]
1F2E28:  STRD.W          R0, R1, [R5]
1F2E2C:  B               loc_1F2E52
1F2E2E:  LDR             R0, [R3,#0x10]
1F2E30:  AND.W           R1, R0, #0xF000
1F2E34:  SUB.W           R1, R1, #0x1000
1F2E38:  LSRS            R2, R1, #0xE
1F2E3A:  CMP             R2, #2
1F2E3C:  BHI             loc_1F2E48
1F2E3E:  LDR             R2, =(unk_D77A5 - 0x1F2E46)
1F2E40:  LSRS            R1, R1, #0xC
1F2E42:  ADD             R2, PC; unk_D77A5
1F2E44:  LDRB            R1, [R2,R1]
1F2E46:  B               loc_1F2E4A
1F2E48:  MOVS            R1, #8
1F2E4A:  BFC.W           R0, #0xC, #0x14
1F2E4E:  STRD.W          R1, R0, [R6]
1F2E52:  LDR             R0, [SP,#0x50+var_14]
1F2E54:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F2E5A)
1F2E56:  ADD             R1, PC; __stack_chk_guard_ptr
1F2E58:  LDR             R1, [R1]; __stack_chk_guard
1F2E5A:  LDR             R1, [R1]
1F2E5C:  CMP             R1, R0
1F2E5E:  ITTT EQ
1F2E60:  ADDEQ           SP, SP, #0x40 ; '@'
1F2E62:  POPEQ.W         {R8}
1F2E66:  POPEQ           {R4-R7,PC}
1F2E68:  BLX             __stack_chk_fail
1F2E6C:  ADD             R5, SP, #0x50+var_44
1F2E6E:  LDR             R1, =(aIn_0 - 0x1F2E74); "in " ...
1F2E70:  ADD             R1, PC; "in "
1F2E72:  MOV             R0, R5; int
1F2E74:  BL              sub_DC6DC
1F2E78:  ADD             R0, SP, #0x50+var_38; int
1F2E7A:  LDR             R2, =(aPosixStat - 0x1F2E82); "posix_stat" ...
1F2E7C:  MOV             R1, R5; int
1F2E7E:  ADD             R2, PC; "posix_stat"
1F2E80:  BL              sub_1EE6FE
1F2E84:  ADD             R0, SP, #0x50+var_2C; int
1F2E86:  ADD             R1, SP, #0x50+var_38; int
1F2E88:  LDR             R2, =(asc_8B87F - 0x1F2E8E); ": " ...
1F2E8A:  ADD             R2, PC; ": "
1F2E8C:  BL              sub_1EE6FE
1F2E90:  LDR             R1, =(aFailedToDeterm - 0x1F2E98); "failed to determine attributes for the "... ...
1F2E92:  MOV             R0, SP
1F2E94:  ADD             R1, PC; "failed to determine attributes for the "...
1F2E96:  BL              sub_1F2D14
1F2E9A:  ADD             R0, SP, #0x50+var_20
1F2E9C:  ADD             R1, SP, #0x50+var_2C
1F2E9E:  MOV             R2, SP
1F2EA0:  BL              sub_1EEC44
1F2EA4:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x1F2EAA)
1F2EA6:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
1F2EA8:  LDR             R5, [R0]; std::string::~string()
1F2EAA:  MOV             R0, SP
1F2EAC:  BLX             R5; std::string::~string()
1F2EAE:  ADD             R0, SP, #0x50+var_2C
1F2EB0:  BLX             R5; std::string::~string()
1F2EB2:  ADD             R0, SP, #0x50+var_38
1F2EB4:  BLX             R5; std::string::~string()
1F2EB6:  ADD             R0, SP, #0x50+var_44
1F2EB8:  BLX             R5; std::string::~string()
1F2EBA:  ADD             R0, SP, #0x50+var_20
1F2EBC:  MOV             R1, R8
1F2EBE:  MOV             R2, R4
1F2EC0:  BL              sub_1EE764
