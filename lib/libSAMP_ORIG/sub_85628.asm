; =========================================================
; Game Engine Function: sub_85628
; Address            : 0x85628 - 0x85650
; =========================================================

85628:  PUSH            {R7,LR}
8562A:  MOV             R7, SP
8562C:  MOVS            R0, #4; thrown_size
8562E:  BLX             j___cxa_allocate_exception
85632:  LDR             R1, =(_ZTVNSt6__ndk117bad_function_callE_ptr - 0x8563C)
85634:  LDR             R2, =(_ZTINSt6__ndk117bad_function_callE_ptr - 0x8563E)
85636:  LDR             R3, =(_ZNSt9exceptionD2Ev_ptr_0 - 0x85640)
85638:  ADD             R1, PC; _ZTVNSt6__ndk117bad_function_callE_ptr
8563A:  ADD             R2, PC; _ZTINSt6__ndk117bad_function_callE_ptr
8563C:  ADD             R3, PC; _ZNSt9exceptionD2Ev_ptr_0
8563E:  LDR.W           R12, [R1]; `vtable for'std::bad_function_call ...
85642:  LDR             R1, [R2]; lptinfo
85644:  LDR             R2, [R3]; std::exception::~exception() ; void (*)(void *)
85646:  ADD.W           R3, R12, #8
8564A:  STR             R3, [R0]
8564C:  BLX             j___cxa_throw
