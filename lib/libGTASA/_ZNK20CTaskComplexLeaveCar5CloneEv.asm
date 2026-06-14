; =========================================================
; Game Engine Function: _ZNK20CTaskComplexLeaveCar5CloneEv
; Address            : 0x4FE33C - 0x4FE3AA
; =========================================================

4FE33C:  PUSH            {R4-R7,LR}
4FE33E:  ADD             R7, SP, #0xC
4FE340:  PUSH.W          {R8,R9,R11}
4FE344:  MOV             R6, R0
4FE346:  MOVS            R0, #dword_34; this
4FE348:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FE34C:  ADD.W           R9, R6, #0xC
4FE350:  MOV             R4, R0
4FE352:  LDM.W           R9, {R5,R8,R9}
4FE356:  LDRH            R6, [R6,#0x18]
4FE358:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FE35C:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4FE36A)
4FE35E:  MOVS            R1, #0
4FE360:  STRD.W          R8, R9, [R4,#0x10]
4FE364:  MOVS            R2, #0xF
4FE366:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4FE368:  STRH            R6, [R4,#0x18]
4FE36A:  MOV.W           R3, #0x40800000
4FE36E:  MOV.W           R6, #0x3F800000
4FE372:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4FE374:  ADD.W           R12, R4, #0x24 ; '$'
4FE378:  STRB            R1, [R4,#0x1A]
4FE37A:  CMP             R5, #0
4FE37C:  STR             R1, [R4,#0x1C]
4FE37E:  ADD.W           R0, R0, #8
4FE382:  STRB.W          R1, [R4,#0x20]
4FE386:  STRB.W          R1, [R4,#0x21]
4FE38A:  STM.W           R12, {R2,R3,R6}
4FE38E:  STRB.W          R1, [R4,#0x30]
4FE392:  MOV             R1, R4
4FE394:  STR             R0, [R4]
4FE396:  STR.W           R5, [R1,#0xC]!; CEntity **
4FE39A:  ITT NE
4FE39C:  MOVNE           R0, R5; this
4FE39E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FE3A2:  MOV             R0, R4
4FE3A4:  POP.W           {R8,R9,R11}
4FE3A8:  POP             {R4-R7,PC}
