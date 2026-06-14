; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCar18CreateFirstSubTaskEP4CPed
; Address            : 0x53FD64 - 0x53FD9A
; =========================================================

53FD64:  PUSH            {R4,R6,R7,LR}
53FD66:  ADD             R7, SP, #8
53FD68:  MOV             R4, R0
53FD6A:  LDR.W           R0, [R1,#0x440]; this
53FD6E:  MOVS            R1, #6; int
53FD70:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
53FD74:  LDR             R0, [R4,#0x10]
53FD76:  CMP             R0, #0
53FD78:  ITTT EQ
53FD7A:  LDRBEQ.W        R0, [R4,#0x30]
53FD7E:  ORREQ.W         R0, R0, #1
53FD82:  STRBEQ.W        R0, [R4,#0x30]
53FD86:  MOVS            R0, #dword_60; this
53FD88:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53FD8C:  LDR             R1, [R4,#0xC]
53FD8E:  MOVS            R2, #0
53FD90:  MOVS            R3, #0
53FD92:  POP.W           {R4,R6,R7,LR}
53FD96:  B.W             j_j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; j_CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
