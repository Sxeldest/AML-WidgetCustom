; =========================================================
; Game Engine Function: _ZNK22CTaskComplexWanderGang5CloneEv
; Address            : 0x528BA8 - 0x528C18
; =========================================================

528BA8:  PUSH            {R4-R7,LR}
528BAA:  ADD             R7, SP, #0xC
528BAC:  PUSH.W          {R8}
528BB0:  MOV             R4, R0
528BB2:  MOVS            R0, #dword_38; this
528BB4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528BB8:  LDRB.W          R8, [R4,#0x24]
528BBC:  LDR             R5, [R4,#0x34]
528BBE:  LDR             R6, [R4,#0xC]
528BC0:  LDRB            R4, [R4,#0x10]
528BC2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528BC6:  LDR             R1, =(_ZTV22CTaskComplexWanderGang_ptr - 0x528BD2)
528BC8:  MOV.W           R3, #0x3F000000
528BCC:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x528BD8)
528BCE:  ADD             R1, PC; _ZTV22CTaskComplexWanderGang_ptr
528BD0:  STRB            R4, [R0,#0x10]
528BD2:  STR             R6, [R0,#0xC]
528BD4:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
528BD6:  STR             R3, [R0,#0x14]
528BD8:  MOVW            R3, #0xFFFF
528BDC:  STRH            R3, [R0,#0x18]
528BDE:  STRH            R3, [R0,#0x1C]
528BE0:  MOVS            R3, #0
528BE2:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderGang ...
528BE4:  STR             R3, [R0,#0x20]
528BE6:  STRH            R3, [R0,#0x30]
528BE8:  ADDS            R1, #8
528BEA:  STR             R5, [R0,#0x34]
528BEC:  STRD.W          R3, R3, [R0,#0x28]
528BF0:  LDRB.W          R3, [R0,#0x24]
528BF4:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
528BF6:  STR             R1, [R0]
528BF8:  AND.W           R1, R8, #1
528BFC:  AND.W           R3, R3, #0xF0
528C00:  ORRS            R1, R3
528C02:  STRB.W          R1, [R0,#0x24]
528C06:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
528C08:  STRD.W          R1, R5, [R0,#0x28]
528C0C:  MOVS            R1, #1
528C0E:  STRB.W          R1, [R0,#0x30]
528C12:  POP.W           {R8}
528C16:  POP             {R4-R7,PC}
