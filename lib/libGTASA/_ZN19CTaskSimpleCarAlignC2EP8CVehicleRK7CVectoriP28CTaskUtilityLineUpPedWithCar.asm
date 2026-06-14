; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlignC2EP8CVehicleRK7CVectoriP28CTaskUtilityLineUpPedWithCar
; Address            : 0x5006C4 - 0x500714
; =========================================================

5006C4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleCarAlign::CTaskSimpleCarAlign(CVehicle *, CVector const&, int, CTaskUtilityLineUpPedWithCar *)'
5006C6:  ADD             R7, SP, #0xC
5006C8:  PUSH.W          {R8}
5006CC:  MOV             R8, R3
5006CE:  MOV             R6, R2
5006D0:  MOV             R5, R1
5006D2:  MOV             R4, R0
5006D4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5006D8:  LDR             R0, =(_ZTV19CTaskSimpleCarAlign_ptr - 0x5006E4)
5006DA:  MOVS            R1, #0
5006DC:  STRB            R1, [R4,#8]
5006DE:  CMP             R5, #0
5006E0:  ADD             R0, PC; _ZTV19CTaskSimpleCarAlign_ptr
5006E2:  STR             R1, [R4,#0xC]
5006E4:  MOV             R1, R4
5006E6:  LDR             R2, [R7,#arg_0]
5006E8:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarAlign ...
5006EA:  ADD.W           R0, R0, #8
5006EE:  STR             R0, [R4]
5006F0:  STR.W           R5, [R1,#0x10]!; CEntity **
5006F4:  VLDR            D16, [R6]
5006F8:  LDR             R0, [R6,#8]
5006FA:  STRD.W          R0, R8, [R4,#0x1C]
5006FE:  STR             R2, [R4,#0x24]
500700:  VSTR            D16, [R4,#0x14]
500704:  ITT NE
500706:  MOVNE           R0, R5; this
500708:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50070C:  MOV             R0, R4
50070E:  POP.W           {R8}
500712:  POP             {R4-R7,PC}
