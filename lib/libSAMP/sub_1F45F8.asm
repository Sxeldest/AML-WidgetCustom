; =========================================================
; Game Engine Function: sub_1F45F8
; Address            : 0x1F45F8 - 0x1F461E
; =========================================================

1F45F8:  PUSH            {R4,R5,R7,LR}
1F45FA:  ADD             R7, SP, #8
1F45FC:  MOV             R5, R0
1F45FE:  MOVS            R0, #8; thrown_size
1F4600:  BLX             j___cxa_allocate_exception
1F4604:  MOV             R4, R0
1F4606:  MOV             R1, R5
1F4608:  BL              sub_1F4630
1F460C:  LDR             R0, =(_ZTISt14overflow_error_ptr - 0x1F4612)
1F460E:  ADD             R0, PC; _ZTISt14overflow_error_ptr
1F4610:  LDR             R1, [R0]; lptinfo
1F4612:  LDR             R0, =(_ZNSt15underflow_errorD2Ev_ptr_0 - 0x1F4618)
1F4614:  ADD             R0, PC; _ZNSt15underflow_errorD2Ev_ptr_0
1F4616:  LDR             R2, [R0]; std::underflow_error::~underflow_error() ; void (*)(void *)
1F4618:  MOV             R0, R4; void *
1F461A:  BLX             j___cxa_throw
