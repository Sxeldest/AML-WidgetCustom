; =========================================================
; Game Engine Function: _Z20IsValidModForVehiclejP8CVehicle
; Address            : 0x3602F0 - 0x360408
; =========================================================

3602F0:  PUSH            {R4-R7,LR}
3602F2:  ADD             R7, SP, #0xC
3602F4:  PUSH.W          {R11}
3602F8:  MOV             R4, R0
3602FA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x360300)
3602FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3602FE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
360300:  LDR.W           R2, [R0,R4,LSL#2]
360304:  LDRH            R2, [R2,#0x28]
360306:  AND.W           R2, R2, #0x7D00
36030A:  CMP.W           R2, #0x4400
36030E:  BEQ             loc_360348
360310:  LDRSH.W         R1, [R1,#0x26]; int
360314:  CMP.W           R2, #0x900
360318:  LDR.W           R0, [R0,R1,LSL#2]
36031C:  BNE             loc_360356
36031E:  LDRSB.W         R5, [R0,#0x67]
360322:  MOV             R0, R5; this
360324:  BLX             j__ZN17CVehicleModelInfo19GetNumWheelUpgradesEi; CVehicleModelInfo::GetNumWheelUpgrades(int)
360328:  CMP             R0, #1
36032A:  BLT             loc_36034E
36032C:  MOVS            R6, #0
36032E:  MOV             R0, R5; this
360330:  MOV             R1, R6; int
360332:  BLX             j__ZN17CVehicleModelInfo15GetWheelUpgradeEii; CVehicleModelInfo::GetWheelUpgrade(int,int)
360336:  CMP             R0, R4
360338:  BEQ             loc_36036C
36033A:  MOV             R0, R5; this
36033C:  ADDS            R6, #1
36033E:  BLX             j__ZN17CVehicleModelInfo19GetNumWheelUpgradesEi; CVehicleModelInfo::GetNumWheelUpgrades(int)
360342:  CMP             R6, R0
360344:  BLT             loc_36032E
360346:  B               loc_36034E
360348:  LDRB.W          R0, [R1,#0x1D7]
36034C:  CBZ             R0, loc_360374
36034E:  MOVS            R0, #0
360350:  POP.W           {R11}
360354:  POP             {R4-R7,PC}
360356:  LDRSH.W         R1, [R0,#0x36E]
36035A:  CMP             R1, R4
36035C:  ITTTT NE
36035E:  LDRSHNE.W       R1, [R0,#0x370]
360362:  CMPNE           R1, R4
360364:  LDRSHNE.W       R1, [R0,#0x372]
360368:  CMPNE           R1, R4
36036A:  BNE             loc_360386
36036C:  MOVS            R0, #1
36036E:  POP.W           {R11}
360372:  POP             {R4-R7,PC}
360374:  LDRB.W          R0, [R1,#0x1C2]
360378:  CMP             R0, #1
36037A:  BNE             loc_36036C
36037C:  LDRB.W          R0, [R1,#0x432]
360380:  LSLS            R0, R0, #0x1B
360382:  BPL             loc_36034E
360384:  B               loc_36036C
360386:  LDRSH.W         R1, [R0,#0x374]
36038A:  CMP             R1, R4
36038C:  ITT NE
36038E:  LDRSHNE.W       R1, [R0,#0x376]
360392:  CMPNE           R1, R4
360394:  BEQ             loc_36036C
360396:  LDRSH.W         R1, [R0,#0x378]
36039A:  CMP             R1, R4
36039C:  ITT NE
36039E:  LDRSHNE.W       R1, [R0,#0x37A]
3603A2:  CMPNE           R1, R4
3603A4:  BEQ             loc_36036C
3603A6:  LDRSH.W         R1, [R0,#0x37C]
3603AA:  CMP             R1, R4
3603AC:  ITT NE
3603AE:  LDRSHNE.W       R1, [R0,#0x37E]
3603B2:  CMPNE           R1, R4
3603B4:  BEQ             loc_36036C
3603B6:  LDRSH.W         R1, [R0,#0x380]
3603BA:  CMP             R1, R4
3603BC:  ITT NE
3603BE:  LDRSHNE.W       R1, [R0,#0x382]
3603C2:  CMPNE           R1, R4
3603C4:  BEQ             loc_36036C
3603C6:  LDRSH.W         R1, [R0,#0x384]
3603CA:  CMP             R1, R4
3603CC:  ITT NE
3603CE:  LDRSHNE.W       R1, [R0,#0x386]
3603D2:  CMPNE           R1, R4
3603D4:  BEQ             loc_36036C
3603D6:  LDRSH.W         R1, [R0,#0x388]
3603DA:  CMP             R1, R4
3603DC:  ITT NE
3603DE:  LDRSHNE.W       R1, [R0,#0x38A]
3603E2:  CMPNE           R1, R4
3603E4:  BEQ             loc_36036C
3603E6:  LDRSH.W         R1, [R0,#0x38C]
3603EA:  CMP             R1, R4
3603EC:  ITT NE
3603EE:  LDRSHNE.W       R1, [R0,#0x38E]
3603F2:  CMPNE           R1, R4
3603F4:  BEQ             loc_36036C
3603F6:  LDRSH.W         R1, [R0,#0x390]
3603FA:  MOVS            R0, #0
3603FC:  CMP             R1, R4
3603FE:  IT EQ
360400:  MOVEQ           R0, #1
360402:  POP.W           {R11}
360406:  POP             {R4-R7,PC}
