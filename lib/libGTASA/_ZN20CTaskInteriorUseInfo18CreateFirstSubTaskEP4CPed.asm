; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfo18CreateFirstSubTaskEP4CPed
; Address            : 0x529B48 - 0x529B88
; =========================================================

529B48:  PUSH            {R4-R7,LR}
529B4A:  ADD             R7, SP, #0xC
529B4C:  PUSH.W          {R11}
529B50:  MOV             R4, R0
529B52:  LDR             R0, [R4,#0xC]
529B54:  CBZ             R0, loc_529B80
529B56:  MOVS            R1, #1; unsigned int
529B58:  STRB            R1, [R0,#1]
529B5A:  MOVS            R0, #off_18; this
529B5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529B60:  LDRD.W          R5, R6, [R4,#0xC]
529B64:  LDRB            R4, [R4,#0x18]
529B66:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
529B6A:  LDR             R1, =(_ZTV21CTaskInteriorGoToInfo_ptr - 0x529B70)
529B6C:  ADD             R1, PC; _ZTV21CTaskInteriorGoToInfo_ptr
529B6E:  LDR             R1, [R1]; `vtable for'CTaskInteriorGoToInfo ...
529B70:  ADDS            R1, #8
529B72:  STR             R1, [R0]
529B74:  STRD.W          R5, R6, [R0,#0xC]
529B78:  STRB            R4, [R0,#0x14]
529B7A:  POP.W           {R11}
529B7E:  POP             {R4-R7,PC}
529B80:  MOVS            R0, #0
529B82:  POP.W           {R11}
529B86:  POP             {R4-R7,PC}
