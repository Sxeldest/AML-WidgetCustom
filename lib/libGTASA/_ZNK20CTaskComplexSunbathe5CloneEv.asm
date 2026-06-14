; =========================================================
; Game Engine Function: _ZNK20CTaskComplexSunbathe5CloneEv
; Address            : 0x4F357C - 0x4F3594
; =========================================================

4F357C:  PUSH            {R4,R6,R7,LR}
4F357E:  ADD             R7, SP, #8
4F3580:  MOV             R4, R0
4F3582:  MOVS            R0, #dword_38; this
4F3584:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F3588:  LDR             R1, [R4,#0x34]; CObject *
4F358A:  LDRB            R2, [R4,#0xC]; bool
4F358C:  POP.W           {R4,R6,R7,LR}
4F3590:  B.W             sub_19A6E8
