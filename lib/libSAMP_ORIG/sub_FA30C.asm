; =========================================================
; Game Engine Function: sub_FA30C
; Address            : 0xFA30C - 0xFA356
; =========================================================

FA30C:  PUSH            {R2-R4,R6,R7,LR}
FA30E:  ADD             R7, SP, #0x10
FA310:  STR             R2, [SP,#0x10+var_10]
FA312:  MOV             R4, R0
FA314:  LDR             R0, =(__stack_chk_guard_ptr - 0xFA31C)
FA316:  CMP             R1, R3
FA318:  ADD             R0, PC; __stack_chk_guard_ptr
FA31A:  LDR             R0, [R0]; __stack_chk_guard
FA31C:  LDR             R0, [R0]
FA31E:  STR             R0, [SP,#0x10+var_C]
FA320:  BLS             loc_FA33E
FA322:  ADD.W           R0, R4, R3,LSL#2; int
FA326:  SUBS            R1, R1, R3; n
FA328:  MOV             R2, SP
FA32A:  BLX             j__ZNSt6__ndk111char_traitsIwE4findEPKwjRS2_; std::char_traits<wchar_t>::find(wchar_t const*,uint,wchar_t const&)
FA32E:  MOV             R1, R0
FA330:  SUBS            R0, R0, R4
FA332:  ASRS            R0, R0, #2
FA334:  CMP             R1, #0
FA336:  IT EQ
FA338:  MOVEQ.W         R0, #0xFFFFFFFF
FA33C:  B               loc_FA342
FA33E:  MOV.W           R0, #0xFFFFFFFF
FA342:  LDR             R1, [SP,#0x10+var_C]
FA344:  LDR             R2, =(__stack_chk_guard_ptr - 0xFA34A)
FA346:  ADD             R2, PC; __stack_chk_guard_ptr
FA348:  LDR             R2, [R2]; __stack_chk_guard
FA34A:  LDR             R2, [R2]
FA34C:  CMP             R2, R1
FA34E:  IT EQ
FA350:  POPEQ           {R2-R4,R6,R7,PC}
FA352:  BLX             __stack_chk_fail
