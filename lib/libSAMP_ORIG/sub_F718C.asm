; =========================================================
; Game Engine Function: sub_F718C
; Address            : 0xF718C - 0xF7216
; =========================================================

F718C:  PUSH            {R4-R7,LR}
F718E:  ADD             R7, SP, #0xC
F7190:  PUSH.W          {R6-R9,R11}
F7194:  MOV             R4, R0
F7196:  LDR             R0, =(__stack_chk_guard_ptr - 0xF71A0)
F7198:  MOV             R8, R2
F719A:  CMP             R4, R1
F719C:  ADD             R0, PC; __stack_chk_guard_ptr
F719E:  LDR             R0, [R0]; __stack_chk_guard
F71A0:  LDR             R0, [R0]
F71A2:  STR             R0, [SP,#0x20+var_1C]
F71A4:  BEQ             loc_F71DA
F71A6:  MOV             R5, R1
F71A8:  BLX             __errno
F71AC:  MOV             R6, R0
F71AE:  LDR.W           R9, [R0]
F71B2:  MOVS            R0, #0
F71B4:  MOV             R1, SP
F71B6:  STR             R0, [R6]
F71B8:  MOV             R0, R4
F71BA:  BL              sub_F7220
F71BE:  VMOV            D16, R0, R1
F71C2:  LDR             R0, [R6]
F71C4:  CBZ             R0, loc_F71E2
F71C6:  LDR             R1, [SP,#0x20+var_20]
F71C8:  VMOV.I32        D17, #0
F71CC:  CMP             R1, R5
F71CE:  BNE             loc_F71F0
F71D0:  VMOV            D17, D16
F71D4:  CMP             R0, #0x22 ; '"'
F71D6:  BEQ             loc_F71F0
F71D8:  B               loc_F71FA
F71DA:  VMOV.I32        D16, #0
F71DE:  MOVS            R0, #4
F71E0:  B               loc_F71F6
F71E2:  LDR             R0, [SP,#0x20+var_20]
F71E4:  VMOV.I32        D17, #0
F71E8:  STR.W           R9, [R6]
F71EC:  CMP             R0, R5
F71EE:  BEQ             loc_F71FA
F71F0:  MOVS            R0, #4
F71F2:  VMOV            D16, D17
F71F6:  STR.W           R0, [R8]
F71FA:  LDR             R0, [SP,#0x20+var_1C]
F71FC:  LDR             R1, =(__stack_chk_guard_ptr - 0xF7202)
F71FE:  ADD             R1, PC; __stack_chk_guard_ptr
F7200:  LDR             R1, [R1]; __stack_chk_guard
F7202:  LDR             R1, [R1]
F7204:  CMP             R1, R0
F7206:  ITTT EQ
F7208:  VMOVEQ          R0, R1, D16
F720C:  POPEQ.W         {R2,R3,R8,R9,R11}
F7210:  POPEQ           {R4-R7,PC}
F7212:  BLX             __stack_chk_fail
