; =========================================================
; Game Engine Function: _ZNK22CTaskComplexFleeEntity5CloneEv
; Address            : 0x514BC0 - 0x514C28
; =========================================================

514BC0:  PUSH            {R4-R7,LR}
514BC2:  ADD             R7, SP, #0xC
514BC4:  PUSH.W          {R8-R11}
514BC8:  SUB             SP, SP, #4
514BCA:  MOV             R6, R0
514BCC:  MOVS            R0, #off_3C; this
514BCE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514BD2:  MOV             R4, R0
514BD4:  LDR             R5, [R6,#0xC]
514BD6:  LDR.W           R8, [R6,#0x1C]
514BDA:  LDR.W           R9, [R6,#0x2C]
514BDE:  LDRB.W          R10, [R6,#0x30]
514BE2:  LDRD.W          R11, R6, [R6,#0x34]
514BE6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
514BEA:  LDR             R0, =(_ZTV22CTaskComplexFleeEntity_ptr - 0x514BF8)
514BEC:  MOVS            R1, #0
514BEE:  STR.W           R8, [R4,#0x1C]
514BF2:  CMP             R5, #0
514BF4:  ADD             R0, PC; _ZTV22CTaskComplexFleeEntity_ptr
514BF6:  STRH            R1, [R4,#0x28]
514BF8:  STR.W           R9, [R4,#0x2C]
514BFC:  LDR             R0, [R0]; `vtable for'CTaskComplexFleeEntity ...
514BFE:  STRD.W          R11, R6, [R4,#0x34]
514C02:  STRB.W          R10, [R4,#0x30]
514C06:  ADD.W           R0, R0, #8
514C0A:  STRD.W          R1, R1, [R4,#0x20]
514C0E:  MOV             R1, R4
514C10:  STR             R0, [R4]
514C12:  STR.W           R5, [R1,#0xC]!; CEntity **
514C16:  ITT NE
514C18:  MOVNE           R0, R5; this
514C1A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514C1E:  MOV             R0, R4
514C20:  ADD             SP, SP, #4
514C22:  POP.W           {R8-R11}
514C26:  POP             {R4-R7,PC}
