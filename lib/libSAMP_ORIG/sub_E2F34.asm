; =========================================================
; Game Engine Function: sub_E2F34
; Address            : 0xE2F34 - 0xE2F44
; =========================================================

E2F34:  PUSH            {R7,LR}
E2F36:  MOV             R7, SP
E2F38:  BLX             j__ZNSt6__ndk114error_categoryD2Ev; std::error_category::~error_category()
E2F3C:  POP.W           {R7,LR}
E2F40:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
