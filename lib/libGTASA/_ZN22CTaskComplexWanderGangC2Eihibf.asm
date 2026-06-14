; =========================================================
; Game Engine Function: _ZN22CTaskComplexWanderGangC2Eihibf
; Address            : 0x521968 - 0x5219CC
; =========================================================

521968:  PUSH            {R4-R7,LR}
52196A:  ADD             R7, SP, #0xC
52196C:  PUSH.W          {R11}
521970:  MOV             R4, R3
521972:  MOV             R5, R2
521974:  MOV             R6, R1
521976:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52197A:  VLDR            S0, [R7,#arg_4]
52197E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x521988)
521980:  LDR             R2, =(_ZTV22CTaskComplexWanderGang_ptr - 0x521994)
521982:  STRB            R5, [R0,#0x10]
521984:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
521986:  STR             R6, [R0,#0xC]
521988:  MOVW            R6, #0xFFFF
52198C:  VSTR            S0, [R0,#0x14]
521990:  ADD             R2, PC; _ZTV22CTaskComplexWanderGang_ptr
521992:  STRH            R6, [R0,#0x18]
521994:  STRH            R6, [R0,#0x1C]
521996:  MOVS            R6, #0
521998:  STR             R6, [R0,#0x20]
52199A:  STRH            R6, [R0,#0x30]
52199C:  LDRB.W          R5, [R0,#0x24]
5219A0:  LDR             R2, [R2]; `vtable for'CTaskComplexWanderGang ...
5219A2:  LDR             R3, [R7,#arg_0]
5219A4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5219A6:  ADDS            R2, #8
5219A8:  STR             R4, [R0,#0x34]
5219AA:  STRD.W          R6, R6, [R0,#0x28]
5219AE:  AND.W           R6, R5, #0xF0
5219B2:  ORRS            R3, R6
5219B4:  STRB.W          R3, [R0,#0x24]
5219B8:  STR             R2, [R0]
5219BA:  MOVS            R2, #1
5219BC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5219BE:  STRB.W          R2, [R0,#0x30]
5219C2:  STRD.W          R1, R4, [R0,#0x28]
5219C6:  POP.W           {R11}
5219CA:  POP             {R4-R7,PC}
