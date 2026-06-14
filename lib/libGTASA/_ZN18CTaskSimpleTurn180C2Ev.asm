; =========================================================
; Game Engine Function: _ZN18CTaskSimpleTurn180C2Ev
; Address            : 0x4ECDB4 - 0x4ECDCE
; =========================================================

4ECDB4:  PUSH            {R7,LR}
4ECDB6:  MOV             R7, SP
4ECDB8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4ECDBC:  LDR             R1, =(_ZTV18CTaskSimpleTurn180_ptr - 0x4ECDC6)
4ECDBE:  MOVS            R2, #0
4ECDC0:  STRB            R2, [R0,#8]
4ECDC2:  ADD             R1, PC; _ZTV18CTaskSimpleTurn180_ptr
4ECDC4:  STR             R2, [R0,#0xC]
4ECDC6:  LDR             R1, [R1]; `vtable for'CTaskSimpleTurn180 ...
4ECDC8:  ADDS            R1, #8
4ECDCA:  STR             R1, [R0]
4ECDCC:  POP             {R7,PC}
