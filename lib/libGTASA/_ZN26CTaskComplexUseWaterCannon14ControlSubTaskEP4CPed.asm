; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseWaterCannon14ControlSubTaskEP4CPed
; Address            : 0x511FD4 - 0x512044
; =========================================================

511FD4:  PUSH            {R4-R7,LR}
511FD6:  ADD             R7, SP, #0xC
511FD8:  PUSH.W          {R11}
511FDC:  MOV             R6, R0
511FDE:  MOV             R5, R1
511FE0:  LDR             R4, [R6,#8]
511FE2:  LDR             R0, [R4]
511FE4:  LDR             R1, [R0,#0x14]
511FE6:  MOV             R0, R4
511FE8:  BLX             R1
511FEA:  MOVW            R1, #0x2C5
511FEE:  CMP             R0, R1
511FF0:  BNE             loc_51203C
511FF2:  LDR.W           R0, [R5,#0x590]; this
511FF6:  LDRB.W          R1, [R0,#0x3A]
511FFA:  AND.W           R1, R1, #0xF8
511FFE:  CMP             R1, #0x18
512000:  BNE             loc_51200A
512002:  LDR             R1, [R6,#0xC]; CFire *
512004:  LDRB            R2, [R1]
512006:  LSLS            R2, R2, #0x1F
512008:  BNE             loc_512038
51200A:  MOVS            R0, #dword_70; this
51200C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512010:  LDR.W           R1, [R5,#0x590]; CVehicle *
512014:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
512016:  MOVS            R3, #0; bool
512018:  MOV             R4, R0
51201A:  MOVS            R5, #0
51201C:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
512020:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x51202A)
512022:  STR.W           R5, [R4,#0x6A]
512026:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
512028:  STR.W           R5, [R4,#0x66]
51202C:  STRD.W          R5, R5, [R4,#0x60]
512030:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
512032:  ADDS            R0, #8
512034:  STR             R0, [R4]
512036:  B               loc_51203C
512038:  BLX             j__ZN11CAutomobile16FireTruckControlEP5CFire; CAutomobile::FireTruckControl(CFire *)
51203C:  MOV             R0, R4
51203E:  POP.W           {R11}
512042:  POP             {R4-R7,PC}
