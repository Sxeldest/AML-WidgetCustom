; =========================================================
; Game Engine Function: _ZNK20CTaskInteriorUseInfo5CloneEv
; Address            : 0x52981C - 0x529854
; =========================================================

52981C:  PUSH            {R4-R7,LR}
52981E:  ADD             R7, SP, #0xC
529820:  PUSH.W          {R8}
529824:  MOV             R4, R0
529826:  MOVS            R0, #dword_1C; this
529828:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52982C:  ADD.W           R8, R4, #0xC
529830:  LDM.W           R8, {R5,R6,R8}
529834:  LDRB            R4, [R4,#0x18]
529836:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52983A:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x529848)
52983C:  ADD.W           R2, R0, #0xC
529840:  STM.W           R2, {R5,R6,R8}
529844:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
529846:  STRB            R4, [R0,#0x18]
529848:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
52984A:  ADDS            R1, #8
52984C:  STR             R1, [R0]
52984E:  POP.W           {R8}
529852:  POP             {R4-R7,PC}
