; =========================================================
; Game Engine Function: _ZN27CTaskComplexWaitAtAttractor18CreateFirstSubTaskEP4CPed
; Address            : 0x4EDF1C - 0x4EDF4C
; =========================================================

4EDF1C:  PUSH            {R7,LR}
4EDF1E:  MOV             R7, SP
4EDF20:  MOVS            R0, #dword_20; this
4EDF22:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EDF26:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EDF2A:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EDF38)
4EDF2C:  MOVW            R2, #0x2710
4EDF30:  STR             R2, [R0,#8]
4EDF32:  MOVS            R2, #0
4EDF34:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4EDF36:  MOV.W           R3, #0x41000000
4EDF3A:  STRH            R2, [R0,#0x14]
4EDF3C:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4EDF3E:  STR             R3, [R0,#0x1C]
4EDF40:  STRH            R2, [R0,#0x18]
4EDF42:  ADDS            R1, #8
4EDF44:  STRD.W          R2, R2, [R0,#0xC]
4EDF48:  STR             R1, [R0]
4EDF4A:  POP             {R7,PC}
