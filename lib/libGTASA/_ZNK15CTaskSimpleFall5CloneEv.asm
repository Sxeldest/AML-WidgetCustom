; =========================================================
; Game Engine Function: _ZNK15CTaskSimpleFall5CloneEv
; Address            : 0x532A10 - 0x532A48
; =========================================================

532A10:  PUSH            {R4-R7,LR}
532A12:  ADD             R7, SP, #0xC
532A14:  PUSH.W          {R11}
532A18:  MOV             R4, R0
532A1A:  MOVS            R0, #dword_20; this
532A1C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532A20:  LDRD.W          R5, R6, [R4,#0xC]
532A24:  LDR             R4, [R4,#0x18]
532A26:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
532A2A:  LDR             R1, =(_ZTV15CTaskSimpleFall_ptr - 0x532A34)
532A2C:  MOVS            R2, #0
532A2E:  STRB            R2, [R0,#8]
532A30:  ADD             R1, PC; _ZTV15CTaskSimpleFall_ptr
532A32:  STRD.W          R5, R6, [R0,#0xC]
532A36:  STRD.W          R2, R4, [R0,#0x14]
532A3A:  LDR             R1, [R1]; `vtable for'CTaskSimpleFall ...
532A3C:  STR             R4, [R0,#0x1C]
532A3E:  ADDS            R1, #8
532A40:  STR             R1, [R0]
532A42:  POP.W           {R11}
532A46:  POP             {R4-R7,PC}
