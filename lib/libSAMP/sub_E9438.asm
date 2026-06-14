; =========================================================
; Game Engine Function: sub_E9438
; Address            : 0xE9438 - 0xE945A
; =========================================================

E9438:  PUSH            {R4,R6,R7,LR}
E943A:  ADD             R7, SP, #8
E943C:  MOV             R4, R0
E943E:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE9444); `vtable for'nlohmann::detail::exception ...
E9440:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E9442:  ADD.W           R1, R0, #8
E9446:  MOV             R0, R4
E9448:  STR.W           R1, [R0],#8; this
E944C:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E9450:  MOV             R0, R4; this
E9452:  POP.W           {R4,R6,R7,LR}
E9456:  B.W             _ZNSt6__ndk112bad_weak_ptrD2Ev_0; std::bad_weak_ptr::~bad_weak_ptr()
