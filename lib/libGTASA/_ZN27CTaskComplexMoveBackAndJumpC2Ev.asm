; =========================================================
; Game Engine Function: _ZN27CTaskComplexMoveBackAndJumpC2Ev
; Address            : 0x50E564 - 0x50E578
; =========================================================

50E564:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexMoveBackAndJump::CTaskComplexMoveBackAndJump(void)'
50E566:  MOV             R7, SP
50E568:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50E56C:  LDR             R1, =(_ZTV27CTaskComplexMoveBackAndJump_ptr - 0x50E572)
50E56E:  ADD             R1, PC; _ZTV27CTaskComplexMoveBackAndJump_ptr
50E570:  LDR             R1, [R1]; `vtable for'CTaskComplexMoveBackAndJump ...
50E572:  ADDS            R1, #8
50E574:  STR             R1, [R0]
50E576:  POP             {R7,PC}
