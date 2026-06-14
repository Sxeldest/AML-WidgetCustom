; =========================================================
; Game Engine Function: sub_15E1D0
; Address            : 0x15E1D0 - 0x15E1F8
; =========================================================

15E1D0:  PUSH            {R4,R6,R7,LR}
15E1D2:  ADD             R7, SP, #8
15E1D4:  MOV             R4, R0
15E1D6:  LDR             R0, =(_ZTV13OpusException - 0x15E1DE); `vtable for'OpusException ...
15E1D8:  LDRB            R1, [R4,#0xC]
15E1DA:  ADD             R0, PC; `vtable for'OpusException
15E1DC:  ADDS            R0, #8
15E1DE:  STR             R0, [R4]
15E1E0:  LSLS            R0, R1, #0x1F
15E1E2:  ITT NE
15E1E4:  LDRNE           R0, [R4,#0x14]; void *
15E1E6:  BLXNE           j__ZdlPv; operator delete(void *)
15E1EA:  MOV             R0, R4; this
15E1EC:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
15E1F0:  POP.W           {R4,R6,R7,LR}
15E1F4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
