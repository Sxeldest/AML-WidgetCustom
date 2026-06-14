; =========================================================
; Game Engine Function: _ZNK17CTaskComplexClimb5CloneEv
; Address            : 0x333D94 - 0x333DB0
; =========================================================

333D94:  PUSH            {R7,LR}
333D96:  MOV             R7, SP
333D98:  MOVS            R0, #dword_14; this
333D9A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
333D9E:  MOVS            R1, #1; int
333DA0:  BLX             j__ZN16CTaskComplexJumpC2Ei_0; CTaskComplexJump::CTaskComplexJump(int)
333DA4:  LDR             R1, =(_ZTV17CTaskComplexClimb_ptr - 0x333DAA)
333DA6:  ADD             R1, PC; _ZTV17CTaskComplexClimb_ptr
333DA8:  LDR             R1, [R1]; `vtable for'CTaskComplexClimb ...
333DAA:  ADDS            R1, #8
333DAC:  STR             R1, [R0]
333DAE:  POP             {R7,PC}
