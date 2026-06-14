; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x5026A8 - 0x5026F2
; =========================================================

5026A8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *, int, CTaskUtilityLineUpPedWithCar *)'
5026AA:  ADD             R7, SP, #0xC
5026AC:  PUSH.W          {R8}
5026B0:  MOV             R8, R3
5026B2:  MOV             R6, R2
5026B4:  MOV             R5, R1
5026B6:  MOV             R4, R0
5026B8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5026BC:  LDR             R0, =(_ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr - 0x5026C8)
5026BE:  MOVS            R1, #0
5026C0:  STRB            R1, [R4,#8]
5026C2:  CMP             R5, #0
5026C4:  ADD             R0, PC; _ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr
5026C6:  STR             R1, [R4,#0xC]
5026C8:  STR             R6, [R4,#0x14]
5026CA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedInAsPassenger ...
5026CC:  STR.W           R8, [R4,#0x18]
5026D0:  STRB            R1, [R4,#0x1C]
5026D2:  ADD.W           R0, R0, #8
5026D6:  STRB            R1, [R4,#0x1D]
5026D8:  STRB            R1, [R4,#0x1E]
5026DA:  MOV             R1, R4
5026DC:  STR             R0, [R4]
5026DE:  STR.W           R5, [R1,#0x10]!; CEntity **
5026E2:  ITT NE
5026E4:  MOVNE           R0, R5; this
5026E6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5026EA:  MOV             R0, R4
5026EC:  POP.W           {R8}
5026F0:  POP             {R4-R7,PC}
