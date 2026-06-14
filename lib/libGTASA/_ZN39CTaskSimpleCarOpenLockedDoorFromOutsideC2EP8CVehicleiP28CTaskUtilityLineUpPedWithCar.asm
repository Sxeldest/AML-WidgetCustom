; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x500FA0 - 0x500FE4
; =========================================================

500FA0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarOpenLockedDoorFromOutside::CTaskSimpleCarOpenLockedDoorFromOutside(CVehicle *, int, CTaskUtilityLineUpPedWithCar *)'
500FA2:  ADD             R7, SP, #0xC
500FA4:  PUSH.W          {R8}
500FA8:  MOV             R8, R3
500FAA:  MOV             R6, R2
500FAC:  MOV             R5, R1
500FAE:  MOV             R4, R0
500FB0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
500FB4:  LDR             R0, =(_ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr - 0x500FC0)
500FB6:  MOVS            R1, #0
500FB8:  STRB            R1, [R4,#8]
500FBA:  CMP             R5, #0
500FBC:  ADD             R0, PC; _ZTV39CTaskSimpleCarOpenLockedDoorFromOutside_ptr
500FBE:  STR             R1, [R4,#0xC]
500FC0:  MOV             R1, R4
500FC2:  STR             R6, [R4,#0x14]
500FC4:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarOpenLockedDoorFromOutside ...
500FC6:  STR.W           R8, [R4,#0x18]
500FCA:  ADD.W           R0, R0, #8
500FCE:  STR             R0, [R4]
500FD0:  STR.W           R5, [R1,#0x10]!; CEntity **
500FD4:  ITT NE
500FD6:  MOVNE           R0, R5; this
500FD8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
500FDC:  MOV             R0, R4
500FDE:  POP.W           {R8}
500FE2:  POP             {R4-R7,PC}
