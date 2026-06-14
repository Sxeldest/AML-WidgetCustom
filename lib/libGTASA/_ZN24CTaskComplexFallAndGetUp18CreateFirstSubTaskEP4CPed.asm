; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp18CreateFirstSubTaskEP4CPed
; Address            : 0x52BC08 - 0x52BC40
; =========================================================

52BC08:  PUSH            {R4-R7,LR}
52BC0A:  ADD             R7, SP, #0xC
52BC0C:  PUSH.W          {R11}
52BC10:  MOV             R4, R0
52BC12:  MOVS            R0, #dword_20; this
52BC14:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BC18:  LDRD.W          R5, R6, [R4,#0xC]
52BC1C:  LDR             R4, [R4,#0x14]
52BC1E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BC22:  LDR             R1, =(_ZTV15CTaskSimpleFall_ptr - 0x52BC2C)
52BC24:  MOVS            R2, #0
52BC26:  STRB            R2, [R0,#8]
52BC28:  ADD             R1, PC; _ZTV15CTaskSimpleFall_ptr
52BC2A:  STRD.W          R5, R6, [R0,#0xC]
52BC2E:  STRD.W          R2, R4, [R0,#0x14]
52BC32:  LDR             R1, [R1]; `vtable for'CTaskSimpleFall ...
52BC34:  STR             R4, [R0,#0x1C]
52BC36:  ADDS            R1, #8
52BC38:  STR             R1, [R0]
52BC3A:  POP.W           {R11}
52BC3E:  POP             {R4-R7,PC}
