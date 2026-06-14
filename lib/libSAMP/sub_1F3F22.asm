; =========================================================
; Game Engine Function: sub_1F3F22
; Address            : 0x1F3F22 - 0x1F3F32
; =========================================================

1F3F22:  PUSH            {R7,LR}
1F3F24:  MOV             R7, SP
1F3F26:  BLX             j__ZNSt6__ndk114error_categoryD2Ev; std::error_category::~error_category()
1F3F2A:  POP.W           {R7,LR}
1F3F2E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
