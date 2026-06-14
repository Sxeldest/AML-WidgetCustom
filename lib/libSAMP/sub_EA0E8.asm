; =========================================================
; Game Engine Function: sub_EA0E8
; Address            : 0xEA0E8 - 0xEA10E
; =========================================================

EA0E8:  PUSH            {R4,R6,R7,LR}
EA0EA:  ADD             R7, SP, #8
EA0EC:  MOV             R4, R0
EA0EE:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xEA0F4); `vtable for'nlohmann::detail::exception ...
EA0F0:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
EA0F2:  ADD.W           R1, R0, #8
EA0F6:  MOV             R0, R4
EA0F8:  STR.W           R1, [R0],#8; this
EA0FC:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
EA100:  MOV             R0, R4; this
EA102:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
EA106:  POP.W           {R4,R6,R7,LR}
EA10A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
