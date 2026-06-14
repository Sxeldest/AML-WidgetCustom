; =========================================================
; Game Engine Function: sub_1F6198
; Address            : 0x1F6198 - 0x1F61DC
; =========================================================

1F6198:  PUSH            {R2-R4,R6,R7,LR}
1F619A:  ADD             R7, SP, #0x10
1F619C:  MOV             R4, R1
1F619E:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F61A4)
1F61A0:  ADD             R1, PC; __stack_chk_guard_ptr
1F61A2:  LDR             R1, [R1]; __stack_chk_guard
1F61A4:  LDR             R1, [R1]
1F61A6:  STR             R1, [SP,#0x10+var_C]
1F61A8:  ADD.W           R1, R0, #0x1C; std::locale *
1F61AC:  MOV             R0, SP; this
1F61AE:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
1F61B2:  BL              sub_1F5300
1F61B6:  LDR             R1, [R0]
1F61B8:  LDR             R2, [R1,#0x1C]
1F61BA:  MOV             R1, R4
1F61BC:  BLX             R2
1F61BE:  MOV             R4, R0
1F61C0:  MOV             R0, SP; this
1F61C2:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
1F61C6:  LDR             R0, [SP,#0x10+var_C]
1F61C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F61CE)
1F61CA:  ADD             R1, PC; __stack_chk_guard_ptr
1F61CC:  LDR             R1, [R1]; __stack_chk_guard
1F61CE:  LDR             R1, [R1]
1F61D0:  CMP             R1, R0
1F61D2:  ITT EQ
1F61D4:  MOVEQ           R0, R4
1F61D6:  POPEQ           {R2-R4,R6,R7,PC}
1F61D8:  BLX             __stack_chk_fail
