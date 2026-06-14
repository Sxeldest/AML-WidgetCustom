; =========================================================
; Game Engine Function: _ZN19CTaskComplexBeStill18CreateFirstSubTaskEP4CPed
; Address            : 0x4EABF4 - 0x4EAC44
; =========================================================

4EABF4:  PUSH            {R4,R6,R7,LR}
4EABF6:  ADD             R7, SP, #8
4EABF8:  MOV             R4, R1
4EABFA:  LDRB.W          R0, [R4,#0x485]
4EABFE:  LSLS            R0, R0, #0x1F
4EAC00:  BNE             loc_4EAC30
4EAC02:  MOVS            R0, #dword_20; this
4EAC04:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EAC08:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EAC0C:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EAC1C)
4EAC0E:  MOVS            R2, #0
4EAC10:  MOV.W           R3, #0x41000000
4EAC14:  STR.W           R2, [R0,#0x12]
4EAC18:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4EAC1A:  STR.W           R2, [R0,#0xE]
4EAC1E:  STR             R3, [R0,#0x1C]
4EAC20:  MOVS            R3, #1
4EAC22:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4EAC24:  STRH            R3, [R0,#0x18]
4EAC26:  STRD.W          R2, R2, [R0,#8]
4EAC2A:  ADDS            R1, #8; unsigned int
4EAC2C:  STR             R1, [R0]
4EAC2E:  POP             {R4,R6,R7,PC}
4EAC30:  MOVS            R0, #dword_60; this
4EAC32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EAC36:  LDR.W           R1, [R4,#0x590]; CVehicle *
4EAC3A:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
4EAC3C:  MOVS            R3, #0; bool
4EAC3E:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
4EAC42:  POP             {R4,R6,R7,PC}
