; =========================================================
; Game Engine Function: sub_158756
; Address            : 0x158756 - 0x15876C
; =========================================================

158756:  PUSH            {R4,R6,R7,LR}
158758:  ADD             R7, SP, #8
15875A:  LDR             R4, [R0,#0xC]
15875C:  LDR             R0, [R4]
15875E:  BL              sub_164AF4
158762:  MOV             R0, R4; void *
158764:  POP.W           {R4,R6,R7,LR}
158768:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
