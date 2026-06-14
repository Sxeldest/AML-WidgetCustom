; =========================================================
; Game Engine Function: _ZNKSt16nested_exception14rethrow_nestedEv
; Address            : 0xE30C8 - 0xE30EC
; =========================================================

E30C8:  PUSH            {R2-R5,R7,LR}
E30CA:  ADD             R7, SP, #0x10
E30CC:  MOV             R4, R0
E30CE:  LDR             R5, [R0,#4]
E30D0:  MOVS            R0, #0
E30D2:  BLX             j___cxa_decrement_exception_refcount
E30D6:  CBNZ            R5, loc_E30DC
E30D8:  BLX             j__ZSt9terminatev; std::terminate(void)
E30DC:  LDR             R4, [R4,#4]
E30DE:  STR             R4, [SP,#0x10+var_C]
E30E0:  MOV             R0, R4
E30E2:  BLX             j___cxa_increment_exception_refcount
E30E6:  ADD             R0, SP, #0x10+var_C
E30E8:  BLX             j__ZSt17rethrow_exceptionSt13exception_ptr; std::rethrow_exception(std::exception_ptr)
