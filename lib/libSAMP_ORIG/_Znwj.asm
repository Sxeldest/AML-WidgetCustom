; =========================================================
; Game Engine Function: _Znwj
; Address            : 0xF80F8 - 0xF8132
; =========================================================

F80F8:  PUSH            {R4,R6,R7,LR}
F80FA:  ADD             R7, SP, #8
F80FC:  MOV             R4, R0
F80FE:  CMP             R0, #0
F8100:  IT EQ
F8102:  MOVEQ           R4, #1
F8104:  MOV             R0, R4; size
F8106:  BLX             malloc
F810A:  CBNZ            R0, locret_F8116
F810C:  BLX             j__ZSt15get_new_handlerv; std::get_new_handler(void)
F8110:  CBZ             R0, loc_F8118
F8112:  BLX             R0
F8114:  B               loc_F8104
F8116:  POP             {R4,R6,R7,PC}
F8118:  MOVS            R0, #4; thrown_size
F811A:  BLX             j___cxa_allocate_exception
F811E:  BLX             j__ZNSt9bad_allocC2Ev; std::bad_alloc::bad_alloc(void)
F8122:  LDR             R1, =(_ZTISt9bad_alloc_ptr - 0xF812A)
F8124:  LDR             R2, =(_ZNSt9exceptionD2Ev_ptr_1 - 0xF812C)
F8126:  ADD             R1, PC; _ZTISt9bad_alloc_ptr
F8128:  ADD             R2, PC; _ZNSt9exceptionD2Ev_ptr_1
F812A:  LDR             R1, [R1]; lptinfo
F812C:  LDR             R2, [R2]; std::exception::~exception() ; void (*)(void *)
F812E:  BLX             j___cxa_throw
