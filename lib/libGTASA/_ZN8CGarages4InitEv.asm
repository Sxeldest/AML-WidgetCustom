; =========================================================
; Game Engine Function: _ZN8CGarages4InitEv
; Address            : 0x30E3C8 - 0x30E4BA
; =========================================================

30E3C8:  PUSH            {R4,R5,R7,LR}
30E3CA:  ADD             R7, SP, #8
30E3CC:  LDR             R0, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x30E3D8)
30E3CE:  VMOV.I32        Q8, #0
30E3D2:  LDR             R1, =(_ZN8CGarages17BankVansCollectedE_ptr - 0x30E3E0)
30E3D4:  ADD             R0, PC; _ZN8CGarages14MessageEndTimeE_ptr
30E3D6:  LDR             R3, =(_ZN8CGarages12CrushedCarIdE_ptr - 0x30E3E4)
30E3D8:  LDR.W           R12, =(_ZN8CGarages21LastGaragePlayerWasInE_ptr - 0x30E3E8)
30E3DC:  ADD             R1, PC; _ZN8CGarages17BankVansCollectedE_ptr
30E3DE:  LDR             R5, [R0]; CGarages::MessageEndTime ...
30E3E0:  ADD             R3, PC; _ZN8CGarages12CrushedCarIdE_ptr
30E3E2:  LDR             R0, =(_ZN8CGarages17CarTypesCollectedE_ptr - 0x30E3EC)
30E3E4:  ADD             R12, PC; _ZN8CGarages21LastGaragePlayerWasInE_ptr
30E3E6:  LDR             R1, [R1]; CGarages::BankVansCollected ...
30E3E8:  ADD             R0, PC; _ZN8CGarages17CarTypesCollectedE_ptr
30E3EA:  LDR             R3, [R3]; CGarages::CrushedCarId ...
30E3EC:  LDR.W           R12, [R12]; CGarages::LastGaragePlayerWasIn ...
30E3F0:  LDR             R0, [R0]; CGarages::CarTypesCollected ...
30E3F2:  LDR             R2, =(_ZN8CGarages19PoliceCarsCollectedE_ptr - 0x30E400)
30E3F4:  LDR             R4, =(_ZN8CGarages19LastTimeHelpMessageE_ptr - 0x30E402)
30E3F6:  VST1.32         {D16-D17}, [R0]
30E3FA:  MOVS            R0, #0
30E3FC:  ADD             R2, PC; _ZN8CGarages19PoliceCarsCollectedE_ptr
30E3FE:  ADD             R4, PC; _ZN8CGarages19LastTimeHelpMessageE_ptr
30E400:  STR             R0, [R5]; CGarages::MessageEndTime
30E402:  LDR             R5, =(_ZN8CGarages10NumGaragesE_ptr - 0x30E40C)
30E404:  LDR.W           LR, =(_ZN8CGarages10NoRespraysE_ptr - 0x30E414)
30E408:  ADD             R5, PC; _ZN8CGarages10NumGaragesE_ptr
30E40A:  STR             R0, [R1]; CGarages::BankVansCollected
30E40C:  MOV.W           R1, #0xFFFFFFFF
30E410:  ADD             LR, PC; _ZN8CGarages10NoRespraysE_ptr
30E412:  LDR             R5, [R5]; CGarages::NumGarages ...
30E414:  STR             R1, [R3]; CGarages::CrushedCarId
30E416:  MOVW            R3, #0x1312
30E41A:  STR.W           R1, [R12]; CGarages::LastGaragePlayerWasIn
30E41E:  MOVW            R12, #0x1012
30E422:  STR             R0, [R5]; CGarages::NumGarages
30E424:  LDR             R5, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x30E42C)
30E426:  LDR             R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30E430)
30E428:  ADD             R5, PC; _ZN8CGarages16MessageStartTimeE_ptr
30E42A:  LDR             R2, [R2]; CGarages::PoliceCarsCollected ...
30E42C:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
30E42E:  LDR             R4, [R4]; CGarages::LastTimeHelpMessage ...
30E430:  LDR             R5, [R5]; CGarages::MessageStartTime ...
30E432:  LDR.W           LR, [LR]; CGarages::NoResprays ...
30E436:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
30E438:  STR             R0, [R5]; CGarages::MessageStartTime
30E43A:  LDR             R5, =(_ZN8CGarages14PlayerInGarageE_ptr - 0x30E446)
30E43C:  STR             R0, [R2]; CGarages::PoliceCarsCollected
30E43E:  MOVW            R2, #0x1212
30E442:  ADD             R5, PC; _ZN8CGarages14PlayerInGarageE_ptr
30E444:  STR             R0, [R4]; CGarages::LastTimeHelpMessage
30E446:  STRB.W          R0, [LR]; CGarages::NoResprays
30E44A:  MOVW            LR, #0x1112
30E44E:  LDR             R5, [R5]; CGarages::PlayerInGarage ...
30E450:  MOVS            R4, #0
30E452:  STRB            R0, [R5]; CGarages::PlayerInGarage
30E454:  LDR             R5, =(_ZN8CGarages12BombsAreFreeE_ptr - 0x30E45A)
30E456:  ADD             R5, PC; _ZN8CGarages12BombsAreFreeE_ptr
30E458:  LDR             R5, [R5]; CGarages::BombsAreFree ...
30E45A:  STRB            R0, [R5]; CGarages::BombsAreFree
30E45C:  LDR             R5, =(_ZN8CGarages13CarsCollectedE_ptr - 0x30E462)
30E45E:  ADD             R5, PC; _ZN8CGarages13CarsCollectedE_ptr
30E460:  LDR             R5, [R5]; CGarages::CarsCollected ...
30E462:  STR             R0, [R5]; CGarages::CarsCollected
30E464:  ADDS            R5, R1, R4
30E466:  ADDS            R4, #0x40 ; '@'
30E468:  CMP.W           R4, #0x100
30E46C:  STRH.W          R0, [R5,R12]
30E470:  STRH.W          R0, [R5,LR]
30E474:  STRH            R0, [R5,R2]
30E476:  STRH            R0, [R5,R3]
30E478:  STRH.W          R0, [R5,#0x112]
30E47C:  STRH            R0, [R5,#0x12]
30E47E:  STRH.W          R0, [R5,#0x212]
30E482:  STRH.W          R0, [R5,#0x312]
30E486:  STRH.W          R0, [R5,#0x412]
30E48A:  STRH.W          R0, [R5,#0x512]
30E48E:  STRH.W          R0, [R5,#0x612]
30E492:  STRH.W          R0, [R5,#0x712]
30E496:  STRH.W          R0, [R5,#0x812]
30E49A:  STRH.W          R0, [R5,#0xA12]
30E49E:  STRH.W          R0, [R5,#0x912]
30E4A2:  STRH.W          R0, [R5,#0xB12]
30E4A6:  STRH.W          R0, [R5,#0xC12]
30E4AA:  STRH.W          R0, [R5,#0xD12]
30E4AE:  STRH.W          R0, [R5,#0xE12]
30E4B2:  STRH.W          R0, [R5,#0xF12]
30E4B6:  BNE             loc_30E464
30E4B8:  POP             {R4,R5,R7,PC}
