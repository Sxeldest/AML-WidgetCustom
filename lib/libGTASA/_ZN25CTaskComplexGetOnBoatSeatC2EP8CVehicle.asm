; =========================================================
; Game Engine Function: _ZN25CTaskComplexGetOnBoatSeatC2EP8CVehicle
; Address            : 0x506208 - 0x506234
; =========================================================

506208:  PUSH            {R4,R5,R7,LR}
50620A:  ADD             R7, SP, #8
50620C:  MOV             R5, R1
50620E:  MOV             R4, R0
506210:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
506214:  LDR             R0, =(_ZTV25CTaskComplexGetOnBoatSeat_ptr - 0x50621E)
506216:  MOV             R1, R4
506218:  CMP             R5, #0
50621A:  ADD             R0, PC; _ZTV25CTaskComplexGetOnBoatSeat_ptr
50621C:  LDR             R0, [R0]; `vtable for'CTaskComplexGetOnBoatSeat ...
50621E:  ADD.W           R0, R0, #8
506222:  STR.W           R0, [R1],#0xC; CEntity **
506226:  STR             R5, [R1]
506228:  ITT NE
50622A:  MOVNE           R0, R5; this
50622C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506230:  MOV             R0, R4
506232:  POP             {R4,R5,R7,PC}
