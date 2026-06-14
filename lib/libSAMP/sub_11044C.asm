; =========================================================
; Game Engine Function: sub_11044C
; Address            : 0x11044C - 0x11045C
; =========================================================

11044C:  PUSH            {R7,LR}
11044E:  MOV             R7, SP
110450:  BL              sub_1101AC
110454:  POP.W           {R7,LR}
110458:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
