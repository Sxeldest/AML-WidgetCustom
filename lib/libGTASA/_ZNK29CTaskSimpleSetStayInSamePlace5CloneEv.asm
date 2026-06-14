; =========================================================
; Game Engine Function: _ZNK29CTaskSimpleSetStayInSamePlace5CloneEv
; Address            : 0x4F2388 - 0x4F23A8
; =========================================================

4F2388:  PUSH            {R4,R6,R7,LR}
4F238A:  ADD             R7, SP, #8
4F238C:  MOV             R4, R0
4F238E:  MOVS            R0, #(byte_9+3); this
4F2390:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2394:  LDRB            R4, [R4,#8]
4F2396:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F239A:  LDR             R1, =(_ZTV29CTaskSimpleSetStayInSamePlace_ptr - 0x4F23A2)
4F239C:  STRB            R4, [R0,#8]
4F239E:  ADD             R1, PC; _ZTV29CTaskSimpleSetStayInSamePlace_ptr
4F23A0:  LDR             R1, [R1]; `vtable for'CTaskSimpleSetStayInSamePlace ...
4F23A2:  ADDS            R1, #8
4F23A4:  STR             R1, [R0]
4F23A6:  POP             {R4,R6,R7,PC}
