; =========================================================
; Game Engine Function: sub_F70E0
; Address            : 0xF70E0 - 0xF716A
; =========================================================

F70E0:  PUSH            {R4-R7,LR}
F70E2:  ADD             R7, SP, #0xC
F70E4:  PUSH.W          {R6-R9,R11}
F70E8:  MOV             R4, R0
F70EA:  LDR             R0, =(__stack_chk_guard_ptr - 0xF70F4)
F70EC:  MOV             R8, R2
F70EE:  CMP             R4, R1
F70F0:  ADD             R0, PC; __stack_chk_guard_ptr
F70F2:  LDR             R0, [R0]; __stack_chk_guard
F70F4:  LDR             R0, [R0]
F70F6:  STR             R0, [SP,#0x20+var_1C]
F70F8:  BEQ             loc_F712E
F70FA:  MOV             R5, R1
F70FC:  BLX             __errno
F7100:  MOV             R6, R0
F7102:  LDR.W           R9, [R0]
F7106:  MOVS            R0, #0
F7108:  MOV             R1, SP
F710A:  STR             R0, [R6]
F710C:  MOV             R0, R4
F710E:  BL              sub_F7174
F7112:  VMOV            D16, R0, R1
F7116:  LDR             R0, [R6]
F7118:  CBZ             R0, loc_F7136
F711A:  LDR             R1, [SP,#0x20+var_20]
F711C:  VMOV.I32        D17, #0
F7120:  CMP             R1, R5
F7122:  BNE             loc_F7144
F7124:  VMOV            D17, D16
F7128:  CMP             R0, #0x22 ; '"'
F712A:  BEQ             loc_F7144
F712C:  B               loc_F714E
F712E:  VMOV.I32        D16, #0
F7132:  MOVS            R0, #4
F7134:  B               loc_F714A
F7136:  LDR             R0, [SP,#0x20+var_20]
F7138:  VMOV.I32        D17, #0
F713C:  STR.W           R9, [R6]
F7140:  CMP             R0, R5
F7142:  BEQ             loc_F714E
F7144:  MOVS            R0, #4
F7146:  VMOV            D16, D17
F714A:  STR.W           R0, [R8]
F714E:  LDR             R0, [SP,#0x20+var_1C]
F7150:  LDR             R1, =(__stack_chk_guard_ptr - 0xF7156)
F7152:  ADD             R1, PC; __stack_chk_guard_ptr
F7154:  LDR             R1, [R1]; __stack_chk_guard
F7156:  LDR             R1, [R1]
F7158:  CMP             R1, R0
F715A:  ITTT EQ
F715C:  VMOVEQ          R0, R1, D16
F7160:  POPEQ.W         {R2,R3,R8,R9,R11}
F7164:  POPEQ           {R4-R7,PC}
F7166:  BLX             __stack_chk_fail
