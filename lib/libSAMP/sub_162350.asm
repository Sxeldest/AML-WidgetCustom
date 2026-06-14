; =========================================================
; Game Engine Function: sub_162350
; Address            : 0x162350 - 0x1623BC
; =========================================================

162350:  PUSH            {R4-R7,LR}
162352:  ADD             R7, SP, #0xC
162354:  PUSH.W          {R11}
162358:  SUB             SP, SP, #0x10
16235A:  MOVS            R5, #0
16235C:  MOV             R4, R0
16235E:  STRD.W          R5, R5, [R0]
162362:  MOVS            R0, #0x10; unsigned int
162364:  BLX             j__Znwj; operator new(uint)
162368:  LDR             R1, =(_ZTV15pool_log_filter - 0x162370); `vtable for'pool_log_filter ...
16236A:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI15pool_log_filterNS_9allocatorIS1_EEEE - 0x162374); `vtable for'std::__shared_ptr_emplace<pool_log_filter> ...
16236C:  ADD             R1, PC; `vtable for'pool_log_filter
16236E:  STR             R5, [R0,#8]
162370:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<pool_log_filter>
162372:  ADDS            R1, #8
162374:  ADDS            R2, #8
162376:  STRD.W          R2, R5, [R0]
16237A:  MOV             R2, R0
16237C:  STR.W           R1, [R2,#0xC]!
162380:  STRD.W          R2, R0, [R4]
162384:  MOVS            R0, #1
162386:  BL              sub_F0ED8
16238A:  LDRD.W          R2, R1, [R4]
16238E:  STRD.W          R2, R1, [SP,#0x20+var_18]
162392:  CBZ             R1, loc_1623A4
162394:  ADDS            R1, #8
162396:  LDREX.W         R2, [R1]
16239A:  ADDS            R2, #1
16239C:  STREX.W         R3, R2, [R1]
1623A0:  CMP             R3, #0
1623A2:  BNE             loc_162396
1623A4:  ADD             R1, SP, #0x20+var_18
1623A6:  BL              sub_15FF90
1623AA:  LDR             R0, [SP,#0x20+var_14]; this
1623AC:  CBZ             R0, loc_1623B2
1623AE:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1623B2:  MOV             R0, R4
1623B4:  ADD             SP, SP, #0x10
1623B6:  POP.W           {R11}
1623BA:  POP             {R4-R7,PC}
