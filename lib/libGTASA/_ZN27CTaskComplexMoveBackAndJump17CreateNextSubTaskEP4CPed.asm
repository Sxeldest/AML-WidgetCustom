; =========================================================
; Game Engine Function: _ZN27CTaskComplexMoveBackAndJump17CreateNextSubTaskEP4CPed
; Address            : 0x50E590 - 0x50E5B6
; =========================================================

50E590:  PUSH            {R7,LR}
50E592:  MOV             R7, SP
50E594:  LDR             R0, [R0,#8]
50E596:  LDR             R1, [R0]
50E598:  LDR             R1, [R1,#0x14]
50E59A:  BLX             R1
50E59C:  MOVW            R1, #0x19B; unsigned int
50E5A0:  CMP             R0, R1
50E5A2:  ITT NE
50E5A4:  MOVNE           R0, #0
50E5A6:  POPNE           {R7,PC}
50E5A8:  MOVS            R0, #dword_14; this
50E5AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E5AE:  MOVS            R1, #0; int
50E5B0:  BLX             j__ZN16CTaskComplexJumpC2Ei; CTaskComplexJump::CTaskComplexJump(int)
50E5B4:  POP             {R7,PC}
