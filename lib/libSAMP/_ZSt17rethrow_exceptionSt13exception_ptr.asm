; =========================================================
; Game Engine Function: _ZSt17rethrow_exceptionSt13exception_ptr
; Address            : 0x1ED80E - 0x1ED81C
; =========================================================

1ED80E:  PUSH            {R7,LR}
1ED810:  MOV             R7, SP
1ED812:  LDR             R0, [R0]
1ED814:  BLX             j___cxa_rethrow_primary_exception
1ED818:  BLX             j__ZSt9terminatev; std::terminate(void)
