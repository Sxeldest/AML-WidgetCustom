; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseEntryExit18CreateFirstSubTaskEP4CPed
; Address            : 0x525EF8 - 0x525F6A
; =========================================================

525EF8:  PUSH            {R4,R6,R7,LR}
525EFA:  ADD             R7, SP, #8
525EFC:  VPUSH           {D8-D11}
525F00:  LDR             R0, [R0,#0xC]
525F02:  VLDR            S16, [R0,#8]
525F06:  VLDR            S18, [R0,#0xC]
525F0A:  VLDR            S20, [R0,#0x10]
525F0E:  VLDR            S22, [R0,#0x14]
525F12:  LDR             R4, [R0,#0x18]
525F14:  MOVS            R0, #word_2C; this
525F16:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525F1A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
525F1E:  VMOV.F32        S0, #0.5
525F22:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x525F34)
525F24:  VADD.F32        S2, S16, S20
525F28:  MOV.W           R12, #6
525F2C:  VADD.F32        S4, S18, S22
525F30:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
525F32:  LDRB            R3, [R0,#0x1C]
525F34:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPoint ...
525F36:  LDRB            R2, [R0,#0x1D]
525F38:  STR.W           R12, [R0,#8]
525F3C:  MOV.W           R12, #0x3F000000
525F40:  ADDS            R1, #8
525F42:  STRD.W          R4, R12, [R0,#0x14]
525F46:  VMUL.F32        S2, S2, S0
525F4A:  STR             R1, [R0]
525F4C:  VMUL.F32        S0, S4, S0
525F50:  AND.W           R1, R3, #0xC0
525F54:  STRB            R1, [R0,#0x1C]
525F56:  AND.W           R1, R2, #0xE0
525F5A:  STRB            R1, [R0,#0x1D]
525F5C:  VSTR            S2, [R0,#0xC]
525F60:  VSTR            S0, [R0,#0x10]
525F64:  VPOP            {D8-D11}
525F68:  POP             {R4,R6,R7,PC}
