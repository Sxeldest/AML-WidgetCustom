; =========================================================
; Game Engine Function: sub_DE0B4
; Address            : 0xDE0B4 - 0xDE0F8
; =========================================================

DE0B4:  PUSH            {R2-R4,R6,R7,LR}
DE0B6:  ADD             R7, SP, #0x10
DE0B8:  MOV             R4, R1
DE0BA:  LDR             R1, =(__stack_chk_guard_ptr - 0xDE0C0)
DE0BC:  ADD             R1, PC; __stack_chk_guard_ptr
DE0BE:  LDR             R1, [R1]; __stack_chk_guard
DE0C0:  LDR             R1, [R1]
DE0C2:  STR             R1, [SP,#0x10+var_C]
DE0C4:  ADD.W           R1, R0, #0x1C; std::locale *
DE0C8:  MOV             R0, SP; this
DE0CA:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
DE0CE:  BL              sub_DD21C
DE0D2:  LDR             R1, [R0]
DE0D4:  LDR             R2, [R1,#0x1C]
DE0D6:  MOV             R1, R4
DE0D8:  BLX             R2
DE0DA:  MOV             R4, R0
DE0DC:  MOV             R0, SP; this
DE0DE:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
DE0E2:  LDR             R0, [SP,#0x10+var_C]
DE0E4:  LDR             R1, =(__stack_chk_guard_ptr - 0xDE0EA)
DE0E6:  ADD             R1, PC; __stack_chk_guard_ptr
DE0E8:  LDR             R1, [R1]; __stack_chk_guard
DE0EA:  LDR             R1, [R1]
DE0EC:  CMP             R1, R0
DE0EE:  ITT EQ
DE0F0:  MOVEQ           R0, R4
DE0F2:  POPEQ           {R2-R4,R6,R7,PC}
DE0F4:  BLX             __stack_chk_fail
