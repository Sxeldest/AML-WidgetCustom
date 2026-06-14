; =========================================================
; Game Engine Function: _ZNK17CTaskSimpleFacial5CloneEv
; Address            : 0x5439B4 - 0x5439E0
; =========================================================

5439B4:  PUSH            {R4,R5,R7,LR}
5439B6:  ADD             R7, SP, #8
5439B8:  MOV             R4, R0
5439BA:  MOVS            R0, #dword_1C; this
5439BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5439C0:  LDRD.W          R5, R4, [R4,#0x14]
5439C4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5439C8:  LDR             R1, =(_ZTV17CTaskSimpleFacial_ptr - 0x5439D2)
5439CA:  MOVS            R2, #0
5439CC:  STRH            R2, [R0,#0x10]
5439CE:  ADD             R1, PC; _ZTV17CTaskSimpleFacial_ptr
5439D0:  STRD.W          R5, R4, [R0,#0x14]
5439D4:  STRD.W          R2, R2, [R0,#8]
5439D8:  LDR             R1, [R1]; `vtable for'CTaskSimpleFacial ...
5439DA:  ADDS            R1, #8
5439DC:  STR             R1, [R0]
5439DE:  POP             {R4,R5,R7,PC}
