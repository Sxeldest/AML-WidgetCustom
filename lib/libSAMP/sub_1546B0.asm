; =========================================================
; Game Engine Function: sub_1546B0
; Address            : 0x1546B0 - 0x1546D8
; =========================================================

1546B0:  PUSH            {R4,R6,R7,LR}
1546B2:  ADD             R7, SP, #8
1546B4:  MOV             R4, R0
1546B6:  LDR             R0, =(_ZTV13BassException - 0x1546BE); `vtable for'BassException ...
1546B8:  LDRB            R1, [R4,#0xC]
1546BA:  ADD             R0, PC; `vtable for'BassException
1546BC:  ADDS            R0, #8
1546BE:  STR             R0, [R4]
1546C0:  LSLS            R0, R1, #0x1F
1546C2:  ITT NE
1546C4:  LDRNE           R0, [R4,#0x14]; void *
1546C6:  BLXNE           j__ZdlPv; operator delete(void *)
1546CA:  MOV             R0, R4; this
1546CC:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
1546D0:  POP.W           {R4,R6,R7,LR}
1546D4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
