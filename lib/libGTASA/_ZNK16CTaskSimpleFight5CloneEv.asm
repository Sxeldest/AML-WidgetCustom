; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleFight5CloneEv
; Address            : 0x4E93D0 - 0x4E944A
; =========================================================

4E93D0:  PUSH            {R4-R7,LR}
4E93D2:  ADD             R7, SP, #0xC
4E93D4:  PUSH.W          {R8}
4E93D8:  MOV             R6, R0
4E93DA:  MOVS            R0, #word_28; this
4E93DC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E93E0:  MOV             R4, R0
4E93E2:  LDRH.W          R8, [R6,#0x10]
4E93E6:  LDR             R5, [R6,#0x18]
4E93E8:  LDRB.W          R6, [R6,#0x27]
4E93EC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E93F0:  LDR             R0, =(_ZTV16CTaskSimpleFight_ptr - 0x4E93FE)
4E93F2:  MOV.W           R1, #0x100
4E93F6:  STRH            R1, [R4,#8]
4E93F8:  MOVS            R1, #0
4E93FA:  ADD             R0, PC; _ZTV16CTaskSimpleFight_ptr
4E93FC:  MOVS            R2, #0x21 ; '!'
4E93FE:  STRB            R1, [R4,#0xA]
4E9400:  CMP             R5, #0
4E9402:  LDR             R0, [R0]; `vtable for'CTaskSimpleFight ...
4E9404:  STR             R2, [R4,#0xC]
4E9406:  MOV.W           R2, #0xFF
4E940A:  STR.W           R1, [R4,#0x12]
4E940E:  ADD.W           R0, R0, #8
4E9412:  STRD.W          R1, R1, [R4,#0x1C]
4E9416:  STRB.W          R2, [R4,#0x24]
4E941A:  STRB.W          R2, [R4,#0x25]
4E941E:  STRB.W          R6, [R4,#0x26]
4E9422:  STRB.W          R1, [R4,#0x27]
4E9426:  MOV             R1, R4
4E9428:  STR             R0, [R4]
4E942A:  STR.W           R5, [R1,#0x18]!; CEntity **
4E942E:  ITT NE
4E9430:  MOVNE           R0, R5; this
4E9432:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E9436:  MOVW            R0, #0xEA60
4E943A:  CMP             R8, R0
4E943C:  IT CC
4E943E:  MOVCC           R0, R8
4E9440:  STRH            R0, [R4,#0x10]
4E9442:  MOV             R0, R4
4E9444:  POP.W           {R8}
4E9448:  POP             {R4-R7,PC}
