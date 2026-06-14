; =========================================================
; Game Engine Function: _ZN25CTaskSimpleKillPedWithCarC2EP8CVehiclef
; Address            : 0x50B8EC - 0x50B924
; =========================================================

50B8EC:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleKillPedWithCar::CTaskSimpleKillPedWithCar(CVehicle *, float)'
50B8EE:  ADD             R7, SP, #0xC
50B8F0:  PUSH.W          {R11}
50B8F4:  MOV             R6, R2
50B8F6:  MOV             R5, R1
50B8F8:  MOV             R4, R0
50B8FA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B8FE:  LDR             R0, =(_ZTV25CTaskSimpleKillPedWithCar_ptr - 0x50B90A)
50B900:  MOV             R1, R4
50B902:  STR             R6, [R4,#0xC]
50B904:  CMP             R5, #0
50B906:  ADD             R0, PC; _ZTV25CTaskSimpleKillPedWithCar_ptr
50B908:  LDR             R0, [R0]; `vtable for'CTaskSimpleKillPedWithCar ...
50B90A:  ADD.W           R0, R0, #8
50B90E:  STR             R0, [R4]
50B910:  STR.W           R5, [R1,#8]!; CEntity **
50B914:  ITT NE
50B916:  MOVNE           R0, R5; this
50B918:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B91C:  MOV             R0, R4
50B91E:  POP.W           {R11}
50B922:  POP             {R4-R7,PC}
