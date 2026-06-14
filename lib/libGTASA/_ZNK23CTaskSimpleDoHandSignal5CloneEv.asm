; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleDoHandSignal5CloneEv
; Address            : 0x519DB8 - 0x519DDC
; =========================================================

519DB8:  PUSH            {R4,R6,R7,LR}
519DBA:  ADD             R7, SP, #8
519DBC:  MOV             R4, R0
519DBE:  MOVS            R0, #(byte_9+3); this
519DC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519DC4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
519DC8:  LDR             R1, =(_ZTV23CTaskSimpleDoHandSignal_ptr - 0x519DD2)
519DCA:  MOVS            R2, #0
519DCC:  STRB            R2, [R0,#8]
519DCE:  ADD             R1, PC; _ZTV23CTaskSimpleDoHandSignal_ptr
519DD0:  LDR             R1, [R1]; `vtable for'CTaskSimpleDoHandSignal ...
519DD2:  ADDS            R1, #8
519DD4:  STR             R1, [R0]
519DD6:  LDRB            R1, [R4,#8]
519DD8:  STRB            R1, [R0,#8]
519DDA:  POP             {R4,R6,R7,PC}
