; =========================================================
; Game Engine Function: sub_15E238
; Address            : 0x15E238 - 0x15E260
; =========================================================

15E238:  PUSH            {R4,R6,R7,LR}
15E23A:  ADD             R7, SP, #8
15E23C:  MOV             R4, R0
15E23E:  LDR             R0, =(_ZTV13OpusException - 0x15E246); `vtable for'OpusException ...
15E240:  LDRB            R1, [R4,#0xC]
15E242:  ADD             R0, PC; `vtable for'OpusException
15E244:  ADDS            R0, #8
15E246:  STR             R0, [R4]
15E248:  LSLS            R0, R1, #0x1F
15E24A:  ITT NE
15E24C:  LDRNE           R0, [R4,#0x14]; void *
15E24E:  BLXNE           j__ZdlPv; operator delete(void *)
15E252:  MOV             R0, R4; this
15E254:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
15E258:  POP.W           {R4,R6,R7,LR}
15E25C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
