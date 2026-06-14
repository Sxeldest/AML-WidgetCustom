; =========================================================
; Game Engine Function: _ZSt17rethrow_exceptionSt13exception_ptr
; Address            : 0xE30F6 - 0xE3104
; =========================================================

E30F6:  PUSH            {R7,LR}
E30F8:  MOV             R7, SP
E30FA:  LDR             R0, [R0]
E30FC:  BLX             j___cxa_rethrow_primary_exception
E3100:  BLX             j__ZSt9terminatev; std::terminate(void)
