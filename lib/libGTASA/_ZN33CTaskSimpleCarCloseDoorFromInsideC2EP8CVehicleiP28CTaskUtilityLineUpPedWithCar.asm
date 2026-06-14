; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x501424 - 0x501468
; =========================================================

501424:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarCloseDoorFromInside::CTaskSimpleCarCloseDoorFromInside(CVehicle *, int, CTaskUtilityLineUpPedWithCar *)'
501426:  ADD             R7, SP, #0xC
501428:  PUSH.W          {R8}
50142C:  MOV             R8, R3
50142E:  MOV             R6, R2
501430:  MOV             R5, R1
501432:  MOV             R4, R0
501434:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
501438:  LDR             R0, =(_ZTV33CTaskSimpleCarCloseDoorFromInside_ptr - 0x501444)
50143A:  MOVS            R1, #0
50143C:  STRB            R1, [R4,#8]
50143E:  CMP             R5, #0
501440:  ADD             R0, PC; _ZTV33CTaskSimpleCarCloseDoorFromInside_ptr
501442:  STR             R1, [R4,#0xC]
501444:  MOV             R1, R4
501446:  STR             R6, [R4,#0x14]
501448:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarCloseDoorFromInside ...
50144A:  STR.W           R8, [R4,#0x18]
50144E:  ADD.W           R0, R0, #8
501452:  STR             R0, [R4]
501454:  STR.W           R5, [R1,#0x10]!; CEntity **
501458:  ITT NE
50145A:  MOVNE           R0, R5; this
50145C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
501460:  MOV             R0, R4
501462:  POP.W           {R8}
501466:  POP             {R4-R7,PC}
