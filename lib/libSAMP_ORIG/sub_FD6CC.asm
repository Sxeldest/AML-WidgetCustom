; =========================================================
; Game Engine Function: sub_FD6CC
; Address            : 0xFD6CC - 0xFD70C
; =========================================================

FD6CC:  PUSH            {R2-R4,R6,R7,LR}
FD6CE:  ADD             R7, SP, #0x10
FD6D0:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD6D6)
FD6D2:  ADD             R1, PC; __stack_chk_guard_ptr
FD6D4:  LDR             R1, [R1]; __stack_chk_guard
FD6D6:  LDR             R1, [R1]
FD6D8:  STR             R1, [SP,#0x10+var_C]
FD6DA:  LDRB            R1, [R0,#0x14]
FD6DC:  LSLS            R1, R1, #0x1F
FD6DE:  BNE             loc_FD6F4
FD6E0:  MOVS            R1, #0
FD6E2:  LDR             R4, [R0,#8]
FD6E4:  MOV             R0, SP; this
FD6E6:  STR             R1, [SP,#0x10+var_10]
FD6E8:  BLX             j__ZNSt13exception_ptrD2Ev_0; std::exception_ptr::~exception_ptr()
FD6EC:  CMP             R4, #0
FD6EE:  IT NE
FD6F0:  MOVNE           R4, #1
FD6F2:  B               loc_FD6F6
FD6F4:  MOVS            R4, #1
FD6F6:  LDR             R0, [SP,#0x10+var_C]
FD6F8:  LDR             R1, =(__stack_chk_guard_ptr - 0xFD6FE)
FD6FA:  ADD             R1, PC; __stack_chk_guard_ptr
FD6FC:  LDR             R1, [R1]; __stack_chk_guard
FD6FE:  LDR             R1, [R1]
FD700:  CMP             R1, R0
FD702:  ITT EQ
FD704:  MOVEQ           R0, R4
FD706:  POPEQ           {R2-R4,R6,R7,PC}
FD708:  BLX             __stack_chk_fail
