; =========================================================
; Game Engine Function: sub_134028
; Address            : 0x134028 - 0x134038
; =========================================================

134028:  PUSH            {R7,LR}
13402A:  MOV             R7, SP
13402C:  BL              sub_133FF0
134030:  POP.W           {R7,LR}
134034:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
