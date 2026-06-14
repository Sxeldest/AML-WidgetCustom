; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDriveC2EP8CVehicle
; Address            : 0x4FB66C - 0x4FB6AE
; =========================================================

4FB66C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexCarDrive::CTaskComplexCarDrive(CVehicle *)'
4FB66E:  ADD             R7, SP, #8
4FB670:  MOV             R5, R1
4FB672:  MOV             R4, R0
4FB674:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FB678:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FB686)
4FB67A:  MOVS            R1, #0
4FB67C:  MOV.W           R2, #0xFFFFFFFF
4FB680:  CMP             R5, #0
4FB682:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FB684:  STRD.W          R1, R2, [R4,#0x10]
4FB688:  MOV.W           R2, #1
4FB68C:  STR             R1, [R4,#0x18]
4FB68E:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FB690:  STRB            R2, [R4,#0x1C]
4FB692:  STRB.W          R1, [R4,#0x20]
4FB696:  MOV             R1, R4
4FB698:  ADD.W           R0, R0, #8
4FB69C:  STR             R0, [R4]
4FB69E:  STR.W           R5, [R1,#0xC]!; CEntity **
4FB6A2:  ITT NE
4FB6A4:  MOVNE           R0, R5; this
4FB6A6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FB6AA:  MOV             R0, R4
4FB6AC:  POP             {R4,R5,R7,PC}
