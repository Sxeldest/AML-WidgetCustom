; =========================================================
; Game Engine Function: sub_DC92C
; Address            : 0xDC92C - 0xDC954
; =========================================================

DC92C:  PUSH            {R7,LR}
DC92E:  MOV             R7, SP
DC930:  MOVS            R0, #4; thrown_size
DC932:  BLX             j___cxa_allocate_exception
DC936:  LDR             R1, =(_ZTVNSt6__ndk117bad_function_callE_ptr - 0xDC940)
DC938:  LDR             R2, =(_ZTINSt6__ndk117bad_function_callE_ptr - 0xDC942)
DC93A:  LDR             R3, =(_ZNSt9exceptionD2Ev_ptr - 0xDC944)
DC93C:  ADD             R1, PC; _ZTVNSt6__ndk117bad_function_callE_ptr
DC93E:  ADD             R2, PC; _ZTINSt6__ndk117bad_function_callE_ptr
DC940:  ADD             R3, PC; _ZNSt9exceptionD2Ev_ptr
DC942:  LDR.W           R12, [R1]; `vtable for'std::bad_function_call ...
DC946:  LDR             R1, [R2]; lptinfo
DC948:  LDR             R2, [R3]; std::exception::~exception() ; void (*)(void *)
DC94A:  ADD.W           R3, R12, #8
DC94E:  STR             R3, [R0]
DC950:  BLX             j___cxa_throw
