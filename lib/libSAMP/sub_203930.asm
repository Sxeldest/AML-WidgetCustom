; =========================================================
; Game Engine Function: sub_203930
; Address            : 0x203930 - 0x20396C
; =========================================================

203930:  PUSH            {R3-R7,LR}
203932:  ADD             R7, SP, #0x10
203934:  MOV             R3, R1
203936:  LDR             R1, =(__stack_chk_guard_ptr - 0x20393C)
203938:  ADD             R1, PC; __stack_chk_guard_ptr
20393A:  LDR             R1, [R1]; __stack_chk_guard
20393C:  LDR             R1, [R1]
20393E:  STR             R1, [SP,#0x10+var_4]
203940:  ADD.W           R1, R7, #8
203944:  STR             R1, [SP,#0x10+var_8]
203946:  LDR             R2, =(a0lf - 0x20394C); "%.0Lf" ...
203948:  ADD             R2, PC; "%.0Lf"
20394A:  STRD.W          R2, R1, [SP,#0x10+var_10]
20394E:  MOVS            R1, #0x64 ; 'd'
203950:  MOVS            R2, #0
203952:  BLX             __vsnprintf_chk
203956:  LDR             R1, [SP,#0x10+var_4]
203958:  LDR             R2, =(__stack_chk_guard_ptr - 0x20395E)
20395A:  ADD             R2, PC; __stack_chk_guard_ptr
20395C:  LDR             R2, [R2]; __stack_chk_guard
20395E:  LDR             R2, [R2]
203960:  CMP             R2, R1
203962:  ITT EQ
203964:  ADDEQ           SP, SP, #0x10
203966:  POPEQ           {R7,PC}
203968:  BLX             __stack_chk_fail
