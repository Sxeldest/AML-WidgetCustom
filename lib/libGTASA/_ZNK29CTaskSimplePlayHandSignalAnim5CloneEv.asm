; =========================================================
; Game Engine Function: _ZNK29CTaskSimplePlayHandSignalAnim5CloneEv
; Address            : 0x4D843C - 0x4D8486
; =========================================================

4D843C:  PUSH            {R4-R7,LR}
4D843E:  ADD             R7, SP, #0xC
4D8440:  PUSH.W          {R8}
4D8444:  MOV             R4, R0
4D8446:  MOVS            R0, #dword_24; this
4D8448:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D844C:  LDRB.W          R8, [R4,#0xC]
4D8450:  LDRB            R6, [R4,#0x18]
4D8452:  LDRD.W          R5, R4, [R4,#0x10]
4D8456:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D845A:  LDR             R1, =(_ZTV29CTaskSimplePlayHandSignalAnim_ptr - 0x4D8464)
4D845C:  MOVS            R2, #0
4D845E:  STR             R2, [R0,#8]
4D8460:  ADD             R1, PC; _ZTV29CTaskSimplePlayHandSignalAnim_ptr
4D8462:  STRD.W          R5, R4, [R0,#0x10]
4D8466:  STRB            R6, [R0,#0x18]
4D8468:  LDR             R1, [R1]; `vtable for'CTaskSimplePlayHandSignalAnim ...
4D846A:  STRD.W          R2, R2, [R0,#0x1C]
4D846E:  LDRB            R2, [R0,#0xC]
4D8470:  ADDS            R1, #8
4D8472:  STR             R1, [R0]
4D8474:  AND.W           R1, R8, #4
4D8478:  AND.W           R2, R2, #0xF8
4D847C:  ORRS            R1, R2
4D847E:  STRB            R1, [R0,#0xC]
4D8480:  POP.W           {R8}
4D8484:  POP             {R4-R7,PC}
