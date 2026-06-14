; =========================================================
; Game Engine Function: _ZN36CTaskComplexCarDriveMissionFleeScene9SerializeEv
; Address            : 0x3844A4 - 0x38456A
; =========================================================

3844A4:  PUSH            {R4-R7,LR}
3844A6:  ADD             R7, SP, #0xC
3844A8:  PUSH.W          {R11}
3844AC:  MOV             R4, R0
3844AE:  LDR             R0, [R4]
3844B0:  LDR             R1, [R0,#0x14]
3844B2:  MOV             R0, R4
3844B4:  BLX             R1
3844B6:  MOV             R5, R0
3844B8:  LDR             R0, =(UseDataFence_ptr - 0x3844BE)
3844BA:  ADD             R0, PC; UseDataFence_ptr
3844BC:  LDR             R0, [R0]; UseDataFence
3844BE:  LDRB            R0, [R0]
3844C0:  CMP             R0, #0
3844C2:  IT NE
3844C4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3844C8:  MOVS            R0, #4; byte_count
3844CA:  BLX             malloc
3844CE:  MOV             R6, R0
3844D0:  MOVS            R1, #byte_4; void *
3844D2:  STR             R5, [R6]
3844D4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3844D8:  MOV             R0, R6; p
3844DA:  BLX             free
3844DE:  LDR             R0, [R4]
3844E0:  LDR             R1, [R0,#0x14]
3844E2:  MOV             R0, R4
3844E4:  BLX             R1
3844E6:  MOVW            R1, #0x2D6
3844EA:  CMP             R0, R1
3844EC:  BNE             loc_38451C
3844EE:  LDR             R0, [R4,#0xC]; CVehicle *
3844F0:  CBZ             R0, loc_384536
3844F2:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
3844F6:  MOV             R4, R0
3844F8:  LDR             R0, =(UseDataFence_ptr - 0x3844FE)
3844FA:  ADD             R0, PC; UseDataFence_ptr
3844FC:  LDR             R0, [R0]; UseDataFence
3844FE:  LDRB            R0, [R0]
384500:  CMP             R0, #0
384502:  IT NE
384504:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
384508:  MOVS            R0, #4; byte_count
38450A:  BLX             malloc
38450E:  MOV             R5, R0
384510:  MOVS            R1, #byte_4; void *
384512:  STR             R4, [R5]
384514:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
384518:  MOV             R0, R5
38451A:  B               loc_38455E
38451C:  LDR             R0, [R4]
38451E:  LDR             R1, [R0,#0x14]
384520:  MOV             R0, R4
384522:  BLX             R1
384524:  MOV             R1, R0; int
384526:  MOVW            R0, #0x2D6; int
38452A:  POP.W           {R11}
38452E:  POP.W           {R4-R7,LR}
384532:  B.W             sub_1941D4
384536:  LDR             R0, =(UseDataFence_ptr - 0x38453C)
384538:  ADD             R0, PC; UseDataFence_ptr
38453A:  LDR             R0, [R0]; UseDataFence
38453C:  LDRB            R0, [R0]
38453E:  CMP             R0, #0
384540:  IT NE
384542:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
384546:  MOVS            R0, #4; byte_count
384548:  BLX             malloc
38454C:  MOV             R4, R0
38454E:  MOV.W           R0, #0xFFFFFFFF
384552:  STR             R0, [R4]
384554:  MOV             R0, R4; this
384556:  MOVS            R1, #byte_4; void *
384558:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
38455C:  MOV             R0, R4; p
38455E:  POP.W           {R11}
384562:  POP.W           {R4-R7,LR}
384566:  B.W             j_free
