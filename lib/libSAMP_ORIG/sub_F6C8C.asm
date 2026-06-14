; =========================================================
; Game Engine Function: sub_F6C8C
; Address            : 0xF6C8C - 0xF6D22
; =========================================================

F6C8C:  PUSH            {R4-R7,LR}
F6C8E:  ADD             R7, SP, #0xC
F6C90:  PUSH.W          {R6-R10}
F6C94:  MOV             R4, R0
F6C96:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6CA0)
F6C98:  MOV             R8, R2
F6C9A:  CMP             R4, R1
F6C9C:  ADD             R0, PC; __stack_chk_guard_ptr
F6C9E:  LDR             R0, [R0]; __stack_chk_guard
F6CA0:  LDR             R0, [R0]
F6CA2:  STR             R0, [SP,#0x20+var_1C]
F6CA4:  BEQ             loc_F6D00
F6CA6:  MOV             R9, R3
F6CA8:  MOV             R5, R1
F6CAA:  BLX             __errno
F6CAE:  MOV             R6, R0
F6CB0:  LDR.W           R10, [R0]
F6CB4:  MOVS            R0, #0; this
F6CB6:  STR             R0, [R6]
F6CB8:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6CBC:  MOV             R3, R0; locale_t
F6CBE:  MOV             R1, SP; char **
F6CC0:  MOV             R0, R4; char *
F6CC2:  MOV             R2, R9; int
F6CC4:  BLX             strtoll_l
F6CC8:  LDR             R2, [R6]
F6CCA:  CBZ             R2, loc_F6CF6
F6CCC:  LDR             R3, [SP,#0x20+var_20]
F6CCE:  CMP             R3, R5
F6CD0:  BNE             loc_F6D00
F6CD2:  CMP             R2, #0x22 ; '"'
F6CD4:  BNE             loc_F6D0A
F6CD6:  MOVS            R2, #4
F6CD8:  STR.W           R2, [R8]
F6CDC:  MOVS            R2, #0
F6CDE:  NEGS            R0, R0
F6CE0:  SBCS.W          R0, R2, R1
F6CE4:  ITTEE GE
F6CE6:  MOVGE.W         R1, #0x80000000
F6CEA:  MOVGE           R0, #0
F6CEC:  MOVLT           R1, #0x7FFFFFFF
F6CF0:  MOVLT.W         R0, #0xFFFFFFFF
F6CF4:  B               loc_F6D0A
F6CF6:  LDR             R2, [SP,#0x20+var_20]
F6CF8:  STR.W           R10, [R6]
F6CFC:  CMP             R2, R5
F6CFE:  BEQ             loc_F6D0A
F6D00:  MOVS            R0, #4
F6D02:  MOVS            R1, #0
F6D04:  STR.W           R0, [R8]
F6D08:  MOVS            R0, #0
F6D0A:  LDR             R2, [SP,#0x20+var_1C]
F6D0C:  LDR             R3, =(__stack_chk_guard_ptr - 0xF6D12)
F6D0E:  ADD             R3, PC; __stack_chk_guard_ptr
F6D10:  LDR             R3, [R3]; __stack_chk_guard
F6D12:  LDR             R3, [R3]
F6D14:  CMP             R3, R2
F6D16:  ITT EQ
F6D18:  POPEQ.W         {R2,R3,R8-R10}
F6D1C:  POPEQ           {R4-R7,PC}
F6D1E:  BLX             __stack_chk_fail
