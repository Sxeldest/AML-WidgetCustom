; =========================================================
; Game Engine Function: _ZNK24CTaskSimpleCarDriveTimed5CloneEv
; Address            : 0x334C28 - 0x334C58
; =========================================================

334C28:  PUSH            {R4,R5,R7,LR}
334C2A:  ADD             R7, SP, #8
334C2C:  MOV             R4, R0
334C2E:  MOVS            R0, #dword_70; this
334C30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334C34:  LDR             R1, [R4,#8]; CVehicle *
334C36:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
334C38:  MOVS            R3, #0; bool
334C3A:  LDR             R4, [R4,#0x60]
334C3C:  MOVS            R5, #0
334C3E:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
334C42:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x334C4A)
334C44:  STR             R4, [R0,#0x60]
334C46:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
334C48:  STRH.W          R5, [R0,#0x6C]
334C4C:  STRD.W          R5, R5, [R0,#0x64]
334C50:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
334C52:  ADDS            R1, #8
334C54:  STR             R1, [R0]
334C56:  POP             {R4,R5,R7,PC}
