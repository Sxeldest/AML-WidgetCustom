; =========================================================
; Game Engine Function: _ZNK30CTaskComplexPlayHandSignalAnim5CloneEv
; Address            : 0x4D85AC - 0x4D85D8
; =========================================================

4D85AC:  PUSH            {R4,R5,R7,LR}
4D85AE:  ADD             R7, SP, #8
4D85B0:  MOV             R4, R0
4D85B2:  MOVS            R0, #off_18; this
4D85B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D85B8:  LDRD.W          R5, R4, [R4,#0xC]
4D85BC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4D85C0:  LDR             R1, =(_ZTV30CTaskComplexPlayHandSignalAnim_ptr - 0x4D85CA)
4D85C2:  STRD.W          R5, R4, [R0,#0xC]
4D85C6:  ADD             R1, PC; _ZTV30CTaskComplexPlayHandSignalAnim_ptr
4D85C8:  LDRB            R2, [R0,#0x14]
4D85CA:  LDR             R1, [R1]; `vtable for'CTaskComplexPlayHandSignalAnim ...
4D85CC:  ADDS            R1, #8
4D85CE:  STR             R1, [R0]
4D85D0:  AND.W           R1, R2, #0xF8
4D85D4:  STRB            R1, [R0,#0x14]
4D85D6:  POP             {R4,R5,R7,PC}
