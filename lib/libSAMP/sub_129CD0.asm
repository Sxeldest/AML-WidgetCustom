; =========================================================
; Game Engine Function: sub_129CD0
; Address            : 0x129CD0 - 0x129CE0
; =========================================================

129CD0:  PUSH            {R7,LR}
129CD2:  MOV             R7, SP
129CD4:  BL              sub_129B48
129CD8:  POP.W           {R7,LR}
129CDC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
