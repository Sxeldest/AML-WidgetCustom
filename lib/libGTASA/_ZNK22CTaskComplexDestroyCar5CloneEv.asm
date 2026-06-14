; =========================================================
; Game Engine Function: _ZNK22CTaskComplexDestroyCar5CloneEv
; Address            : 0x4EA314 - 0x4EA35E
; =========================================================

4EA314:  PUSH            {R4-R7,LR}
4EA316:  ADD             R7, SP, #0xC
4EA318:  PUSH.W          {R8,R9,R11}
4EA31C:  MOV             R6, R0
4EA31E:  MOVS            R0, #dword_20; this
4EA320:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EA324:  ADD.W           R9, R6, #0x10
4EA328:  MOV             R4, R0
4EA32A:  LDM.W           R9, {R5,R8,R9}
4EA32E:  LDR             R6, [R6,#0x1C]
4EA330:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EA334:  LDR             R0, =(_ZTV22CTaskComplexDestroyCar_ptr - 0x4EA342)
4EA336:  MOV             R1, R4
4EA338:  STRD.W          R8, R9, [R4,#0x14]
4EA33C:  CMP             R5, #0
4EA33E:  ADD             R0, PC; _ZTV22CTaskComplexDestroyCar_ptr
4EA340:  STR             R6, [R4,#0x1C]
4EA342:  LDR             R0, [R0]; `vtable for'CTaskComplexDestroyCar ...
4EA344:  ADD.W           R0, R0, #8
4EA348:  STR             R0, [R4]
4EA34A:  STR.W           R5, [R1,#0x10]!; CEntity **
4EA34E:  ITT NE
4EA350:  MOVNE           R0, R5; this
4EA352:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EA356:  MOV             R0, R4
4EA358:  POP.W           {R8,R9,R11}
4EA35C:  POP             {R4-R7,PC}
