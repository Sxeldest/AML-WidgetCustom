; =========================================================
; Game Engine Function: sub_158FC0
; Address            : 0x158FC0 - 0x158FDC
; =========================================================

158FC0:  PUSH            {R4,R6,R7,LR}
158FC2:  ADD             R7, SP, #8
158FC4:  LDR             R4, [R0]
158FC6:  STR             R1, [R0]
158FC8:  CBZ             R4, locret_158FDA
158FCA:  LDR             R0, [R4]
158FCC:  BL              sub_164BE4
158FD0:  MOV             R0, R4; void *
158FD2:  POP.W           {R4,R6,R7,LR}
158FD6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
158FDA:  POP             {R4,R6,R7,PC}
