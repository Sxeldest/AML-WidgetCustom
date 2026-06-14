; =========================================================
; Game Engine Function: sub_F1368
; Address            : 0xF1368 - 0xF138E
; =========================================================

F1368:  PUSH            {R4,R6,R7,LR}
F136A:  ADD             R7, SP, #8
F136C:  MOV             R4, R0
F136E:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI8ChatIconNS_9allocatorIS1_EEEE - 0xF1374); `vtable for'std::__shared_ptr_emplace<ChatIcon> ...
F1370:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<ChatIcon>
F1372:  ADD.W           R1, R0, #8
F1376:  MOV             R0, R4
F1378:  STR.W           R1, [R0],#0xC
F137C:  BL              sub_10BB92
F1380:  MOV             R0, R4; this
F1382:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
F1386:  POP.W           {R4,R6,R7,LR}
F138A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
