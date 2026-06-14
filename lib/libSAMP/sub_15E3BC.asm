; =========================================================
; Game Engine Function: sub_15E3BC
; Address            : 0x15E3BC - 0x15E3E4
; =========================================================

15E3BC:  PUSH            {R4,R6,R7,LR}
15E3BE:  ADD             R7, SP, #8
15E3C0:  MOV             R4, R0
15E3C2:  LDR             R0, =(_ZTV13OpusException - 0x15E3CA); `vtable for'OpusException ...
15E3C4:  LDRB            R1, [R4,#0xC]
15E3C6:  ADD             R0, PC; `vtable for'OpusException
15E3C8:  ADDS            R0, #8
15E3CA:  STR             R0, [R4]
15E3CC:  LSLS            R0, R1, #0x1F
15E3CE:  ITT NE
15E3D0:  LDRNE           R0, [R4,#0x14]; void *
15E3D2:  BLXNE           j__ZdlPv; operator delete(void *)
15E3D6:  MOV             R0, R4; this
15E3D8:  BLX             j__ZNSt15underflow_errorD2Ev_0; std::underflow_error::~underflow_error()
15E3DC:  POP.W           {R4,R6,R7,LR}
15E3E0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
