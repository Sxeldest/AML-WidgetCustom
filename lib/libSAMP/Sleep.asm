; =========================================================
; Game Engine Function: Sleep
; Address            : 0x1C0A3C - 0x1C0B0C
; =========================================================

1C0A3C:  PUSH            {R4-R6,R10,R11,LR}
1C0A40:  ADD             R11, SP, #0x10
1C0A44:  SUB             SP, SP, #0x18
1C0A48:  MOVW            R1, #:lower16:loc_F4240
1C0A4C:  MOVW            R6, #:lower16:(stru_44B7C.r_info+3)
1C0A50:  MOVT            R1, #:upper16:loc_F4240
1C0A54:  MOVT            R6, #:upper16:(stru_44B7C.r_info+3)
1C0A58:  MUL             R1, R0, R1
1C0A5C:  LDR             R2, =(__stack_chk_guard_ptr - 0x1C0A68)
1C0A60:  LDR             R2, [PC,R2]; __stack_chk_guard
1C0A64:  MOV             R3, R1,LSR#9
1C0A68:  UMULL           R3, R6, R3, R6
1C0A6C:  MOV             R3, #0x10624DD3
1C0A74:  UMULL           R0, R3, R0, R3
1C0A78:  LDR             R0, [R2]
1C0A7C:  STR             R0, [SP,#0x28+var_14]
1C0A80:  MOV             R2, R6,LSR#7
1C0A84:  MOV             R6, #0x3B9ACA00
1C0A8C:  MLS             R1, R2, R6, R1
1C0A90:  MOV             R0, R3,LSR#6
1C0A94:  STR             R0, [SP,#0x28+var_20]
1C0A98:  ADD             R0, SP, #0x28+var_20; requested_time
1C0A9C:  STR             R1, [SP,#0x28+var_1C]
1C0AA0:  MOV             R1, SP; remaining
1C0AA4:  BL              nanosleep
1C0AA8:  CMN             R0, #1
1C0AAC:  BNE             loc_1C0AEC
1C0AB0:  BL              __errno
1C0AB4:  ADD             R5, SP, #0x28+var_20
1C0AB8:  MOV             R4, R0
1C0ABC:  MOV             R6, SP
1C0AC0:  LDR             R0, [R4]
1C0AC4:  CMP             R0, #4
1C0AC8:  BNE             loc_1C0AEC
1C0ACC:  LDMFD           SP, {R0,R1}
1C0AD0:  STR             R1, [SP,#0x28+var_1C]
1C0AD4:  MOV             R1, R6; remaining
1C0AD8:  STR             R0, [SP,#0x28+var_20]
1C0ADC:  MOV             R0, R5; requested_time
1C0AE0:  BL              nanosleep
1C0AE4:  CMN             R0, #1
1C0AE8:  BEQ             loc_1C0AC0
1C0AEC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0AFC)
1C0AF0:  LDR             R1, [SP,#0x28+var_14]
1C0AF4:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0AF8:  LDR             R0, [R0]
1C0AFC:  SUBS            R0, R0, R1
1C0B00:  SUBEQ           SP, R11, #0x10
1C0B04:  POPEQ           {R4-R6,R10,R11,PC}
1C0B08:  BL              __stack_chk_fail
