; =========================================================
; Game Engine Function: sub_10517C
; Address            : 0x10517C - 0x1051D8
; =========================================================

10517C:  PUSH            {R0-R5,R7,LR}
10517E:  ADD             R7, SP, #0x18
105180:  MOV             R5, R0
105182:  LDR             R0, =(__stack_chk_guard_ptr - 0x10518A)
105184:  MOV             R4, R1
105186:  ADD             R0, PC; __stack_chk_guard_ptr
105188:  LDR             R0, [R0]; __stack_chk_guard
10518A:  LDR             R0, [R0]
10518C:  STR             R0, [SP,#0x18+var_C]
10518E:  MOV             R0, R4
105190:  LDR             R1, =(aSizeof_1 - 0x105196); "sizeof...(" ...
105192:  ADD             R1, PC; "sizeof...("
105194:  ADD.W           R2, R1, #0xA
105198:  BL              sub_FFB40
10519C:  LDR             R0, =0x1010122
10519E:  MOV             R1, R4
1051A0:  STR             R0, [SP,#0x18+var_14]
1051A2:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ParameterPackExpansionE - 0x1051A8); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion ...
1051A4:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion
1051A6:  ADDS            R0, #8
1051A8:  STR             R0, [SP,#0x18+var_18]
1051AA:  LDR             R0, [R5,#8]
1051AC:  STR             R0, [SP,#0x18+var_10]
1051AE:  MOV             R0, SP
1051B0:  BL              sub_103B60
1051B4:  LDR             R0, [SP,#0x18+var_C]
1051B6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1051BC)
1051B8:  ADD             R1, PC; __stack_chk_guard_ptr
1051BA:  LDR             R1, [R1]; __stack_chk_guard
1051BC:  LDR             R1, [R1]
1051BE:  CMP             R1, R0
1051C0:  IT NE
1051C2:  BLXNE           __stack_chk_fail
1051C6:  LDR             R1, =(asc_50037 - 0x1051CE); ")" ...
1051C8:  MOV             R0, R4
1051CA:  ADD             R1, PC; ")"
1051CC:  ADDS            R2, R1, #1
1051CE:  ADD             SP, SP, #0x10
1051D0:  POP.W           {R4,R5,R7,LR}
1051D4:  B.W             sub_FFB40
