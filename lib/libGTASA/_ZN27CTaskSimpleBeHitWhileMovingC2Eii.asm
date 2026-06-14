; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeHitWhileMovingC2Eii
; Address            : 0x4DF298 - 0x4DF2BA
; =========================================================

4DF298:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleBeHitWhileMoving::CTaskSimpleBeHitWhileMoving(int, int)'
4DF29A:  ADD             R7, SP, #8
4DF29C:  MOV             R4, R2
4DF29E:  MOV             R5, R1
4DF2A0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DF2A4:  LDR             R1, =(_ZTV27CTaskSimpleBeHitWhileMoving_ptr - 0x4DF2AE)
4DF2A6:  MOVS            R2, #0
4DF2A8:  STRB            R2, [R0,#8]
4DF2AA:  ADD             R1, PC; _ZTV27CTaskSimpleBeHitWhileMoving_ptr
4DF2AC:  STR             R5, [R0,#0xC]
4DF2AE:  STRD.W          R4, R2, [R0,#0x10]
4DF2B2:  LDR             R1, [R1]; `vtable for'CTaskSimpleBeHitWhileMoving ...
4DF2B4:  ADDS            R1, #8
4DF2B6:  STR             R1, [R0]
4DF2B8:  POP             {R4,R5,R7,PC}
