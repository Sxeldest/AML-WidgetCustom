; =========================================================
; Game Engine Function: sub_7B2C0
; Address            : 0x7B2C0 - 0x7B4C4
; =========================================================

7B2C0:  PUSH            {R4-R7,LR}
7B2C2:  ADD             R7, SP, #0xC
7B2C4:  PUSH.W          {R8}
7B2C8:  VPUSH           {D8}
7B2CC:  SUB             SP, SP, #0x38
7B2CE:  MOV             R4, R0
7B2D0:  LDR             R0, =(__stack_chk_guard_ptr - 0x7B2DA)
7B2D2:  MOVS            R1, #0
7B2D4:  MOVS            R6, #0
7B2D6:  ADD             R0, PC; __stack_chk_guard_ptr
7B2D8:  LDR             R0, [R0]; __stack_chk_guard
7B2DA:  LDR             R0, [R0]
7B2DC:  STR             R0, [SP,#0x50+var_1C]
7B2DE:  MOV             R0, R4
7B2E0:  BL              sub_7D794
7B2E4:  LDR             R0, =(_ZTV5Spawn - 0x7B2EA); `vtable for'Spawn ...
7B2E6:  ADD             R0, PC; `vtable for'Spawn
7B2E8:  ADDS            R0, #8
7B2EA:  STR             R0, [R4]
7B2EC:  MOVS            R0, #0x90; unsigned int
7B2EE:  BLX             j__Znwj; operator new(uint)
7B2F2:  MOV             R5, R0
7B2F4:  LDR             R0, =(off_114C24 - 0x7B302)
7B2F6:  VMOV.F32        S16, #0.5
7B2FA:  STRB.W          R6, [SP,#0x50+var_38+3]
7B2FE:  ADD             R0, PC; off_114C24
7B300:  LDR.W           R8, [R0]; dword_116D58
7B304:  MOVW            R0, #0x3C3C
7B308:  STRH.W          R0, [SP,#0x50+var_38+1]
7B30C:  MOVS            R0, #4
7B30E:  STRB.W          R0, [SP,#0x50+var_38]
7B312:  VLDR            S0, [R8]
7B316:  VMUL.F32        S0, S0, S16
7B31A:  VMOV            R2, S0
7B31E:  ADD             R1, SP, #0x50+var_38
7B320:  MOV             R0, R5
7B322:  BL              sub_7C9B0
7B326:  LDRB.W          R0, [SP,#0x50+var_38]
7B32A:  STR             R5, [R4,#0x6C]
7B32C:  LSLS            R0, R0, #0x1F
7B32E:  ITT NE
7B330:  LDRNE           R0, [SP,#0x50+var_30]; void *
7B332:  BLXNE           j__ZdlPv; operator delete(void *)
7B336:  MOVS            R0, #0x90; unsigned int
7B338:  BLX             j__Znwj; operator new(uint)
7B33C:  VLDR            S0, [R8]
7B340:  MOV             R5, R0
7B342:  MOVW            R0, #0x7053
7B346:  VMUL.F32        S0, S0, S16
7B34A:  MOVT            R0, #0x7761
7B34E:  STR.W           R0, [SP,#0x50+var_38+1]
7B352:  MOVS            R0, #0xA
7B354:  STRB.W          R0, [SP,#0x50+var_38]
7B358:  MOVS            R0, #0x6E ; 'n'
7B35A:  STRH.W          R0, [SP,#0x50+var_33]
7B35E:  VMOV            R2, S0
7B362:  ADD             R1, SP, #0x50+var_38
7B364:  MOV             R0, R5
7B366:  BL              sub_7C9B0
7B36A:  LDRB.W          R0, [SP,#0x50+var_38]
7B36E:  STR             R5, [R4,#0x70]
7B370:  LSLS            R0, R0, #0x1F
7B372:  ITT NE
7B374:  LDRNE           R0, [SP,#0x50+var_30]; void *
7B376:  BLXNE           j__ZdlPv; operator delete(void *)
7B37A:  MOVS            R0, #0x90; unsigned int
7B37C:  BLX             j__Znwj; operator new(uint)
7B380:  VLDR            S0, [R8]
7B384:  MOV             R6, R0
7B386:  MOVS            R0, #0
7B388:  VMUL.F32        S0, S0, S16
7B38C:  STRB.W          R0, [SP,#0x50+var_38+3]
7B390:  MOVW            R0, #0x3E3E
7B394:  STRH.W          R0, [SP,#0x50+var_38+1]
7B398:  MOVS            R0, #4
7B39A:  STRB.W          R0, [SP,#0x50+var_38]
7B39E:  VMOV            R2, S0
7B3A2:  ADD             R5, SP, #0x50+var_38
7B3A4:  MOV             R0, R6
7B3A6:  MOV             R1, R5
7B3A8:  BL              sub_7C9B0
7B3AC:  LDRB.W          R0, [SP,#0x50+var_38]
7B3B0:  STR             R6, [R4,#0x74]
7B3B2:  LSLS            R0, R0, #0x1F
7B3B4:  ITT NE
7B3B6:  LDRNE           R0, [SP,#0x50+var_30]; void *
7B3B8:  BLXNE           j__ZdlPv; operator delete(void *)
7B3BC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x7B3C6); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)> ...
7B3BE:  MOV             R6, SP
7B3C0:  LDR             R1, [R4,#0x6C]
7B3C2:  ADD             R0, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)>
7B3C4:  STR             R6, [SP,#0x50+var_40]
7B3C6:  ADDS            R0, #8
7B3C8:  ADDS            R1, #0x58 ; 'X'
7B3CA:  STR             R0, [SP,#0x50+var_50]
7B3CC:  STR             R0, [SP,#0x50+var_38]
7B3CE:  MOV             R0, R5
7B3D0:  STR             R5, [SP,#0x50+var_28]
7B3D2:  BL              sub_737F4
7B3D6:  LDR             R0, [SP,#0x50+var_28]
7B3D8:  CMP             R5, R0
7B3DA:  BEQ             loc_7B3E2
7B3DC:  CBZ             R0, loc_7B3EC
7B3DE:  MOVS            R1, #5
7B3E0:  B               loc_7B3E4
7B3E2:  MOVS            R1, #4
7B3E4:  LDR             R2, [R0]
7B3E6:  LDR.W           R1, [R2,R1,LSL#2]
7B3EA:  BLX             R1
7B3EC:  LDR             R0, [SP,#0x50+var_40]
7B3EE:  CMP             R6, R0
7B3F0:  BEQ             loc_7B3F8
7B3F2:  CBZ             R0, loc_7B402
7B3F4:  MOVS            R1, #5
7B3F6:  B               loc_7B3FA
7B3F8:  MOVS            R1, #4
7B3FA:  LDR             R2, [R0]
7B3FC:  LDR.W           R1, [R2,R1,LSL#2]
7B400:  BLX             R1
7B402:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x7B40A); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_1,std::allocator<Spawn::Spawn(void)::$_1>,void ()(void)> ...
7B404:  LDR             R1, [R4,#0x70]
7B406:  ADD             R0, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_1,std::allocator<Spawn::Spawn(void)::$_1>,void ()(void)>
7B408:  STR             R6, [SP,#0x50+var_40]
7B40A:  ADDS            R0, #8
7B40C:  ADDS            R1, #0x58 ; 'X'
7B40E:  STR             R0, [SP,#0x50+var_50]
7B410:  STR             R0, [SP,#0x50+var_38]
7B412:  MOV             R0, R5
7B414:  STR             R5, [SP,#0x50+var_28]
7B416:  BL              sub_737F4
7B41A:  LDR             R0, [SP,#0x50+var_28]
7B41C:  CMP             R5, R0
7B41E:  BEQ             loc_7B426
7B420:  CBZ             R0, loc_7B430
7B422:  MOVS            R1, #5
7B424:  B               loc_7B428
7B426:  MOVS            R1, #4
7B428:  LDR             R2, [R0]
7B42A:  LDR.W           R1, [R2,R1,LSL#2]
7B42E:  BLX             R1
7B430:  LDR             R0, [SP,#0x50+var_40]
7B432:  CMP             R6, R0
7B434:  BEQ             loc_7B43C
7B436:  CBZ             R0, loc_7B446
7B438:  MOVS            R1, #5
7B43A:  B               loc_7B43E
7B43C:  MOVS            R1, #4
7B43E:  LDR             R2, [R0]
7B440:  LDR.W           R1, [R2,R1,LSL#2]
7B444:  BLX             R1
7B446:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x7B44E); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)> ...
7B448:  LDR             R1, [R4,#0x74]
7B44A:  ADD             R0, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)>
7B44C:  STR             R6, [SP,#0x50+var_40]
7B44E:  ADDS            R0, #8
7B450:  ADDS            R1, #0x58 ; 'X'
7B452:  STR             R0, [SP,#0x50+var_50]
7B454:  STR             R0, [SP,#0x50+var_38]
7B456:  MOV             R0, R5
7B458:  STR             R5, [SP,#0x50+var_28]
7B45A:  BL              sub_737F4
7B45E:  LDR             R0, [SP,#0x50+var_28]
7B460:  CMP             R5, R0
7B462:  BEQ             loc_7B46A
7B464:  CBZ             R0, loc_7B474
7B466:  MOVS            R1, #5
7B468:  B               loc_7B46C
7B46A:  MOVS            R1, #4
7B46C:  LDR             R2, [R0]
7B46E:  LDR.W           R1, [R2,R1,LSL#2]
7B472:  BLX             R1
7B474:  LDR             R0, [SP,#0x50+var_40]
7B476:  CMP             R6, R0
7B478:  BEQ             loc_7B480
7B47A:  CBZ             R0, loc_7B48A
7B47C:  MOVS            R1, #5
7B47E:  B               loc_7B482
7B480:  MOVS            R1, #4
7B482:  LDR             R2, [R0]
7B484:  LDR.W           R1, [R2,R1,LSL#2]
7B488:  BLX             R1
7B48A:  LDR             R1, [R4,#0x6C]
7B48C:  MOV             R0, R4
7B48E:  BL              sub_7C73C
7B492:  LDR             R1, [R4,#0x70]
7B494:  MOV             R0, R4
7B496:  BL              sub_7C73C
7B49A:  LDR             R1, [R4,#0x74]
7B49C:  MOV             R0, R4
7B49E:  BL              sub_7C73C
7B4A2:  LDR             R0, [SP,#0x50+var_1C]
7B4A4:  LDR             R1, =(__stack_chk_guard_ptr - 0x7B4AA)
7B4A6:  ADD             R1, PC; __stack_chk_guard_ptr
7B4A8:  LDR             R1, [R1]; __stack_chk_guard
7B4AA:  LDR             R1, [R1]
7B4AC:  CMP             R1, R0
7B4AE:  ITTTT EQ
7B4B0:  MOVEQ           R0, R4
7B4B2:  ADDEQ           SP, SP, #0x38 ; '8'
7B4B4:  VPOPEQ          {D8}
7B4B8:  POPEQ.W         {R8}
7B4BC:  IT EQ
7B4BE:  POPEQ           {R4-R7,PC}
7B4C0:  BLX             __stack_chk_fail
