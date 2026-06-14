; =========================================================
; Game Engine Function: sub_EA406
; Address            : 0xEA406 - 0xEA428
; =========================================================

EA406:  PUSH            {R4,R6,R7,LR}
EA408:  ADD             R7, SP, #8
EA40A:  MOV             R4, R1
EA40C:  LDRB            R1, [R0,#4]
EA40E:  CBZ             R1, loc_EA41A
EA410:  LDR             R0, [R0]
EA412:  ADD.W           R1, R4, #0x10
EA416:  BL              sub_E5EAC
EA41A:  CBZ             R4, locret_EA426
EA41C:  MOV             R0, R4; void *
EA41E:  POP.W           {R4,R6,R7,LR}
EA422:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
EA426:  POP             {R4,R6,R7,PC}
