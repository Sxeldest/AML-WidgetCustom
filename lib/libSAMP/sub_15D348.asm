; =========================================================
; Game Engine Function: sub_15D348
; Address            : 0x15D348 - 0x15D390
; =========================================================

15D348:  PUSH            {R4,R5,R7,LR}
15D34A:  ADD             R7, SP, #8
15D34C:  MOV             R5, R0
15D34E:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN12SoundStorage5SoundENS_9allocatorIS2_EEEE - 0x15D354); `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound> ...
15D350:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound>
15D352:  ADDS            R0, #8
15D354:  STR             R0, [R5]
15D356:  ADD.W           R0, R5, #0x14
15D35A:  BL              sub_1587E8
15D35E:  LDR             R0, [R5,#0x10]
15D360:  CBZ             R0, loc_15D382
15D362:  ADDS            R1, R0, #4
15D364:  DMB.W           ISH
15D368:  LDREX.W         R2, [R1]
15D36C:  SUBS            R3, R2, #1
15D36E:  STREX.W         R4, R3, [R1]
15D372:  CMP             R4, #0
15D374:  BNE             loc_15D368
15D376:  DMB.W           ISH
15D37A:  CBNZ            R2, loc_15D382
15D37C:  LDR             R1, [R0]
15D37E:  LDR             R1, [R1,#8]
15D380:  BLX             R1
15D382:  MOV             R0, R5; this
15D384:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
15D388:  POP.W           {R4,R5,R7,LR}
15D38C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
