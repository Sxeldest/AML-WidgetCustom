; =========================================================
; Game Engine Function: sub_E9C84
; Address            : 0xE9C84 - 0xE9CAA
; =========================================================

E9C84:  PUSH            {R4,R6,R7,LR}
E9C86:  ADD             R7, SP, #8
E9C88:  MOV             R4, R0
E9C8A:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE9C90); `vtable for'nlohmann::detail::exception ...
E9C8C:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E9C8E:  ADD.W           R1, R0, #8
E9C92:  MOV             R0, R4
E9C94:  STR.W           R1, [R0],#8; this
E9C98:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E9C9C:  MOV             R0, R4; this
E9C9E:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E9CA2:  POP.W           {R4,R6,R7,LR}
E9CA6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
