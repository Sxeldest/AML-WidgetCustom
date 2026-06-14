; =========================================================
; Game Engine Function: _ZNK41CTaskComplexCarSlowBeDraggedOutAndStandUp5CloneEv
; Address            : 0x507214 - 0x507254
; =========================================================

507214:  PUSH            {R4-R7,LR}
507216:  ADD             R7, SP, #0xC
507218:  PUSH.W          {R11}
50721C:  MOV             R6, R0
50721E:  MOVS            R0, #dword_14; this
507220:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
507224:  MOV             R4, R0
507226:  LDRD.W          R5, R6, [R6,#0xC]
50722A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50722E:  LDR             R0, =(_ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr - 0x50723A)
507230:  MOV             R1, R4
507232:  STR             R6, [R4,#0x10]
507234:  CMP             R5, #0
507236:  ADD             R0, PC; _ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr
507238:  LDR             R0, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOutAndStandUp ...
50723A:  ADD.W           R0, R0, #8
50723E:  STR             R0, [R4]
507240:  STR.W           R5, [R1,#0xC]!; CEntity **
507244:  ITT NE
507246:  MOVNE           R0, R5; this
507248:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50724C:  MOV             R0, R4
50724E:  POP.W           {R11}
507252:  POP             {R4-R7,PC}
