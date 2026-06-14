; =========================================================
; Game Engine Function: sub_E60DC
; Address            : 0xE60DC - 0xE6102
; =========================================================

E60DC:  PUSH            {R4,R6,R7,LR}
E60DE:  ADD             R7, SP, #8
E60E0:  MOV             R4, R0
E60E2:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE60E8); `vtable for'nlohmann::detail::exception ...
E60E4:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E60E6:  ADD.W           R1, R0, #8
E60EA:  MOV             R0, R4
E60EC:  STR.W           R1, [R0],#8; this
E60F0:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E60F4:  MOV             R0, R4; this
E60F6:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E60FA:  POP.W           {R4,R6,R7,LR}
E60FE:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
