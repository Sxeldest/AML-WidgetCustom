; =========================================================
; Game Engine Function: sub_113788
; Address            : 0x113788 - 0x1137AE
; =========================================================

113788:  PUSH            {R4,R6,R7,LR}
11378A:  ADD             R7, SP, #8
11378C:  MOV             R4, R0
11378E:  LDR             R0, =(_ZTVNSt6__ndk120__shared_ptr_emplaceI14CRedAndBlueSpdNS_9allocatorIS1_EEEE - 0x113794); `vtable for'std::__shared_ptr_emplace<CRedAndBlueSpd> ...
113790:  ADD             R0, PC; `vtable for'std::__shared_ptr_emplace<CRedAndBlueSpd>
113792:  ADD.W           R1, R0, #8
113796:  MOV             R0, R4
113798:  STR.W           R1, [R0],#0x10
11379C:  BL              sub_1137C0
1137A0:  MOV             R0, R4; this
1137A2:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
1137A6:  POP.W           {R4,R6,R7,LR}
1137AA:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
