; =========================================================
; Game Engine Function: sub_20A6E8
; Address            : 0x20A6E8 - 0x20A74E
; =========================================================

20A6E8:  PUSH            {R4-R7,LR}
20A6EA:  ADD             R7, SP, #0xC
20A6EC:  PUSH.W          {R11}
20A6F0:  SUB             SP, SP, #0x10
20A6F2:  MOV             R4, R0
20A6F4:  LDR             R0, =(__stack_chk_guard_ptr - 0x20A6FC)
20A6F6:  MOV             R5, R1
20A6F8:  ADD             R0, PC; __stack_chk_guard_ptr
20A6FA:  LDR             R0, [R0]; __stack_chk_guard
20A6FC:  LDR             R0, [R0]
20A6FE:  STR             R0, [SP,#0x20+var_14]
20A700:  MOVS            R0, #0
20A702:  LDRB            R1, [R1]
20A704:  CBZ             R1, loc_20A734
20A706:  STR             R0, [SP,#0x20+var_18]
20A708:  MOV             R0, R5; s
20A70A:  MOV             R6, R2
20A70C:  BLX             strlen
20A710:  MOV             R2, R0
20A712:  STR             R6, [SP,#0x20+var_20]
20A714:  ADD             R0, SP, #0x20+var_1C
20A716:  ADD             R3, SP, #0x20+var_18
20A718:  MOV             R1, R5
20A71A:  BL              sub_207F50
20A71E:  MOV             R1, R0
20A720:  CMN.W           R0, #3
20A724:  ITT LS
20A726:  LDRLS           R0, [SP,#0x20+var_1C]
20A728:  STRLS           R0, [R4]
20A72A:  MOVS            R0, #0
20A72C:  CMN.W           R1, #2
20A730:  IT CC
20A732:  MOVCC           R0, #1
20A734:  LDR             R1, [SP,#0x20+var_14]
20A736:  LDR             R2, =(__stack_chk_guard_ptr - 0x20A73C)
20A738:  ADD             R2, PC; __stack_chk_guard_ptr
20A73A:  LDR             R2, [R2]; __stack_chk_guard
20A73C:  LDR             R2, [R2]
20A73E:  CMP             R2, R1
20A740:  ITTT EQ
20A742:  ADDEQ           SP, SP, #0x10
20A744:  POPEQ.W         {R11}
20A748:  POPEQ           {R4-R7,PC}
20A74A:  BLX             __stack_chk_fail
