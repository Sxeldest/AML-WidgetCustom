; =========================================================
; Game Engine Function: sub_EB05C
; Address            : 0xEB05C - 0xEB082
; =========================================================

EB05C:  PUSH            {R4,R6,R7,LR}
EB05E:  ADD             R7, SP, #8
EB060:  MOV             R4, R0
EB062:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xEB068); `vtable for'nlohmann::detail::exception ...
EB064:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
EB066:  ADD.W           R1, R0, #8
EB06A:  MOV             R0, R4
EB06C:  STR.W           R1, [R0],#8; this
EB070:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
EB074:  MOV             R0, R4; this
EB076:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
EB07A:  POP.W           {R4,R6,R7,LR}
EB07E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
