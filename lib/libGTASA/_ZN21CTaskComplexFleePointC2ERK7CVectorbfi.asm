; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePointC2ERK7CVectorbfi
; Address            : 0x5128D0 - 0x51292A
; =========================================================

5128D0:  PUSH            {R4-R7,LR}
5128D2:  ADD             R7, SP, #0xC
5128D4:  PUSH.W          {R11}
5128D8:  MOV             R4, R3
5128DA:  MOV             R5, R2
5128DC:  MOV             R6, R1
5128DE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5128E2:  LDR             R1, =(_ZTV21CTaskComplexFleePoint_ptr - 0x5128E8)
5128E4:  ADD             R1, PC; _ZTV21CTaskComplexFleePoint_ptr
5128E6:  LDR             R1, [R1]; `vtable for'CTaskComplexFleePoint ...
5128E8:  ADDS            R1, #8
5128EA:  STR             R1, [R0]
5128EC:  LDR             R1, [R7,#arg_0]
5128EE:  LDR             R2, [R6,#8]
5128F0:  VLDR            D16, [R6]
5128F4:  STR             R2, [R0,#0x14]
5128F6:  MOVS            R2, #0
5128F8:  STRD.W          R1, R2, [R0,#0x24]
5128FC:  STR             R2, [R0,#0x2C]
5128FE:  STRH            R2, [R0,#0x30]
512900:  STR             R4, [R0,#0x34]
512902:  STRB.W          R5, [R0,#0x38]
512906:  STRB.W          R2, [R0,#0x39]
51290A:  ADDS            R2, R1, #1
51290C:  VSTR            D16, [R0,#0xC]
512910:  BEQ             loc_512924
512912:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51291A)
512914:  MOVS            R3, #1
512916:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
512918:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
51291A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
51291C:  STRB.W          R3, [R0,#0x30]
512920:  STRD.W          R2, R1, [R0,#0x28]
512924:  POP.W           {R11}
512928:  POP             {R4-R7,PC}
