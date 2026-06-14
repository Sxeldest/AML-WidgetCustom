; =========================================================
; Game Engine Function: _ZN21CTaskComplexLeaveBoatC2EP8CVehiclei
; Address            : 0x4F9504 - 0x4F953C
; =========================================================

4F9504:  PUSH            {R4-R7,LR}
4F9506:  ADD             R7, SP, #0xC
4F9508:  PUSH.W          {R11}
4F950C:  MOV             R6, R2
4F950E:  MOV             R5, R1
4F9510:  MOV             R4, R0
4F9512:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F9516:  LDR             R0, =(_ZTV21CTaskComplexLeaveBoat_ptr - 0x4F9522)
4F9518:  MOV             R1, R4
4F951A:  STR             R6, [R4,#0x10]
4F951C:  CMP             R5, #0
4F951E:  ADD             R0, PC; _ZTV21CTaskComplexLeaveBoat_ptr
4F9520:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveBoat ...
4F9522:  ADD.W           R0, R0, #8
4F9526:  STR             R0, [R4]
4F9528:  STR.W           R5, [R1,#0xC]!; CEntity **
4F952C:  ITT NE
4F952E:  MOVNE           R0, R5; this
4F9530:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9534:  MOV             R0, R4
4F9536:  POP.W           {R11}
4F953A:  POP             {R4-R7,PC}
