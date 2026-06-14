; =========================================================
; Game Engine Function: _ZNK21CTaskComplexFleePoint5CloneEv
; Address            : 0x514B4C - 0x514BAE
; =========================================================

514B4C:  PUSH            {R4-R7,LR}
514B4E:  ADD             R7, SP, #0xC
514B50:  PUSH.W          {R8}
514B54:  MOV             R4, R0
514B56:  MOVS            R0, #off_3C; this
514B58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514B5C:  LDR             R5, [R4,#0x24]
514B5E:  LDR             R6, [R4,#0x34]
514B60:  LDRB.W          R8, [R4,#0x38]
514B64:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
514B68:  LDR             R1, =(_ZTV21CTaskComplexFleePoint_ptr - 0x514B6E)
514B6A:  ADD             R1, PC; _ZTV21CTaskComplexFleePoint_ptr
514B6C:  LDR             R1, [R1]; `vtable for'CTaskComplexFleePoint ...
514B6E:  ADDS            R1, #8
514B70:  STR             R1, [R0]
514B72:  LDR             R1, [R4,#0x14]
514B74:  VLDR            D16, [R4,#0xC]
514B78:  STR             R1, [R0,#0x14]
514B7A:  MOVS            R1, #0
514B7C:  STRD.W          R5, R1, [R0,#0x24]
514B80:  STR             R1, [R0,#0x2C]
514B82:  STRH            R1, [R0,#0x30]
514B84:  STR             R6, [R0,#0x34]
514B86:  STRB.W          R8, [R0,#0x38]
514B8A:  STRB.W          R1, [R0,#0x39]
514B8E:  ADDS            R1, R5, #1
514B90:  VSTR            D16, [R0,#0xC]
514B94:  BEQ             loc_514BA8
514B96:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x514B9C)
514B98:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
514B9A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
514B9C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
514B9E:  STRD.W          R1, R5, [R0,#0x28]
514BA2:  MOVS            R1, #1
514BA4:  STRB.W          R1, [R0,#0x30]
514BA8:  POP.W           {R8}
514BAC:  POP             {R4-R7,PC}
