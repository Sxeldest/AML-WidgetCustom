; =========================================================
; Game Engine Function: sub_2155E4
; Address            : 0x2155E4 - 0x215632
; =========================================================

2155E4:  PUSH            {R4-R7,LR}
2155E6:  ADD             R7, SP, #0xC
2155E8:  PUSH.W          {R11}
2155EC:  SUB             SP, SP, #0x10
2155EE:  MOV             R4, R0
2155F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x2155FA)
2155F2:  MOV             R6, R1
2155F4:  MOV             R5, R2
2155F6:  ADD             R0, PC; __stack_chk_guard_ptr
2155F8:  LDR             R0, [R0]; __stack_chk_guard
2155FA:  LDR             R0, [R0]
2155FC:  STR             R0, [SP,#0x20+var_14]
2155FE:  LDRD.W          R0, R1, [R4]
215602:  STRD.W          R0, R1, [SP,#0x20+var_1C]
215606:  ADD             R0, SP, #0x20+var_1C
215608:  MOV             R1, R6
21560A:  BL              sub_2166CC
21560E:  CBZ             R0, loc_215618
215610:  LDR             R2, [R4]
215612:  SUBS            R1, R5, R6
215614:  ADD             R1, R2
215616:  STR             R1, [R4]
215618:  LDR             R1, [SP,#0x20+var_14]
21561A:  LDR             R2, =(__stack_chk_guard_ptr - 0x215620)
21561C:  ADD             R2, PC; __stack_chk_guard_ptr
21561E:  LDR             R2, [R2]; __stack_chk_guard
215620:  LDR             R2, [R2]
215622:  CMP             R2, R1
215624:  ITTT EQ
215626:  ADDEQ           SP, SP, #0x10
215628:  POPEQ.W         {R11}
21562C:  POPEQ           {R4-R7,PC}
21562E:  BLX             __stack_chk_fail
