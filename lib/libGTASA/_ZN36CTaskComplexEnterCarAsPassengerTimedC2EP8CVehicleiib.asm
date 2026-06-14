; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimedC2EP8CVehicleiib
; Address            : 0x4F760C - 0x4F765C
; =========================================================

4F760C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexEnterCarAsPassengerTimed::CTaskComplexEnterCarAsPassengerTimed(CVehicle *, int, int, bool)'
4F760E:  ADD             R7, SP, #0xC
4F7610:  PUSH.W          {R8}
4F7614:  MOV             R6, R3
4F7616:  MOV             R8, R2
4F7618:  MOV             R5, R1
4F761A:  MOV             R4, R0
4F761C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F7620:  LDR             R0, =(_ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr - 0x4F762A)
4F7622:  CMP             R5, #0
4F7624:  LDR             R1, [R7,#arg_0]
4F7626:  ADD             R0, PC; _ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr
4F7628:  STRD.W          R6, R8, [R4,#0x10]
4F762C:  STRB            R1, [R4,#0x18]
4F762E:  MOV.W           R1, #6
4F7632:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsPassengerTimed ...
4F7634:  STR             R1, [R4,#0x1C]
4F7636:  MOV.W           R1, #0
4F763A:  STRH            R1, [R4,#0x28]
4F763C:  ADD.W           R0, R0, #8
4F7640:  STRD.W          R1, R1, [R4,#0x20]
4F7644:  MOV             R1, R4
4F7646:  STR             R0, [R4]
4F7648:  STR.W           R5, [R1,#0xC]!; CEntity **
4F764C:  ITT NE
4F764E:  MOVNE           R0, R5; this
4F7650:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F7654:  MOV             R0, R4
4F7656:  POP.W           {R8}
4F765A:  POP             {R4-R7,PC}
