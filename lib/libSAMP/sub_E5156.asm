; =========================================================
; Game Engine Function: sub_E5156
; Address            : 0xE5156 - 0xE5166
; =========================================================

E5156:  PUSH            {R7,LR}
E5158:  MOV             R7, SP
E515A:  BL              sub_E50B0
E515E:  POP.W           {R7,LR}
E5162:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
