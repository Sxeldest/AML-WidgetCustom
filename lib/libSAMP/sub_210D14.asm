; =========================================================
; Game Engine Function: sub_210D14
; Address            : 0x210D14 - 0x210D5E
; =========================================================

210D14:  PUSH            {R2-R4,R6,R7,LR}
210D16:  ADD             R7, SP, #0x10
210D18:  STRB.W          R2, [R7,#var_D]
210D1C:  MOV             R4, R0
210D1E:  LDR             R0, =(__stack_chk_guard_ptr - 0x210D26)
210D20:  CMP             R1, R3
210D22:  ADD             R0, PC; __stack_chk_guard_ptr
210D24:  LDR             R0, [R0]; __stack_chk_guard
210D26:  LDR             R0, [R0]
210D28:  STR             R0, [SP,#0x10+var_C]
210D2A:  BLS             loc_210D46
210D2C:  ADDS            R0, R4, R3; int
210D2E:  SUBS            R1, R1, R3; n
210D30:  SUB.W           R2, R7, #-var_D
210D34:  BLX             j__ZNSt6__ndk111char_traitsIcE4findEPKcjRS2_; std::char_traits<char>::find(char const*,uint,char const&)
210D38:  MOV             R1, R0
210D3A:  SUBS            R0, R0, R4
210D3C:  CMP             R1, #0
210D3E:  IT EQ
210D40:  MOVEQ.W         R0, #0xFFFFFFFF
210D44:  B               loc_210D4A
210D46:  MOV.W           R0, #0xFFFFFFFF
210D4A:  LDR             R1, [SP,#0x10+var_C]
210D4C:  LDR             R2, =(__stack_chk_guard_ptr - 0x210D52)
210D4E:  ADD             R2, PC; __stack_chk_guard_ptr
210D50:  LDR             R2, [R2]; __stack_chk_guard
210D52:  LDR             R2, [R2]
210D54:  CMP             R2, R1
210D56:  IT EQ
210D58:  POPEQ           {R2-R4,R6,R7,PC}
210D5A:  BLX             __stack_chk_fail
