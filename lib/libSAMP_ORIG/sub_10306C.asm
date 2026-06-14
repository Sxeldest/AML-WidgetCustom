; =========================================================
; Game Engine Function: sub_10306C
; Address            : 0x10306C - 0x1030A6
; =========================================================

10306C:  PUSH            {R0-R4,R6,R7,LR}
10306E:  ADD             R7, SP, #0x18
103070:  MOV             R4, R1
103072:  LDR             R1, =(__stack_chk_guard_ptr - 0x103078)
103074:  ADD             R1, PC; __stack_chk_guard_ptr
103076:  LDR             R1, [R1]; __stack_chk_guard
103078:  LDR             R1, [R1]
10307A:  STR             R1, [SP,#0x18+var_C]
10307C:  ADD.W           R1, R7, #8
103080:  STR             R1, [SP,#0x18+var_10]
103082:  STRD.W          R3, R1, [SP,#0x18+var_18]
103086:  MOV             R1, R2
103088:  MOVS            R2, #0
10308A:  MOV             R3, R4
10308C:  BLX             __vsnprintf_chk
103090:  LDR             R1, [SP,#0x18+var_C]
103092:  LDR             R2, =(__stack_chk_guard_ptr - 0x103098)
103094:  ADD             R2, PC; __stack_chk_guard_ptr
103096:  LDR             R2, [R2]; __stack_chk_guard
103098:  LDR             R2, [R2]
10309A:  CMP             R2, R1
10309C:  ITT EQ
10309E:  ADDEQ           SP, SP, #0x10
1030A0:  POPEQ           {R4,R6,R7,PC}
1030A2:  BLX             __stack_chk_fail
