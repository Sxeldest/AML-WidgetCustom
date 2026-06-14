; =========================================================
; Game Engine Function: sub_EA458
; Address            : 0xEA458 - 0xEA47E
; =========================================================

EA458:  PUSH            {R4,R6,R7,LR}
EA45A:  ADD             R7, SP, #8
EA45C:  MOV             R4, R0
EA45E:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xEA464); `vtable for'nlohmann::detail::exception ...
EA460:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
EA462:  ADD.W           R1, R0, #8
EA466:  MOV             R0, R4
EA468:  STR.W           R1, [R0],#8; this
EA46C:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
EA470:  MOV             R0, R4; this
EA472:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
EA476:  POP.W           {R4,R6,R7,LR}
EA47A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
