; =========================================================
; Game Engine Function: _ZNK27CTaskSimpleBeHitWhileMoving5CloneEv
; Address            : 0x4E9AC0 - 0x4E9AEA
; =========================================================

4E9AC0:  PUSH            {R4,R5,R7,LR}
4E9AC2:  ADD             R7, SP, #8
4E9AC4:  MOV             R4, R0
4E9AC6:  MOVS            R0, #off_18; this
4E9AC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9ACC:  LDRD.W          R5, R4, [R4,#0xC]
4E9AD0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E9AD4:  LDR             R1, =(_ZTV27CTaskSimpleBeHitWhileMoving_ptr - 0x4E9ADE)
4E9AD6:  MOVS            R2, #0
4E9AD8:  STRB            R2, [R0,#8]
4E9ADA:  ADD             R1, PC; _ZTV27CTaskSimpleBeHitWhileMoving_ptr
4E9ADC:  STRD.W          R5, R4, [R0,#0xC]
4E9AE0:  STR             R2, [R0,#0x14]
4E9AE2:  LDR             R1, [R1]; `vtable for'CTaskSimpleBeHitWhileMoving ...
4E9AE4:  ADDS            R1, #8
4E9AE6:  STR             R1, [R0]
4E9AE8:  POP             {R4,R5,R7,PC}
