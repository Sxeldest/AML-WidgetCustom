; =========================================================
; Game Engine Function: sub_1EEE78
; Address            : 0x1EEE78 - 0x1EEF06
; =========================================================

1EEE78:  PUSH            {R4,R6,R7,LR}
1EEE7A:  ADD             R7, SP, #8
1EEE7C:  SUB             SP, SP, #0x18
1EEE7E:  MOV             R4, R0
1EEE80:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EEE88)
1EEE82:  MOV             R1, R4
1EEE84:  ADD             R0, PC; __stack_chk_guard_ptr
1EEE86:  LDR             R0, [R0]; __stack_chk_guard
1EEE88:  LDR             R0, [R0]
1EEE8A:  STR             R0, [SP,#0x20+var_C]
1EEE8C:  ADD             R0, SP, #0x20+var_14
1EEE8E:  BL              sub_1EEF10
1EEE92:  ADD             R0, SP, #0x20+var_1C
1EEE94:  MOV             R1, R4
1EEE96:  BL              sub_1EEF50
1EEE9A:  LDR             R0, [SP,#0x20+var_10]
1EEE9C:  LDR             R1, [SP,#0x20+var_18]
1EEE9E:  CMP             R0, R1
1EEEA0:  BEQ             loc_1EEEC2
1EEEA2:  BL              sub_1EDFDC
1EEEA6:  LDRD.W          R1, R0, [SP,#0x20+var_14]
1EEEAA:  ADDS            R0, #0x48 ; 'H'
1EEEAC:  STR             R0, [SP,#0x20+var_10]
1EEEAE:  LDR             R2, [R1]
1EEEB0:  SUBS            R2, R0, R2
1EEEB2:  CMP.W           R2, #0xFC0
1EEEB6:  ITT EQ
1EEEB8:  LDREQ.W         R0, [R1,#4]!
1EEEBC:  STRDEQ.W        R1, R0, [SP,#0x20+var_14]
1EEEC0:  B               loc_1EEE9C
1EEEC2:  MOVS            R0, #0
1EEEC4:  STR             R0, [R4,#0x14]
1EEEC6:  LDR             R0, [R4,#4]
1EEEC8:  LDR             R1, [R4,#8]
1EEECA:  SUBS            R1, R1, R0
1EEECC:  CMP             R1, #9
1EEECE:  BCC             loc_1EEEDE
1EEED0:  LDR             R0, [R0]; void *
1EEED2:  BLX             j__ZdlPv; operator delete(void *)
1EEED6:  LDR             R0, [R4,#4]
1EEED8:  ADDS            R0, #4
1EEEDA:  STR             R0, [R4,#4]
1EEEDC:  B               loc_1EEEC8
1EEEDE:  LSRS            R0, R1, #2
1EEEE0:  CMP             R0, #1
1EEEE2:  BEQ             loc_1EEEEC
1EEEE4:  CMP             R0, #2
1EEEE6:  BNE             loc_1EEEF0
1EEEE8:  MOVS            R0, #0x38 ; '8'
1EEEEA:  B               loc_1EEEEE
1EEEEC:  MOVS            R0, #0x1C
1EEEEE:  STR             R0, [R4,#0x10]
1EEEF0:  LDR             R0, [SP,#0x20+var_C]
1EEEF2:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EEEF8)
1EEEF4:  ADD             R1, PC; __stack_chk_guard_ptr
1EEEF6:  LDR             R1, [R1]; __stack_chk_guard
1EEEF8:  LDR             R1, [R1]
1EEEFA:  CMP             R1, R0
1EEEFC:  ITT EQ
1EEEFE:  ADDEQ           SP, SP, #0x18
1EEF00:  POPEQ           {R4,R6,R7,PC}
1EEF02:  BLX             __stack_chk_fail
