; =========================================================
; Game Engine Function: sub_1F3320
; Address            : 0x1F3320 - 0x1F3352
; =========================================================

1F3320:  PUSH            {R3-R7,LR}
1F3322:  ADD             R7, SP, #0x10
1F3324:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F332A)
1F3326:  ADD             R0, PC; __stack_chk_guard_ptr
1F3328:  LDR             R0, [R0]; __stack_chk_guard
1F332A:  LDR             R0, [R0]
1F332C:  STR             R0, [SP,#0x10+var_4]
1F332E:  STRD.W          R1, R2, [SP,#0x10+var_C]
1F3332:  ADD             R1, SP, #0x10+var_C
1F3334:  MOV             R0, SP
1F3336:  MOVS            R2, #8
1F3338:  BLX             j__ZNSt6__ndk121__murmur2_or_cityhashIjLj32EEclEPKvj; std::__murmur2_or_cityhash<uint,32u>::operator()(void const*,uint)
1F333C:  LDR             R1, [SP,#0x10+var_4]
1F333E:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F3344)
1F3340:  ADD             R2, PC; __stack_chk_guard_ptr
1F3342:  LDR             R2, [R2]; __stack_chk_guard
1F3344:  LDR             R2, [R2]
1F3346:  CMP             R2, R1
1F3348:  ITT EQ
1F334A:  ADDEQ           SP, SP, #0x10
1F334C:  POPEQ           {R7,PC}
1F334E:  BLX             __stack_chk_fail
