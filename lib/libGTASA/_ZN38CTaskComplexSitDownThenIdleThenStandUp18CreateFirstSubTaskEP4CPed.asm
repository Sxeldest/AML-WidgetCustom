; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp18CreateFirstSubTaskEP4CPed
; Address            : 0x4EC9FC - 0x4ECA2A
; =========================================================

4EC9FC:  PUSH            {R7,LR}
4EC9FE:  MOV             R7, SP
4ECA00:  MOVS            R0, #dword_20; this
4ECA02:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECA06:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4ECA0A:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4ECA16)
4ECA0C:  MOVS            R2, #0x64 ; 'd'
4ECA0E:  STR             R2, [R0,#8]
4ECA10:  MOVS            R2, #0
4ECA12:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4ECA14:  MOV.W           R3, #0x41000000
4ECA18:  STRH            R2, [R0,#0x14]
4ECA1A:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4ECA1C:  STR             R3, [R0,#0x1C]
4ECA1E:  STRH            R2, [R0,#0x18]
4ECA20:  ADDS            R1, #8
4ECA22:  STRD.W          R2, R2, [R0,#0xC]
4ECA26:  STR             R1, [R0]
4ECA28:  POP             {R7,PC}
