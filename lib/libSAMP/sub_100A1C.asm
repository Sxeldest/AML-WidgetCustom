; =========================================================
; Game Engine Function: sub_100A1C
; Address            : 0x100A1C - 0x100A36
; =========================================================

100A1C:  PUSH            {R7,LR}
100A1E:  MOV             R7, SP
100A20:  MOV             R2, R0
100A22:  LDR             R0, [R0]; this
100A24:  STR             R1, [R2]
100A26:  CBZ             R0, locret_100A34
100A28:  BLX             j__ZNSt6__ndk115__thread_structD2Ev; std::__thread_struct::~__thread_struct()
100A2C:  POP.W           {R7,LR}
100A30:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
100A34:  POP             {R7,PC}
