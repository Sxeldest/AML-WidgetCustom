; =========================================================
; Game Engine Function: sub_F6FE4
; Address            : 0xF6FE4 - 0xF705A
; =========================================================

F6FE4:  PUSH            {R4-R7,LR}
F6FE6:  ADD             R7, SP, #0xC
F6FE8:  PUSH.W          {R6-R9,R11}
F6FEC:  MOV             R4, R0
F6FEE:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6FF8)
F6FF0:  MOV             R8, R2
F6FF2:  CMP             R4, R1
F6FF4:  ADD             R0, PC; __stack_chk_guard_ptr
F6FF6:  LDR             R0, [R0]; __stack_chk_guard
F6FF8:  LDR             R0, [R0]
F6FFA:  STR             R0, [SP,#0x20+var_1C]
F6FFC:  BEQ             loc_F7034
F6FFE:  MOV             R5, R1
F7000:  BLX             __errno
F7004:  MOV             R6, R0
F7006:  LDR.W           R9, [R0]
F700A:  MOVS            R0, #0
F700C:  MOV             R1, SP
F700E:  STR             R0, [R6]
F7010:  MOV             R0, R4
F7012:  BL              sub_F7068
F7016:  VMOV            S0, R0
F701A:  LDR             R0, [R6]
F701C:  CBZ             R0, loc_F702A
F701E:  LDR             R1, [SP,#0x20+var_20]
F7020:  CMP             R1, R5
F7022:  BNE             loc_F7034
F7024:  CMP             R0, #0x22 ; '"'
F7026:  BEQ             loc_F7038
F7028:  B               loc_F703E
F702A:  LDR             R0, [SP,#0x20+var_20]
F702C:  STR.W           R9, [R6]
F7030:  CMP             R0, R5
F7032:  BEQ             loc_F703E
F7034:  VLDR            S0, =0.0
F7038:  MOVS            R0, #4
F703A:  STR.W           R0, [R8]
F703E:  LDR             R0, [SP,#0x20+var_1C]
F7040:  LDR             R1, =(__stack_chk_guard_ptr - 0xF7046)
F7042:  ADD             R1, PC; __stack_chk_guard_ptr
F7044:  LDR             R1, [R1]; __stack_chk_guard
F7046:  LDR             R1, [R1]
F7048:  CMP             R1, R0
F704A:  ITTT EQ
F704C:  VMOVEQ          R0, S0
F7050:  POPEQ.W         {R2,R3,R8,R9,R11}
F7054:  POPEQ           {R4-R7,PC}
F7056:  BLX             __stack_chk_fail
