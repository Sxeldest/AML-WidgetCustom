; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDriveC2EP8CVehiclefii
; Address            : 0x4FB618 - 0x4FB666
; =========================================================

4FB618:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexCarDrive::CTaskComplexCarDrive(CVehicle *, float, int, int)'
4FB61A:  ADD             R7, SP, #0xC
4FB61C:  PUSH.W          {R8}
4FB620:  MOV             R8, R3
4FB622:  MOV             R6, R2
4FB624:  MOV             R5, R1
4FB626:  MOV             R4, R0
4FB628:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FB62C:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FB636)
4FB62E:  CMP             R5, #0
4FB630:  LDR             R1, [R7,#arg_0]
4FB632:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FB634:  STRD.W          R6, R8, [R4,#0x10]
4FB638:  STR             R1, [R4,#0x18]
4FB63A:  MOV.W           R1, #1
4FB63E:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FB640:  STRB            R1, [R4,#0x1C]
4FB642:  MOV.W           R1, #0
4FB646:  STRB.W          R1, [R4,#0x20]
4FB64A:  MOV             R1, R4
4FB64C:  ADD.W           R0, R0, #8
4FB650:  STR             R0, [R4]
4FB652:  STR.W           R5, [R1,#0xC]!; CEntity **
4FB656:  ITT NE
4FB658:  MOVNE           R0, R5; this
4FB65A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FB65E:  MOV             R0, R4
4FB660:  POP.W           {R8}
4FB664:  POP             {R4-R7,PC}
