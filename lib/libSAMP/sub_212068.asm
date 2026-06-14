; =========================================================
; Game Engine Function: sub_212068
; Address            : 0x212068 - 0x2120B2
; =========================================================

212068:  PUSH            {R2-R4,R6,R7,LR}
21206A:  ADD             R7, SP, #0x10
21206C:  STR             R2, [SP,#0x10+var_10]
21206E:  MOV             R4, R0
212070:  LDR             R0, =(__stack_chk_guard_ptr - 0x212078)
212072:  CMP             R1, R3
212074:  ADD             R0, PC; __stack_chk_guard_ptr
212076:  LDR             R0, [R0]; __stack_chk_guard
212078:  LDR             R0, [R0]
21207A:  STR             R0, [SP,#0x10+var_C]
21207C:  BLS             loc_21209A
21207E:  ADD.W           R0, R4, R3,LSL#2; int
212082:  SUBS            R1, R1, R3; n
212084:  MOV             R2, SP
212086:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
21208A:  MOV             R1, R0
21208C:  SUBS            R0, R0, R4
21208E:  ASRS            R0, R0, #2
212090:  CMP             R1, #0
212092:  IT EQ
212094:  MOVEQ.W         R0, #0xFFFFFFFF
212098:  B               loc_21209E
21209A:  MOV.W           R0, #0xFFFFFFFF
21209E:  LDR             R1, [SP,#0x10+var_C]
2120A0:  LDR             R2, =(__stack_chk_guard_ptr - 0x2120A6)
2120A2:  ADD             R2, PC; __stack_chk_guard_ptr
2120A4:  LDR             R2, [R2]; __stack_chk_guard
2120A6:  LDR             R2, [R2]
2120A8:  CMP             R2, R1
2120AA:  IT EQ
2120AC:  POPEQ           {R2-R4,R6,R7,PC}
2120AE:  BLX             __stack_chk_fail
