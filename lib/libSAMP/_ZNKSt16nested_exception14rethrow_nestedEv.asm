; =========================================================
; Game Engine Function: _ZNKSt16nested_exception14rethrow_nestedEv
; Address            : 0x1ED7E0 - 0x1ED804
; =========================================================

1ED7E0:  PUSH            {R2-R5,R7,LR}
1ED7E2:  ADD             R7, SP, #0x10
1ED7E4:  MOV             R4, R0
1ED7E6:  LDR             R5, [R0,#4]
1ED7E8:  MOVS            R0, #0
1ED7EA:  BLX             j___cxa_decrement_exception_refcount
1ED7EE:  CBNZ            R5, loc_1ED7F4
1ED7F0:  BLX             j__ZSt9terminatev; std::terminate(void)
1ED7F4:  LDR             R4, [R4,#4]
1ED7F6:  STR             R4, [SP,#0x10+var_C]
1ED7F8:  MOV             R0, R4
1ED7FA:  BLX             j___cxa_increment_exception_refcount
1ED7FE:  ADD             R0, SP, #0x10+var_C
1ED800:  BLX             j__ZSt17rethrow_exceptionSt13exception_ptr; std::rethrow_exception(std::exception_ptr)
