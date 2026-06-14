; =========================================================
; Game Engine Function: sub_20E04C
; Address            : 0x20E04C - 0x20E05C
; =========================================================

20E04C:  PUSH            {R7,LR}
20E04E:  MOV             R7, SP
20E050:  BL              sub_20E000
20E054:  POP.W           {R7,LR}
20E058:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
