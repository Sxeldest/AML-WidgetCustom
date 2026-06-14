; =========================================================
; Game Engine Function: sub_126ACC
; Address            : 0x126ACC - 0x126AE4
; =========================================================

126ACC:  PUSH            {R4,R6,R7,LR}
126ACE:  ADD             R7, SP, #8
126AD0:  MOV             R4, R0
126AD2:  LDR             R0, [R0,#4]; void *
126AD4:  CBZ             R0, loc_126ADA
126AD6:  BLX             j__ZdlPv; operator delete(void *)
126ADA:  MOV             R0, R4; void *
126ADC:  POP.W           {R4,R6,R7,LR}
126AE0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
