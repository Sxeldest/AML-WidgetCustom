; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleTriggerEvent5CloneEv
; Address            : 0x4F2044 - 0x4F2072
; =========================================================

4F2044:  PUSH            {R4,R5,R7,LR}
4F2046:  ADD             R7, SP, #8
4F2048:  MOV             R4, R0
4F204A:  MOVS            R0, #(byte_9+3); this
4F204C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F2050:  MOV             R5, R0
4F2052:  LDR             R0, [R4,#8]
4F2054:  LDR             R1, [R0]
4F2056:  LDR             R1, [R1,#0x14]
4F2058:  BLX             R1
4F205A:  MOV             R4, R0
4F205C:  MOV             R0, R5; this
4F205E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F2062:  LDR             R0, =(_ZTV23CTaskSimpleTriggerEvent_ptr - 0x4F206A)
4F2064:  STR             R4, [R5,#8]
4F2066:  ADD             R0, PC; _ZTV23CTaskSimpleTriggerEvent_ptr
4F2068:  LDR             R0, [R0]; `vtable for'CTaskSimpleTriggerEvent ...
4F206A:  ADDS            R0, #8
4F206C:  STR             R0, [R5]
4F206E:  MOV             R0, R5
4F2070:  POP             {R4,R5,R7,PC}
