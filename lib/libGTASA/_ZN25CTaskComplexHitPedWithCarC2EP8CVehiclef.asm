; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCarC2EP8CVehiclef
; Address            : 0x50B4AC - 0x50B4EA
; =========================================================

50B4AC:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexHitPedWithCar::CTaskComplexHitPedWithCar(CVehicle *, float)'
50B4AE:  ADD             R7, SP, #0xC
50B4B0:  PUSH.W          {R11}
50B4B4:  MOV             R6, R2
50B4B6:  MOV             R5, R1
50B4B8:  MOV             R4, R0
50B4BA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50B4BE:  LDR             R0, =(_ZTV25CTaskComplexHitPedWithCar_ptr - 0x50B4CC)
50B4C0:  MOV.W           R1, #0x3E8
50B4C4:  STR             R6, [R4,#0x10]
50B4C6:  CMP             R5, #0
50B4C8:  ADD             R0, PC; _ZTV25CTaskComplexHitPedWithCar_ptr
50B4CA:  STR             R1, [R4,#0x18]
50B4CC:  MOV             R1, R4
50B4CE:  LDR             R0, [R0]; `vtable for'CTaskComplexHitPedWithCar ...
50B4D0:  ADD.W           R0, R0, #8
50B4D4:  STR             R0, [R4]
50B4D6:  STR.W           R5, [R1,#0xC]!; CEntity **
50B4DA:  ITT NE
50B4DC:  MOVNE           R0, R5; this
50B4DE:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B4E2:  MOV             R0, R4
50B4E4:  POP.W           {R11}
50B4E8:  POP             {R4-R7,PC}
