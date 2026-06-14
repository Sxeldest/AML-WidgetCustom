; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOut10ProcessPedEP4CPed
; Address            : 0x503204 - 0x503356
; =========================================================

503204:  PUSH            {R4-R7,LR}
503206:  ADD             R7, SP, #0xC
503208:  PUSH.W          {R11}
50320C:  SUB             SP, SP, #0x38
50320E:  MOV             R4, R0
503210:  MOV             R5, R1
503212:  LDR             R0, [R4,#0x14]
503214:  CBZ             R0, loc_503254
503216:  LDRB            R0, [R4,#8]
503218:  CBZ             R0, loc_503258
50321A:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x503220)
50321C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
50321E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
503220:  LDRB.W          R0, [R0,#(byte_796830 - 0x7967F4)]
503224:  CBZ             R0, loc_503254
503226:  MOV             R0, R5; this
503228:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50322C:  CMP             R0, #1
50322E:  BNE             loc_503254
503230:  LDR             R0, [R4,#0x14]
503232:  CBZ             R0, loc_503254
503234:  LDR             R1, [R0,#0x44]
503236:  BIC.W           R1, R1, #0x800000
50323A:  STR             R1, [R0,#0x44]
50323C:  LDR             R0, [R4,#0x14]
50323E:  LDR             R1, [R0,#0x44]
503240:  BIC.W           R1, R1, #0x40000
503244:  STR             R1, [R0,#0x44]
503246:  LDR             R0, [R4,#0x14]
503248:  LDR.W           R1, [R0,#0x42C]
50324C:  ORR.W           R1, R1, #0x200000
503250:  STR.W           R1, [R0,#0x42C]
503254:  MOVS            R0, #1
503256:  B               loc_503302
503258:  LDR             R0, [R4,#0xC]
50325A:  CBZ             R0, loc_5032A4
50325C:  VMOV.F32        S0, #1.0
503260:  VLDR            S2, [R0,#0x18]
503264:  VCMP.F32        S2, S0
503268:  VMRS            APSR_nzcv, FPSCR
50326C:  ITTT EQ
50326E:  LDREQ.W         R0, [R5,#0x484]
503272:  ORREQ.W         R0, R0, #0x2000
503276:  STREQ.W         R0, [R5,#0x484]
50327A:  LDRB            R0, [R4,#9]
50327C:  CMP             R0, #0
50327E:  BEQ             loc_503300
503280:  LDRB            R0, [R4,#0x10]
503282:  CBNZ            R0, loc_503300
503284:  LDR             R1, [R4,#0x14]; CVehicle *
503286:  LDR.W           R0, [R1,#0x5A0]
50328A:  CBZ             R0, loc_50330A
50328C:  MOV             R6, R4
50328E:  LDR.W           R2, [R6,#0x18]!
503292:  SUB.W           R0, R2, #8
503296:  CMP             R0, #2
503298:  BHI             loc_5032C4
50329A:  LDR             R1, =(unk_61E6CC - 0x5032A0)
50329C:  ADD             R1, PC; unk_61E6CC
50329E:  LDR.W           R1, [R1,R0,LSL#2]
5032A2:  B               loc_5032C8
5032A4:  MOV             R0, R4; this
5032A6:  MOV             R1, R5; CPed *
5032A8:  BLX             j__ZN20CTaskSimpleCarGetOut9StartAnimEPK4CPed; CTaskSimpleCarGetOut::StartAnim(CPed const*)
5032AC:  MOV             R0, R5; this
5032AE:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
5032B2:  MOV             R0, R5; this
5032B4:  BLX             j__ZN4CPed31ReplaceWeaponWhenExitingVehicleEv; CPed::ReplaceWeaponWhenExitingVehicle(void)
5032B8:  LDRD.W          R0, R1, [R4,#0x14]; CVehicle *
5032BC:  BLX             j__ZN13CCarEnterExit16CarHasDoorToOpenERK8CVehiclei; CCarEnterExit::CarHasDoorToOpen(CVehicle const&,int)
5032C0:  STRB            R0, [R4,#9]
5032C2:  B               loc_503300
5032C4:  MOVW            R1, #0x177; int
5032C8:  LDR             R0, [R4,#0x14]
5032CA:  MOVS            R3, #0x94
5032CC:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5032D6)
5032CE:  LDR.W           R0, [R0,#0x388]
5032D2:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5032D4:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5032D6:  LDRB.W          R0, [R0,#0xDE]
5032DA:  SMLABB.W        R0, R0, R3, R2; this
5032DE:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5032E2:  MOV             R3, R0
5032E4:  LDR             R2, [R6]
5032E6:  LDR             R0, [R4,#0x14]
5032E8:  LDR             R6, [R4,#0xC]
5032EA:  LDR             R1, [R0]
5032EC:  VLDR            S0, [R6,#0x20]
5032F0:  LDR             R4, [R1,#0x74]
5032F2:  LDRSH.W         R1, [R6,#0x2C]
5032F6:  VSTR            S0, [SP,#0x48+var_44]
5032FA:  STR             R1, [SP,#0x48+var_48]
5032FC:  MOV             R1, R5
5032FE:  BLX             R4
503300:  MOVS            R0, #0
503302:  ADD             SP, SP, #0x38 ; '8'
503304:  POP.W           {R11}
503308:  POP             {R4-R7,PC}
50330A:  ADD             R0, SP, #0x48+var_40; this
50330C:  BLX             j__ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle; CUpsideDownCarCheck::IsCarUpsideDown(CVehicle const*)
503310:  CMP             R0, #0
503312:  MOV             R6, R4
503314:  IT NE
503316:  MOVNE           R0, #1
503318:  STRB            R0, [R4,#0x10]
50331A:  LDR.W           R2, [R6,#0x18]!
50331E:  BEQ             loc_503292
503320:  LDR             R0, [R4,#0x14]
503322:  LDR             R1, [R0,#0x14]
503324:  VLDR            S0, [R1,#8]
503328:  BIC.W           R1, R2, #1
50332C:  CMP             R1, #0xA
50332E:  BNE             loc_503342
503330:  VMOV.F32        S2, #-0.5
503334:  VCMPE.F32       S0, S2
503338:  VMRS            APSR_nzcv, FPSCR
50333C:  BLT             loc_503350
50333E:  MOVS            R3, #0
503340:  B               loc_5032E8
503342:  VMOV.F32        S2, #0.5
503346:  VCMPE.F32       S0, S2
50334A:  VMRS            APSR_nzcv, FPSCR
50334E:  BLE             loc_50333E
503350:  MOVS            R0, #0
503352:  STRB            R0, [R4,#0x10]
503354:  B               loc_503292
