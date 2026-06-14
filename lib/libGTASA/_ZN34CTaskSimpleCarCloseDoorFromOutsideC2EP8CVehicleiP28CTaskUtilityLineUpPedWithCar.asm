; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x5017E4 - 0x501828
; =========================================================

5017E4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarCloseDoorFromOutside::CTaskSimpleCarCloseDoorFromOutside(CVehicle *, int, CTaskUtilityLineUpPedWithCar *)'
5017E6:  ADD             R7, SP, #0xC
5017E8:  PUSH.W          {R8}
5017EC:  MOV             R8, R3
5017EE:  MOV             R6, R2
5017F0:  MOV             R5, R1
5017F2:  MOV             R4, R0
5017F4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5017F8:  LDR             R0, =(_ZTV34CTaskSimpleCarCloseDoorFromOutside_ptr - 0x501804)
5017FA:  MOVS            R1, #0
5017FC:  STRB            R1, [R4,#8]
5017FE:  CMP             R5, #0
501800:  ADD             R0, PC; _ZTV34CTaskSimpleCarCloseDoorFromOutside_ptr
501802:  STR             R1, [R4,#0xC]
501804:  MOV             R1, R4
501806:  STR             R6, [R4,#0x14]
501808:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarCloseDoorFromOutside ...
50180A:  STR.W           R8, [R4,#0x18]
50180E:  ADD.W           R0, R0, #8
501812:  STR             R0, [R4]
501814:  STR.W           R5, [R1,#0x10]!; CEntity **
501818:  ITT NE
50181A:  MOVNE           R0, R5; this
50181C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
501820:  MOV             R0, R4
501822:  POP.W           {R8}
501826:  POP             {R4-R7,PC}
