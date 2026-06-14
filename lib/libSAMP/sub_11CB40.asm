; =========================================================
; Game Engine Function: sub_11CB40
; Address            : 0x11CB40 - 0x11CB58
; =========================================================

11CB40:  PUSH            {R4,R6,R7,LR}
11CB42:  ADD             R7, SP, #8
11CB44:  MOV             R4, R0
11CB46:  LDR             R0, [R0,#4]; void *
11CB48:  CBZ             R0, loc_11CB4E
11CB4A:  BLX             j__ZdlPv; operator delete(void *)
11CB4E:  MOV             R0, R4; void *
11CB50:  POP.W           {R4,R6,R7,LR}
11CB54:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
