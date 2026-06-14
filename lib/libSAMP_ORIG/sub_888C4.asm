; =========================================================
; Game Engine Function: sub_888C4
; Address            : 0x888C4 - 0x88924
; =========================================================

888C4:  PUSH            {R4-R7,LR}
888C6:  ADD             R7, SP, #0xC
888C8:  PUSH.W          {R8}
888CC:  SUB             SP, SP, #8
888CE:  MOV             R5, R0
888D0:  LDR             R0, =(__stack_chk_guard_ptr - 0x888DA)
888D2:  MOV             R4, R1
888D4:  MOVS            R1, #0
888D6:  ADD             R0, PC; __stack_chk_guard_ptr
888D8:  MOV             R8, SP
888DA:  LDR             R0, [R0]; __stack_chk_guard
888DC:  LDR             R0, [R0]
888DE:  STR             R0, [SP,#0x18+var_14]
888E0:  MOV             R6, R1
888E2:  CBZ             R4, loc_888E8
888E4:  CMP             R5, R4
888E6:  BCS             loc_88908
888E8:  LDRB            R0, [R5]
888EA:  CBZ             R0, loc_88908
888EC:  MOV             R0, R8
888EE:  MOV             R1, R5
888F0:  MOV             R2, R4
888F2:  BL              sub_88448
888F6:  LDR             R2, [SP,#0x18+var_18]
888F8:  MOV             R1, R6
888FA:  ADD             R5, R0
888FC:  CMP.W           R2, #0x10000
88900:  IT CC
88902:  ADDCC           R1, #1
88904:  CMP             R2, #0
88906:  BNE             loc_888E0
88908:  LDR             R0, [SP,#0x18+var_14]
8890A:  LDR             R1, =(__stack_chk_guard_ptr - 0x88910)
8890C:  ADD             R1, PC; __stack_chk_guard_ptr
8890E:  LDR             R1, [R1]; __stack_chk_guard
88910:  LDR             R1, [R1]
88912:  CMP             R1, R0
88914:  ITTTT EQ
88916:  MOVEQ           R0, R6
88918:  ADDEQ           SP, SP, #8
8891A:  POPEQ.W         {R8}
8891E:  POPEQ           {R4-R7,PC}
88920:  BLX             __stack_chk_fail
