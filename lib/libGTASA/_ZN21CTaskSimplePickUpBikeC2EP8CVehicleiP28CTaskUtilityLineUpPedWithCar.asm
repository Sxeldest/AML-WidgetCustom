; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBikeC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x501188 - 0x5011CC
; =========================================================

501188:  PUSH            {R4-R7,LR}
50118A:  ADD             R7, SP, #0xC
50118C:  PUSH.W          {R8}
501190:  MOV             R8, R3
501192:  MOV             R6, R2
501194:  MOV             R5, R1
501196:  MOV             R4, R0
501198:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50119C:  LDR             R0, =(_ZTV21CTaskSimplePickUpBike_ptr - 0x5011A8)
50119E:  MOVS            R1, #0
5011A0:  STRB            R1, [R4,#8]
5011A2:  CMP             R5, #0
5011A4:  ADD             R0, PC; _ZTV21CTaskSimplePickUpBike_ptr
5011A6:  STR             R1, [R4,#0xC]
5011A8:  MOV             R1, R4
5011AA:  STR             R6, [R4,#0x14]
5011AC:  LDR             R0, [R0]; `vtable for'CTaskSimplePickUpBike ...
5011AE:  STR.W           R8, [R4,#0x18]
5011B2:  ADD.W           R0, R0, #8
5011B6:  STR             R0, [R4]
5011B8:  STR.W           R5, [R1,#0x10]!; CEntity **
5011BC:  ITT NE
5011BE:  MOVNE           R0, R5; this
5011C0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5011C4:  MOV             R0, R4
5011C6:  POP.W           {R8}
5011CA:  POP             {R4-R7,PC}
