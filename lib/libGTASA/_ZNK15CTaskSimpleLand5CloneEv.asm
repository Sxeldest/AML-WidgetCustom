; =========================================================
; Game Engine Function: _ZNK15CTaskSimpleLand5CloneEv
; Address            : 0x532EA4 - 0x532EDE
; =========================================================

532EA4:  PUSH            {R4,R6,R7,LR}
532EA6:  ADD             R7, SP, #8
532EA8:  MOV             R4, R0
532EAA:  MOVS            R0, #dword_14; this
532EAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532EB0:  LDR             R4, [R4,#0xC]
532EB2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
532EB6:  LDR             R1, =(_ZTV15CTaskSimpleLand_ptr - 0x532EC2)
532EB8:  MOVS            R2, #0
532EBA:  STRD.W          R2, R4, [R0,#8]
532EBE:  ADD             R1, PC; _ZTV15CTaskSimpleLand_ptr
532EC0:  LDRB            R3, [R0,#0x10]
532EC2:  LDR             R1, [R1]; `vtable for'CTaskSimpleLand ...
532EC4:  ADDS            R1, #8
532EC6:  STR             R1, [R0]
532EC8:  ADDS            R1, R4, #1
532ECA:  IT EQ
532ECC:  MOVEQ           R2, #1
532ECE:  AND.W           R1, R3, #0xF8
532ED2:  ORR.W           R1, R1, R2,LSL#1
532ED6:  ORR.W           R1, R1, #4
532EDA:  STRB            R1, [R0,#0x10]
532EDC:  POP             {R4,R6,R7,PC}
