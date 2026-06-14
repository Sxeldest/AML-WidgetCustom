; =========================================================
; Game Engine Function: _ZNK23CTaskInteriorSitInChair5CloneEv
; Address            : 0x529C54 - 0x529C9A
; =========================================================

529C54:  PUSH            {R4-R7,LR}
529C56:  ADD             R7, SP, #0xC
529C58:  PUSH.W          {R11}
529C5C:  MOV             R4, R0
529C5E:  MOVS            R0, #word_2C; this
529C60:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529C64:  LDRD.W          R5, R6, [R4,#8]
529C68:  LDRB            R4, [R4,#0x10]
529C6A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
529C6E:  LDR             R1, =(_ZTV23CTaskInteriorSitInChair_ptr - 0x529C7C)
529C70:  MOVS            R2, #0
529C72:  MOV.W           R3, #0xFFFFFFFF
529C76:  STRH            R2, [R0,#0x24]
529C78:  ADD             R1, PC; _ZTV23CTaskInteriorSitInChair_ptr
529C7A:  STRD.W          R5, R6, [R0,#8]
529C7E:  STRB            R4, [R0,#0x10]
529C80:  LDR             R1, [R1]; `vtable for'CTaskInteriorSitInChair ...
529C82:  STRH            R2, [R0,#0x28]
529C84:  STRB.W          R2, [R0,#0x2A]
529C88:  ADDS            R1, #8
529C8A:  STRD.W          R2, R3, [R0,#0x14]
529C8E:  STRD.W          R2, R2, [R0,#0x1C]
529C92:  STR             R1, [R0]
529C94:  POP.W           {R11}
529C98:  POP             {R4-R7,PC}
