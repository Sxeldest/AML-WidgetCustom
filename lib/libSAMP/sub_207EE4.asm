; =========================================================
; Game Engine Function: sub_207EE4
; Address            : 0x207EE4 - 0x207F3C
; =========================================================

207EE4:  PUSH            {R4-R7,LR}
207EE6:  ADD             R7, SP, #0xC
207EE8:  PUSH.W          {R8}
207EEC:  SUB             SP, SP, #0x10
207EEE:  MOV             R4, R0
207EF0:  LDR             R0, =(__stack_chk_guard_ptr - 0x207EFA)
207EF2:  MOV             R8, R3
207EF4:  MOV             R5, R2
207EF6:  ADD             R0, PC; __stack_chk_guard_ptr
207EF8:  MOV             R6, R1
207EFA:  LDR             R0, [R0]; __stack_chk_guard
207EFC:  LDR             R0, [R0]
207EFE:  STR             R0, [SP,#0x20+var_14]
207F00:  LDR             R0, [R7,#arg_4]
207F02:  BL              sub_21FCA0
207F06:  STR             R0, [SP,#0x20+var_18]
207F08:  LDR             R0, [R7,#arg_0]
207F0A:  MOV             R1, R6
207F0C:  STR             R0, [SP,#0x20+var_20]
207F0E:  MOV             R0, R4
207F10:  MOV             R2, R5
207F12:  MOV             R3, R8
207F14:  BL              sub_21FE70
207F18:  MOV             R4, R0
207F1A:  ADD             R0, SP, #0x20+var_18
207F1C:  BL              sub_20E0DC
207F20:  LDR             R0, [SP,#0x20+var_14]
207F22:  LDR             R1, =(__stack_chk_guard_ptr - 0x207F28)
207F24:  ADD             R1, PC; __stack_chk_guard_ptr
207F26:  LDR             R1, [R1]; __stack_chk_guard
207F28:  LDR             R1, [R1]
207F2A:  CMP             R1, R0
207F2C:  ITTTT EQ
207F2E:  MOVEQ           R0, R4
207F30:  ADDEQ           SP, SP, #0x10
207F32:  POPEQ.W         {R8}
207F36:  POPEQ           {R4-R7,PC}
207F38:  BLX             __stack_chk_fail
