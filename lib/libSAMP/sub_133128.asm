; =========================================================
; Game Engine Function: sub_133128
; Address            : 0x133128 - 0x133138
; =========================================================

133128:  PUSH            {R7,LR}
13312A:  MOV             R7, SP
13312C:  BL              sub_12BCE4
133130:  POP.W           {R7,LR}
133134:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
