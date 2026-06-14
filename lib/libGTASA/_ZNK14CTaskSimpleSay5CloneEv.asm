; =========================================================
; Game Engine Function: _ZNK14CTaskSimpleSay5CloneEv
; Address            : 0x3574C4 - 0x3574F0
; =========================================================

3574C4:  PUSH            {R4,R5,R7,LR}
3574C6:  ADD             R7, SP, #8
3574C8:  MOV             R4, R0
3574CA:  MOVS            R0, #dword_1C; this
3574CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3574D0:  LDRD.W          R5, R4, [R4,#8]
3574D4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
3574D8:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x3574E4)
3574DA:  MOVS            R2, #0
3574DC:  STRD.W          R5, R4, [R0,#8]
3574E0:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
3574E2:  STRH            R2, [R0,#0x18]
3574E4:  STRD.W          R2, R2, [R0,#0x10]
3574E8:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
3574EA:  ADDS            R1, #8
3574EC:  STR             R1, [R0]
3574EE:  POP             {R4,R5,R7,PC}
