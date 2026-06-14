; =========================================================
; Game Engine Function: _ZNK26CTaskComplexSmartFleePoint5CloneEv
; Address            : 0x514C34 - 0x514C9A
; =========================================================

514C34:  PUSH            {R4-R7,LR}
514C36:  ADD             R7, SP, #0xC
514C38:  PUSH.W          {R8}
514C3C:  MOV             R4, R0
514C3E:  MOVS            R0, #dword_44; this
514C40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514C44:  LDRB.W          R8, [R4,#0x24]
514C48:  LDRD.W          R5, R6, [R4,#0x28]
514C4C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
514C50:  LDR             R1, =(_ZTV26CTaskComplexSmartFleePoint_ptr - 0x514C58)
514C52:  MOVS            R2, #0
514C54:  ADD             R1, PC; _ZTV26CTaskComplexSmartFleePoint_ptr
514C56:  LDR             R1, [R1]; `vtable for'CTaskComplexSmartFleePoint ...
514C58:  ADDS            R1, #8
514C5A:  STR             R1, [R0]
514C5C:  LDR             R1, [R4,#0x20]
514C5E:  VLDR            D16, [R4,#0x18]
514C62:  STR             R1, [R0,#0x20]
514C64:  MOVS            R1, #7
514C66:  STRD.W          R5, R6, [R0,#0x28]
514C6A:  STRD.W          R1, R2, [R0,#0x30]
514C6E:  ADDS            R1, R5, #1
514C70:  STR             R2, [R0,#0x38]
514C72:  STRB.W          R8, [R0,#0x24]
514C76:  STRH            R2, [R0,#0x3C]
514C78:  STRH.W          R2, [R0,#0x40]
514C7C:  VSTR            D16, [R0,#0x18]
514C80:  BEQ             loc_514C94
514C82:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x514C88)
514C84:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
514C86:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
514C88:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
514C8A:  STRD.W          R1, R5, [R0,#0x34]
514C8E:  MOVS            R1, #1
514C90:  STRB.W          R1, [R0,#0x3C]
514C94:  POP.W           {R8}
514C98:  POP             {R4-R7,PC}
