; =========================================================
; Game Engine Function: _ZNK20CTaskComplexStealCar5CloneEv
; Address            : 0x4FE21C - 0x4FE25A
; =========================================================

4FE21C:  PUSH            {R4,R5,R7,LR}
4FE21E:  ADD             R7, SP, #8
4FE220:  MOV             R5, R0
4FE222:  MOVS            R0, #dword_20; this
4FE224:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FE228:  MOV             R4, R0
4FE22A:  LDR             R5, [R5,#0xC]
4FE22C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FE230:  LDR             R0, =(_ZTV20CTaskComplexStealCar_ptr - 0x4FE23C)
4FE232:  MOVS            R1, #0
4FE234:  STRH            R1, [R4,#0x18]
4FE236:  CMP             R5, #0
4FE238:  ADD             R0, PC; _ZTV20CTaskComplexStealCar_ptr
4FE23A:  STR             R1, [R4,#0x1C]
4FE23C:  STRD.W          R1, R1, [R4,#0x10]
4FE240:  MOV             R1, R4
4FE242:  LDR             R0, [R0]; `vtable for'CTaskComplexStealCar ...
4FE244:  ADD.W           R0, R0, #8
4FE248:  STR             R0, [R4]
4FE24A:  STR.W           R5, [R1,#0xC]!; CEntity **
4FE24E:  ITT NE
4FE250:  MOVNE           R0, R5; this
4FE252:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FE256:  MOV             R0, R4
4FE258:  POP             {R4,R5,R7,PC}
