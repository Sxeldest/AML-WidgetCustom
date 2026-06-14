; =========================================================
; Game Engine Function: sub_1A2090
; Address            : 0x1A2090 - 0x1A20B6
; =========================================================

1A2090:  PUSH            {R4,R6,R7,LR}
1A2092:  ADD             R7, SP, #8
1A2094:  LDR             R0, =(staticState_ptr - 0x1A209C)
1A2096:  MOVS            R1, #0xC0
1A2098:  ADD             R0, PC; staticState_ptr
1A209A:  LDR             R4, [R0]; staticState
1A209C:  MOV             R0, R4
1A209E:  BLX             j___aeabi_memclr8_0
1A20A2:  LDR             R0, =(_ZN10ArrayStateD2Ev_ptr_0 - 0x1A20AC)
1A20A4:  MOV             R1, R4; obj
1A20A6:  LDR             R2, =(unk_67A000 - 0x1A20AE)
1A20A8:  ADD             R0, PC; _ZN10ArrayStateD2Ev_ptr_0
1A20AA:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A20AC:  LDR             R0, [R0]; ArrayState::~ArrayState() ; lpfunc
1A20AE:  POP.W           {R4,R6,R7,LR}
1A20B2:  B.W             j___cxa_atexit
