; =========================================================
; Game Engine Function: _ZNK34CTaskSimpleSetKindaStayInSamePlace5CloneEv
; Address            : 0x4F243C - 0x4F245C
; =========================================================

4F243C:  PUSH            {R4,R6,R7,LR}
4F243E:  ADD             R7, SP, #8
4F2440:  MOV             R4, R0
4F2442:  MOVS            R0, #(byte_9+3); this
4F2444:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2448:  LDRB            R4, [R4,#8]
4F244A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F244E:  LDR             R1, =(_ZTV34CTaskSimpleSetKindaStayInSamePlace_ptr - 0x4F2456)
4F2450:  STRB            R4, [R0,#8]
4F2452:  ADD             R1, PC; _ZTV34CTaskSimpleSetKindaStayInSamePlace_ptr
4F2454:  LDR             R1, [R1]; `vtable for'CTaskSimpleSetKindaStayInSamePlace ...
4F2456:  ADDS            R1, #8
4F2458:  STR             R1, [R0]
4F245A:  POP             {R4,R6,R7,PC}
