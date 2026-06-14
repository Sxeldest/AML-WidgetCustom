; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCar9SerializeEv
; Address            : 0x50F440 - 0x50F530
; =========================================================

50F440:  PUSH            {R4-R7,LR}
50F442:  ADD             R7, SP, #0xC
50F444:  PUSH.W          {R11}
50F448:  MOV             R4, R0
50F44A:  LDR             R0, [R4]
50F44C:  LDR             R1, [R0,#0x14]
50F44E:  MOV             R0, R4
50F450:  BLX             R1
50F452:  MOV             R5, R0
50F454:  LDR             R0, =(UseDataFence_ptr - 0x50F45A)
50F456:  ADD             R0, PC; UseDataFence_ptr
50F458:  LDR             R0, [R0]; UseDataFence
50F45A:  LDRB            R0, [R0]
50F45C:  CMP             R0, #0
50F45E:  IT NE
50F460:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F464:  MOVS            R0, #4; byte_count
50F466:  BLX             malloc
50F46A:  MOV             R6, R0
50F46C:  MOVS            R1, #byte_4; void *
50F46E:  STR             R5, [R6]
50F470:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F474:  MOV             R0, R6; p
50F476:  BLX             free
50F47A:  LDR             R0, [R4]
50F47C:  LDR             R1, [R0,#0x14]
50F47E:  MOV             R0, R4
50F480:  BLX             R1
50F482:  MOVW            R1, #0x1F9
50F486:  CMP             R0, R1
50F488:  BNE             loc_50F4B8
50F48A:  LDR             R0, [R4,#0xC]; CVehicle *
50F48C:  CBZ             R0, loc_50F4D2
50F48E:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50F492:  MOV             R5, R0
50F494:  LDR             R0, =(UseDataFence_ptr - 0x50F49A)
50F496:  ADD             R0, PC; UseDataFence_ptr
50F498:  LDR             R0, [R0]; UseDataFence
50F49A:  LDRB            R0, [R0]
50F49C:  CMP             R0, #0
50F49E:  IT NE
50F4A0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F4A4:  MOVS            R0, #4; byte_count
50F4A6:  BLX             malloc
50F4AA:  MOV             R6, R0
50F4AC:  MOVS            R1, #byte_4; void *
50F4AE:  STR             R5, [R6]
50F4B0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F4B4:  MOV             R0, R6
50F4B6:  B               loc_50F4FA
50F4B8:  LDR             R0, [R4]
50F4BA:  LDR             R1, [R0,#0x14]
50F4BC:  MOV             R0, R4
50F4BE:  BLX             R1
50F4C0:  MOV             R1, R0; int
50F4C2:  MOVW            R0, #0x1F9; int
50F4C6:  POP.W           {R11}
50F4CA:  POP.W           {R4-R7,LR}
50F4CE:  B.W             sub_1941D4
50F4D2:  LDR             R0, =(UseDataFence_ptr - 0x50F4D8)
50F4D4:  ADD             R0, PC; UseDataFence_ptr
50F4D6:  LDR             R0, [R0]; UseDataFence
50F4D8:  LDRB            R0, [R0]
50F4DA:  CMP             R0, #0
50F4DC:  IT NE
50F4DE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F4E2:  MOVS            R0, #4; byte_count
50F4E4:  BLX             malloc
50F4E8:  MOV             R5, R0
50F4EA:  MOV.W           R0, #0xFFFFFFFF
50F4EE:  STR             R0, [R5]
50F4F0:  MOV             R0, R5; this
50F4F2:  MOVS            R1, #byte_4; void *
50F4F4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F4F8:  MOV             R0, R5; p
50F4FA:  BLX             free
50F4FE:  LDR             R0, =(UseDataFence_ptr - 0x50F504)
50F500:  ADD             R0, PC; UseDataFence_ptr
50F502:  LDR             R0, [R0]; UseDataFence
50F504:  LDRB            R0, [R0]
50F506:  CMP             R0, #0
50F508:  IT NE
50F50A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F50E:  MOVS            R0, #4; byte_count
50F510:  BLX             malloc
50F514:  MOV             R5, R0
50F516:  LDR             R0, [R4,#0x10]
50F518:  STR             R0, [R5]
50F51A:  MOV             R0, R5; this
50F51C:  MOVS            R1, #byte_4; void *
50F51E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F522:  MOV             R0, R5; p
50F524:  POP.W           {R11}
50F528:  POP.W           {R4-R7,LR}
50F52C:  B.W             j_free
