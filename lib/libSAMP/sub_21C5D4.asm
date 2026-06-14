; =========================================================
; Game Engine Function: sub_21C5D4
; Address            : 0x21C5D4 - 0x21C630
; =========================================================

21C5D4:  PUSH            {R0-R5,R7,LR}
21C5D6:  ADD             R7, SP, #0x18
21C5D8:  MOV             R5, R0
21C5DA:  LDR             R0, =(__stack_chk_guard_ptr - 0x21C5E2)
21C5DC:  MOV             R4, R1
21C5DE:  ADD             R0, PC; __stack_chk_guard_ptr
21C5E0:  LDR             R0, [R0]; __stack_chk_guard
21C5E2:  LDR             R0, [R0]
21C5E4:  STR             R0, [SP,#0x18+var_C]
21C5E6:  MOV             R0, R4
21C5E8:  LDR             R1, =(aSizeof_1 - 0x21C5EE); "sizeof...(" ...
21C5EA:  ADD             R1, PC; "sizeof...("
21C5EC:  ADD.W           R2, R1, #0xA
21C5F0:  BL              sub_216F98
21C5F4:  LDR             R0, =0x1010122
21C5F6:  MOV             R1, R4
21C5F8:  STR             R0, [SP,#0x18+var_14]
21C5FA:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ParameterPackExpansionE - 0x21C600); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion ...
21C5FC:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion
21C5FE:  ADDS            R0, #8
21C600:  STR             R0, [SP,#0x18+var_18]
21C602:  LDR             R0, [R5,#8]
21C604:  STR             R0, [SP,#0x18+var_10]
21C606:  MOV             R0, SP
21C608:  BL              sub_21AFB8
21C60C:  LDR             R0, [SP,#0x18+var_C]
21C60E:  LDR             R1, =(__stack_chk_guard_ptr - 0x21C614)
21C610:  ADD             R1, PC; __stack_chk_guard_ptr
21C612:  LDR             R1, [R1]; __stack_chk_guard
21C614:  LDR             R1, [R1]
21C616:  CMP             R1, R0
21C618:  IT NE
21C61A:  BLXNE           __stack_chk_fail
21C61E:  LDR             R1, =(unk_901C1 - 0x21C626)
21C620:  MOV             R0, R4
21C622:  ADD             R1, PC; unk_901C1
21C624:  ADDS            R2, R1, #1
21C626:  ADD             SP, SP, #0x10
21C628:  POP.W           {R4,R5,R7,LR}
21C62C:  B.W             sub_216F98
