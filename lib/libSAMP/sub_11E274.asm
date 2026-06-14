; =========================================================
; Game Engine Function: sub_11E274
; Address            : 0x11E274 - 0x11E284
; =========================================================

11E274:  PUSH            {R7,LR}
11E276:  MOV             R7, SP
11E278:  BL              sub_11E028
11E27C:  POP.W           {R7,LR}
11E280:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
