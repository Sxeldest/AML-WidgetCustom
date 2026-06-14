; =========================================================
; Game Engine Function: sub_10CD04
; Address            : 0x10CD04 - 0x10CD1C
; =========================================================

10CD04:  PUSH            {R4,R6,R7,LR}
10CD06:  ADD             R7, SP, #8
10CD08:  MOV             R4, R0
10CD0A:  LDR             R0, [R0,#4]; void *
10CD0C:  CBZ             R0, loc_10CD12
10CD0E:  BLX             j__ZdlPv; operator delete(void *)
10CD12:  MOV             R0, R4; void *
10CD14:  POP.W           {R4,R6,R7,LR}
10CD18:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
