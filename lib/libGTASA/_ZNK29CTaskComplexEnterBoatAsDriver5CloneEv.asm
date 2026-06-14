; =========================================================
; Game Engine Function: _ZNK29CTaskComplexEnterBoatAsDriver5CloneEv
; Address            : 0x4FE108 - 0x4FE13C
; =========================================================

4FE108:  PUSH            {R4,R5,R7,LR}
4FE10A:  ADD             R7, SP, #8
4FE10C:  MOV             R5, R0
4FE10E:  MOVS            R0, #word_10; this
4FE110:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FE114:  MOV             R4, R0
4FE116:  LDR             R5, [R5,#0xC]
4FE118:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FE11C:  LDR             R0, =(_ZTV29CTaskComplexEnterBoatAsDriver_ptr - 0x4FE126)
4FE11E:  MOV             R1, R4
4FE120:  CMP             R5, #0
4FE122:  ADD             R0, PC; _ZTV29CTaskComplexEnterBoatAsDriver_ptr
4FE124:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterBoatAsDriver ...
4FE126:  ADD.W           R0, R0, #8
4FE12A:  STR.W           R0, [R1],#0xC; CEntity **
4FE12E:  STR             R5, [R1]
4FE130:  ITT NE
4FE132:  MOVNE           R0, R5; this
4FE134:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FE138:  MOV             R0, R4
4FE13A:  POP             {R4,R5,R7,PC}
