; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseWaterCannon18CreateFirstSubTaskEP4CPed
; Address            : 0x511FB8 - 0x511FD4
; =========================================================

511FB8:  PUSH            {R4,R6,R7,LR}
511FBA:  ADD             R7, SP, #8
511FBC:  MOVS            R0, #dword_60; this
511FBE:  MOV             R4, R1
511FC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511FC4:  LDR.W           R1, [R4,#0x590]
511FC8:  MOVS            R2, #0
511FCA:  MOVS            R3, #0
511FCC:  POP.W           {R4,R6,R7,LR}
511FD0:  B.W             j_j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; j_CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
