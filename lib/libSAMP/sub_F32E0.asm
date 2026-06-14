; =========================================================
; Game Engine Function: sub_F32E0
; Address            : 0xF32E0 - 0xF343E
; =========================================================

F32E0:  PUSH            {R4-R7,LR}
F32E2:  ADD             R7, SP, #0xC
F32E4:  PUSH.W          {R8,R9,R11}
F32E8:  SUB             SP, SP, #0x18
F32EA:  MOV             R8, R0
F32EC:  LDR             R0, =(off_23494C - 0xF32F2)
F32EE:  ADD             R0, PC; off_23494C
F32F0:  LDR             R4, [R0]; dword_23DF24
F32F2:  LDR             R5, [R4]
F32F4:  CBNZ            R5, loc_F3302
F32F6:  LDR             R0, =(aLibgtasaSo - 0xF32FC); "libGTASA.so" ...
F32F8:  ADD             R0, PC; "libGTASA.so"
F32FA:  BL              sub_163FF8
F32FE:  MOV             R5, R0
F3300:  STR             R0, [R4]
F3302:  LDR             R6, =(dword_23FCE0 - 0xF3312)
F3304:  MOV             R0, #0x6F3794
F330C:  ADDS            R1, R5, R0; src
F330E:  ADD             R6, PC; dword_23FCE0
F3310:  MOV.W           R2, #0x2F8; n
F3314:  MOV             R0, R6; dest
F3316:  BLX             j_memcpy
F331A:  MOV             R9, #0x67947C
F3322:  ADD.W           R0, R5, R9
F3326:  BL              sub_1641C4
F332A:  LDR             R0, [R4]
F332C:  MOVW            R5, #0x3358
F3330:  LDR             R1, =(sub_F34B0+1 - 0xF3342)
F3332:  MOVT            R5, #0x67 ; 'g'
F3336:  LDR             R2, =(off_23FFE0 - 0xF3344)
F3338:  STR.W           R6, [R0,R9]
F333C:  ADD             R0, R5
F333E:  ADD             R1, PC; sub_F34B0
F3340:  ADD             R2, PC; off_23FFE0
F3342:  ADD.W           R0, R0, #0x18C
F3346:  BL              sub_164196
F334A:  LDR             R0, [R4]
F334C:  MOVW            R6, #0xFAA0
F3350:  LDR             R1, =(sub_F3598+1 - 0xF335E)
F3352:  MOVT            R6, #0x66 ; 'f'
F3356:  LDR             R2, =(dword_23FFE4 - 0xF3360)
F3358:  ADD             R0, R6
F335A:  ADD             R1, PC; sub_F3598
F335C:  ADD             R2, PC; dword_23FFE4
F335E:  BL              sub_164196
F3362:  LDR             R0, [R4]
F3364:  MOVW            R3, #0x46E4
F3368:  LDR             R1, =(sub_F35C8+1 - 0xF3376)
F336A:  MOVT            R3, #0x67 ; 'g'
F336E:  LDR             R2, =(dword_23FFE8 - 0xF3378)
F3370:  ADD             R0, R3
F3372:  ADD             R1, PC; sub_F35C8
F3374:  ADD             R2, PC; dword_23FFE8
F3376:  BL              sub_164196
F337A:  LDR             R0, [R4]
F337C:  MOVW            R3, #0xE5E4
F3380:  LDR             R1, =(sub_F3698+1 - 0xF338E)
F3382:  MOVT            R3, #0x66 ; 'f'
F3386:  LDR             R2, =(dword_23FFEC - 0xF3390)
F3388:  ADD             R0, R3
F338A:  ADD             R1, PC; sub_F3698
F338C:  ADD             R2, PC; dword_23FFEC
F338E:  BL              sub_164196
F3392:  LDR             R0, [R4]
F3394:  LDR             R1, =(sub_F37A4+1 - 0xF339E)
F3396:  LDR             R2, =(dword_23FFF0 - 0xF33A0)
F3398:  ADD             R0, R5
F339A:  ADD             R1, PC; sub_F37A4
F339C:  ADD             R2, PC; dword_23FFF0
F339E:  BL              sub_164196
F33A2:  LDR             R0, [R4]
F33A4:  LDR             R1, =(sub_F37DC+1 - 0xF33AE)
F33A6:  LDR             R2, =(dword_23FFF4 - 0xF33B4)
F33A8:  ADD             R0, R6
F33AA:  ADD             R1, PC; sub_F37DC
F33AC:  ADD.W           R0, R0, #0x810
F33B0:  ADD             R2, PC; dword_23FFF4
F33B2:  BL              sub_164196
F33B6:  LDR             R1, =(dword_23FFF8 - 0xF33C8)
F33B8:  MOVW            R6, #:lower16:unk_2AFB79
F33BC:  LDR             R0, [R4]
F33BE:  MOVT            R6, #:upper16:unk_2AFB79
F33C2:  LDR             R2, =(dword_240004 - 0xF33D0)
F33C4:  ADD             R1, PC; dword_23FFF8
F33C6:  LDR             R4, =(off_23FFFC - 0xF33D6)
F33C8:  ADD             R6, R0
F33CA:  LDR             R3, =(dword_240000 - 0xF33D8)
F33CC:  ADD             R2, PC; dword_240004
F33CE:  ADD.W           R5, R6, #0x2EC
F33D2:  ADD             R4, PC; off_23FFFC
F33D4:  ADD             R3, PC; dword_240000
F33D6:  MOV             LR, R3
F33D8:  LDR             R3, =(dword_240008 - 0xF33E4)
F33DA:  STR             R6, [R1]
F33DC:  MOVW            R1, #:lower16:unk_2B27F1
F33E0:  ADD             R3, PC; dword_240008
F33E2:  MOVT            R1, #:upper16:unk_2B27F1
F33E6:  ADD             R1, R0
F33E8:  ADD.W           R6, R6, #0x4D8
F33EC:  MOV             R12, R3
F33EE:  LDR             R3, =(dword_24000C - 0xF33F8)
F33F0:  STR             R1, [R2]
F33F2:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN19CTouchInterfaceHookC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0xF3404); `vtable for'std::__function::__func<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0,std::allocator<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0>,void ()(void)> ...
F33F4:  ADD             R3, PC; dword_24000C
F33F6:  STR.W           R6, [LR]
F33FA:  ADD.W           R6, R1, #0x34 ; '4'
F33FE:  ADDS            R1, #0x5C ; '\'
F3400:  ADD             R2, PC; `vtable for'std::__function::__func<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0,std::allocator<CTouchInterfaceHook::CTouchInterfaceHook(void)::$_0>,void ()(void)>
F3402:  STR             R1, [R3]
F3404:  ADD.W           R1, R2, #8
F3408:  STR             R5, [R4]
F340A:  MOV             R5, SP
F340C:  STR.W           R6, [R12]
F3410:  STR             R5, [SP,#0x30+var_20]
F3412:  STR             R1, [SP,#0x30+var_30]
F3414:  ADD.W           R0, R0, #0x2B0000
F3418:  MOV             R1, R5
F341A:  BL              sub_1642EC
F341E:  LDR             R0, [SP,#0x30+var_20]
F3420:  CMP             R5, R0
F3422:  BEQ             loc_F342A
F3424:  CBZ             R0, loc_F3434
F3426:  MOVS            R1, #5
F3428:  B               loc_F342C
F342A:  MOVS            R1, #4
F342C:  LDR             R2, [R0]
F342E:  LDR.W           R1, [R2,R1,LSL#2]
F3432:  BLX             R1
F3434:  MOV             R0, R8
F3436:  ADD             SP, SP, #0x18
F3438:  POP.W           {R8,R9,R11}
F343C:  POP             {R4-R7,PC}
