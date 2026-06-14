; =========================================================
; Game Engine Function: sub_1F7D10
; Address            : 0x1F7D10 - 0x1F7D54
; =========================================================

1F7D10:  PUSH            {R2-R4,R6,R7,LR}
1F7D12:  ADD             R7, SP, #0x10
1F7D14:  MOV             R4, R1
1F7D16:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F7D1C)
1F7D18:  ADD             R1, PC; __stack_chk_guard_ptr
1F7D1A:  LDR             R1, [R1]; __stack_chk_guard
1F7D1C:  LDR             R1, [R1]
1F7D1E:  STR             R1, [SP,#0x10+var_C]
1F7D20:  ADD.W           R1, R0, #0x1C; std::locale *
1F7D24:  MOV             R0, SP; this
1F7D26:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
1F7D2A:  BL              sub_1F6E88
1F7D2E:  LDR             R1, [R0]
1F7D30:  LDR             R2, [R1,#0x2C]
1F7D32:  MOV             R1, R4
1F7D34:  BLX             R2
1F7D36:  MOV             R4, R0
1F7D38:  MOV             R0, SP; this
1F7D3A:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
1F7D3E:  LDR             R0, [SP,#0x10+var_C]
1F7D40:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F7D46)
1F7D42:  ADD             R1, PC; __stack_chk_guard_ptr
1F7D44:  LDR             R1, [R1]; __stack_chk_guard
1F7D46:  LDR             R1, [R1]
1F7D48:  CMP             R1, R0
1F7D4A:  ITT EQ
1F7D4C:  MOVEQ           R0, R4
1F7D4E:  POPEQ           {R2-R4,R6,R7,PC}
1F7D50:  BLX             __stack_chk_fail
