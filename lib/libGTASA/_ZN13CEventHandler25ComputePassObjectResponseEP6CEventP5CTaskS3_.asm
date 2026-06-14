; =========================================================
; Game Engine Function: _ZN13CEventHandler25ComputePassObjectResponseEP6CEventP5CTaskS3_
; Address            : 0x382B5C - 0x382B76
; =========================================================

382B5C:  PUSH            {R4,R5,R7,LR}
382B5E:  ADD             R7, SP, #8
382B60:  MOV             R5, R0
382B62:  MOVS            R0, #word_30; this
382B64:  MOV             R4, R1
382B66:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382B6A:  LDR             R1, [R4,#0xC]; CPed *
382B6C:  LDRB            R2, [R4,#0x10]; unsigned __int8
382B6E:  BLX             j__ZN22CTaskComplexPassObjectC2EP4CPedh; CTaskComplexPassObject::CTaskComplexPassObject(CPed *,uchar)
382B72:  STR             R0, [R5,#0x24]
382B74:  POP             {R4,R5,R7,PC}
