; =========================================================
; Game Engine Function: _ZNK27CTaskSimpleBeKickedOnGround5CloneEv
; Address            : 0x4E9A94 - 0x4E9AB4
; =========================================================

4E9A94:  PUSH            {R7,LR}
4E9A96:  MOV             R7, SP
4E9A98:  MOVS            R0, #word_10; this
4E9A9A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E9A9E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E9AA2:  LDR             R1, =(_ZTV27CTaskSimpleBeKickedOnGround_ptr - 0x4E9AAC)
4E9AA4:  MOVS            R2, #0
4E9AA6:  STRB            R2, [R0,#8]
4E9AA8:  ADD             R1, PC; _ZTV27CTaskSimpleBeKickedOnGround_ptr
4E9AAA:  STR             R2, [R0,#0xC]
4E9AAC:  LDR             R1, [R1]; `vtable for'CTaskSimpleBeKickedOnGround ...
4E9AAE:  ADDS            R1, #8
4E9AB0:  STR             R1, [R0]
4E9AB2:  POP             {R7,PC}
