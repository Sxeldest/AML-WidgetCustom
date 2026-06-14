; =========================================================
; Game Engine Function: sub_1537C6
; Address            : 0x1537C6 - 0x1537D6
; =========================================================

1537C6:  PUSH            {R7,LR}
1537C8:  MOV             R7, SP
1537CA:  BL              sub_150E00
1537CE:  POP.W           {R7,LR}
1537D2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
