; =========================================================
; Game Engine Function: sub_F8F64
; Address            : 0xF8F64 - 0xF8FAE
; =========================================================

F8F64:  PUSH            {R2-R4,R6,R7,LR}
F8F66:  ADD             R7, SP, #0x10
F8F68:  STRB.W          R2, [R7,#var_D]
F8F6C:  MOV             R4, R0
F8F6E:  LDR             R0, =(__stack_chk_guard_ptr - 0xF8F76)
F8F70:  CMP             R1, R3
F8F72:  ADD             R0, PC; __stack_chk_guard_ptr
F8F74:  LDR             R0, [R0]; __stack_chk_guard
F8F76:  LDR             R0, [R0]
F8F78:  STR             R0, [SP,#0x10+var_C]
F8F7A:  BLS             loc_F8F96
F8F7C:  ADDS            R0, R4, R3; int
F8F7E:  SUBS            R1, R1, R3; n
F8F80:  SUB.W           R2, R7, #-var_D
F8F84:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
F8F88:  MOV             R1, R0
F8F8A:  SUBS            R0, R0, R4
F8F8C:  CMP             R1, #0
F8F8E:  IT EQ
F8F90:  MOVEQ.W         R0, #0xFFFFFFFF
F8F94:  B               loc_F8F9A
F8F96:  MOV.W           R0, #0xFFFFFFFF
F8F9A:  LDR             R1, [SP,#0x10+var_C]
F8F9C:  LDR             R2, =(__stack_chk_guard_ptr - 0xF8FA2)
F8F9E:  ADD             R2, PC; __stack_chk_guard_ptr
F8FA0:  LDR             R2, [R2]; __stack_chk_guard
F8FA2:  LDR             R2, [R2]
F8FA4:  CMP             R2, R1
F8FA6:  IT EQ
F8FA8:  POPEQ           {R2-R4,R6,R7,PC}
F8FAA:  BLX             __stack_chk_fail
