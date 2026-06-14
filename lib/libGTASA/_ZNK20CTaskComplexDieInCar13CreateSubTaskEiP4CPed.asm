; =========================================================
; Game Engine Function: _ZNK20CTaskComplexDieInCar13CreateSubTaskEiP4CPed
; Address            : 0x4EB1FC - 0x4EB2B4
; =========================================================

4EB1FC:  PUSH            {R4,R5,R7,LR}
4EB1FE:  ADD             R7, SP, #8
4EB200:  SUB             SP, SP, #8
4EB202:  MOV             R5, R2
4EB204:  MOVS            R4, #0
4EB206:  CMP             R1, #0xD6
4EB208:  BEQ             loc_4EB25C
4EB20A:  MOVW            R0, #0x2C1
4EB20E:  CMP             R1, R0
4EB210:  BEQ             loc_4EB230
4EB212:  MOVW            R0, #0x2C5
4EB216:  CMP             R1, R0
4EB218:  BNE             loc_4EB2AE
4EB21A:  MOVS            R0, #dword_60; this
4EB21C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB220:  LDR.W           R1, [R5,#0x590]; CVehicle *
4EB224:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
4EB226:  MOVS            R3, #0; bool
4EB228:  MOV             R4, R0
4EB22A:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
4EB22E:  B               loc_4EB2AE
4EB230:  MOVS            R0, #dword_34; this
4EB232:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB236:  LDR.W           R1, [R5,#0x590]; CVehicle *
4EB23A:  MOV             R4, R0
4EB23C:  MOVS            R5, #1
4EB23E:  MOVS            R0, #0
4EB240:  STRD.W          R0, R5, [SP,#0x10+var_10]; bool
4EB244:  MOV             R0, R4; this
4EB246:  MOVS            R2, #0; int
4EB248:  MOVS            R3, #0; int
4EB24A:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4EB24E:  LDR             R0, =(_ZTV26CTaskComplexLeaveCarAndDie_ptr - 0x4EB256)
4EB250:  STRB            R5, [R4,#0x1A]
4EB252:  ADD             R0, PC; _ZTV26CTaskComplexLeaveCarAndDie_ptr
4EB254:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndDie ...
4EB256:  ADDS            R0, #8
4EB258:  STR             R0, [R4]
4EB25A:  B               loc_4EB2AE
4EB25C:  LDR.W           R0, [R5,#0x590]; this
4EB260:  MOV             R1, R5; CPed *
4EB262:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4EB266:  MOV             R5, R0
4EB268:  MOVS            R0, #word_28; this
4EB26A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB26E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EB272:  CMP             R5, #1
4EB274:  STR             R4, [R0,#8]
4EB276:  BNE             loc_4EB282
4EB278:  LDR             R1, =(_ZTV19CTaskSimpleDieInCar_ptr - 0x4EB282)
4EB27A:  MOVS            R2, #0
4EB27C:  MOVS            R3, #0xBB
4EB27E:  ADD             R1, PC; _ZTV19CTaskSimpleDieInCar_ptr
4EB280:  B               loc_4EB28A
4EB282:  LDR             R1, =(_ZTV19CTaskSimpleDieInCar_ptr - 0x4EB28C)
4EB284:  MOVS            R2, #0
4EB286:  MOVS            R3, #0xBC
4EB288:  ADD             R1, PC; _ZTV19CTaskSimpleDieInCar_ptr
4EB28A:  LDR             R1, [R1]; `vtable for'CTaskSimpleDieInCar ...
4EB28C:  MOV.W           R4, #0x40800000
4EB290:  LDRB.W          R5, [R0,#0x20]
4EB294:  STR             R3, [R0,#0xC]
4EB296:  ADDS            R1, #8
4EB298:  STR             R2, [R0,#0x10]
4EB29A:  STR             R2, [R0,#0x14]
4EB29C:  STR             R4, [R0,#0x18]
4EB29E:  MOV             R4, R0
4EB2A0:  STR             R2, [R0,#0x1C]
4EB2A2:  STR             R2, [R0,#0x24]
4EB2A4:  AND.W           R2, R5, #0xFC
4EB2A8:  STRB.W          R2, [R0,#0x20]
4EB2AC:  STR             R1, [R0]
4EB2AE:  MOV             R0, R4
4EB2B0:  ADD             SP, SP, #8
4EB2B2:  POP             {R4,R5,R7,PC}
