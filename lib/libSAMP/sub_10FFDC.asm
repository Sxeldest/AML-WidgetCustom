; =========================================================
; Game Engine Function: sub_10FFDC
; Address            : 0x10FFDC - 0x10FFF4
; =========================================================

10FFDC:  PUSH            {R4,R6,R7,LR}
10FFDE:  ADD             R7, SP, #8
10FFE0:  MOV             R4, R0
10FFE2:  LDR             R0, [R0,#4]; void *
10FFE4:  CBZ             R0, loc_10FFEA
10FFE6:  BLX             j__ZdlPv; operator delete(void *)
10FFEA:  MOV             R0, R4; void *
10FFEC:  POP.W           {R4,R6,R7,LR}
10FFF0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
