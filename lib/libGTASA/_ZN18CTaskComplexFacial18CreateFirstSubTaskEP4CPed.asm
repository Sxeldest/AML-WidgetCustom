; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacial18CreateFirstSubTaskEP4CPed
; Address            : 0x540FE0 - 0x541018
; =========================================================

540FE0:  PUSH            {R4,R6,R7,LR}
540FE2:  ADD             R7, SP, #8
540FE4:  MOV             R4, R0
540FE6:  MOV             R0, R1; this
540FE8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
540FEC:  CMP             R0, #1
540FEE:  ITT EQ
540FF0:  MOVEQ           R0, #0
540FF2:  STRBEQ          R0, [R4,#0xC]
540FF4:  MOVS            R0, #off_18; this
540FF6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540FFA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540FFE:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x54100C)
541000:  MOVS            R2, #0
541002:  MOVW            R3, #0x1388
541006:  STRH            R2, [R0,#0x10]
541008:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
54100A:  STR             R3, [R0,#0x14]
54100C:  STRD.W          R2, R2, [R0,#8]
541010:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
541012:  ADDS            R1, #8
541014:  STR             R1, [R0]
541016:  POP             {R4,R6,R7,PC}
