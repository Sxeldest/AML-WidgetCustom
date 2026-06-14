; =========================================================
; Game Engine Function: sub_FE18C
; Address            : 0xFE18C - 0xFE1DA
; =========================================================

FE18C:  PUSH            {R4-R7,LR}
FE18E:  ADD             R7, SP, #0xC
FE190:  PUSH.W          {R11}
FE194:  SUB             SP, SP, #0x10
FE196:  MOV             R4, R0
FE198:  LDR             R0, =(__stack_chk_guard_ptr - 0xFE1A2)
FE19A:  MOV             R6, R1
FE19C:  MOV             R5, R2
FE19E:  ADD             R0, PC; __stack_chk_guard_ptr
FE1A0:  LDR             R0, [R0]; __stack_chk_guard
FE1A2:  LDR             R0, [R0]
FE1A4:  STR             R0, [SP,#0x20+var_14]
FE1A6:  LDRD.W          R0, R1, [R4]
FE1AA:  STRD.W          R0, R1, [SP,#0x20+var_1C]
FE1AE:  ADD             R0, SP, #0x20+var_1C
FE1B0:  MOV             R1, R6
FE1B2:  BL              sub_FF274
FE1B6:  CBZ             R0, loc_FE1C0
FE1B8:  LDR             R2, [R4]
FE1BA:  SUBS            R1, R5, R6
FE1BC:  ADD             R1, R2
FE1BE:  STR             R1, [R4]
FE1C0:  LDR             R1, [SP,#0x20+var_14]
FE1C2:  LDR             R2, =(__stack_chk_guard_ptr - 0xFE1C8)
FE1C4:  ADD             R2, PC; __stack_chk_guard_ptr
FE1C6:  LDR             R2, [R2]; __stack_chk_guard
FE1C8:  LDR             R2, [R2]
FE1CA:  CMP             R2, R1
FE1CC:  ITTT EQ
FE1CE:  ADDEQ           SP, SP, #0x10
FE1D0:  POPEQ.W         {R11}
FE1D4:  POPEQ           {R4-R7,PC}
FE1D6:  BLX             __stack_chk_fail
