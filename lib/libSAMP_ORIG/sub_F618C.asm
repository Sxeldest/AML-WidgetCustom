; =========================================================
; Game Engine Function: sub_F618C
; Address            : 0xF618C - 0xF619C
; =========================================================

F618C:  PUSH            {R7,LR}
F618E:  MOV             R7, SP
F6190:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev; std::__shared_weak_count::~__shared_weak_count()
F6194:  POP.W           {R7,LR}
F6198:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
