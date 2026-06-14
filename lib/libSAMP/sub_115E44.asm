; =========================================================
; Game Engine Function: sub_115E44
; Address            : 0x115E44 - 0x115E5C
; =========================================================

115E44:  PUSH            {R4,R6,R7,LR}
115E46:  ADD             R7, SP, #8
115E48:  MOV             R4, R0
115E4A:  LDR             R0, [R0,#4]; void *
115E4C:  CBZ             R0, loc_115E52
115E4E:  BLX             j__ZdlPv; operator delete(void *)
115E52:  MOV             R0, R4; void *
115E54:  POP.W           {R4,R6,R7,LR}
115E58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
