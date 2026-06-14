; =========================================================
; Game Engine Function: _ZNK15CTaskSimpleJump5CloneEv
; Address            : 0x533104 - 0x53313C
; =========================================================

533104:  PUSH            {R4,R5,R7,LR}
533106:  ADD             R7, SP, #8
533108:  MOV             R4, R0
53310A:  MOVS            R0, #word_2C; this
53310C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
533110:  LDRB.W          R5, [R4,#0x24]
533114:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
533118:  LDR             R1, =(_ZTV15CTaskSimpleJump_ptr - 0x533124)
53311A:  MOVS            R2, #0
53311C:  STRD.W          R2, R2, [R0,#0x1C]
533120:  ADD             R1, PC; _ZTV15CTaskSimpleJump_ptr
533122:  STRB.W          R5, [R0,#0x24]
533126:  STRB.W          R2, [R0,#0x25]
53312A:  LDR             R1, [R1]; `vtable for'CTaskSimpleJump ...
53312C:  STR             R2, [R0,#0x28]
53312E:  ADDS            R1, #8
533130:  STR             R1, [R0]
533132:  LDRB.W          R1, [R4,#0x25]
533136:  STRB.W          R1, [R0,#0x25]
53313A:  POP             {R4,R5,R7,PC}
