; =========================================================
; Game Engine Function: _ZN26CTaskComplexDriveFireTruckC2EP8CVehicleP4CPedb
; Address            : 0x5117CC - 0x511820
; =========================================================

5117CC:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexDriveFireTruck::CTaskComplexDriveFireTruck(CVehicle *, CPed *, bool)'
5117CE:  ADD             R7, SP, #0xC
5117D0:  PUSH.W          {R8}
5117D4:  MOV             R6, R3
5117D6:  MOV             R5, R2
5117D8:  MOV             R8, R1
5117DA:  MOV             R4, R0
5117DC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5117E0:  LDR             R0, =(_ZTV26CTaskComplexDriveFireTruck_ptr - 0x5117EC)
5117E2:  MOVS            R1, #0
5117E4:  STRB            R6, [R4,#0x10]
5117E6:  MOV             R6, R4
5117E8:  ADD             R0, PC; _ZTV26CTaskComplexDriveFireTruck_ptr
5117EA:  STR             R1, [R4,#0x18]
5117EC:  MOV             R1, R4
5117EE:  CMP.W           R8, #0
5117F2:  LDR             R0, [R0]; `vtable for'CTaskComplexDriveFireTruck ...
5117F4:  ADD.W           R0, R0, #8
5117F8:  STR             R0, [R4]
5117FA:  STR.W           R5, [R6,#0x14]!
5117FE:  STR.W           R8, [R1,#0xC]!; CEntity **
511802:  BEQ             loc_51180C
511804:  MOV             R0, R8; this
511806:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51180A:  LDR             R5, [R6]
51180C:  CMP             R5, #0
51180E:  ITTT NE
511810:  MOVNE           R0, R5; this
511812:  MOVNE           R1, R6; CEntity **
511814:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
511818:  MOV             R0, R4
51181A:  POP.W           {R8}
51181E:  POP             {R4-R7,PC}
