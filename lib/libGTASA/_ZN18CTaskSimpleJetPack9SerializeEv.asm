; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack9SerializeEv
; Address            : 0x5335D4 - 0x533784
; =========================================================

5335D4:  PUSH            {R4-R7,LR}
5335D6:  ADD             R7, SP, #0xC
5335D8:  PUSH.W          {R11}
5335DC:  MOV             R4, R0
5335DE:  LDR             R0, [R4]
5335E0:  LDR             R1, [R0,#0x14]
5335E2:  MOV             R0, R4
5335E4:  BLX             R1
5335E6:  MOV             R5, R0
5335E8:  LDR             R0, =(UseDataFence_ptr - 0x5335EE)
5335EA:  ADD             R0, PC; UseDataFence_ptr
5335EC:  LDR             R0, [R0]; UseDataFence
5335EE:  LDRB            R0, [R0]
5335F0:  CMP             R0, #0
5335F2:  IT NE
5335F4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5335F8:  MOVS            R0, #4; byte_count
5335FA:  BLX             malloc
5335FE:  MOV             R6, R0
533600:  MOVS            R1, #byte_4; void *
533602:  STR             R5, [R6]
533604:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533608:  MOV             R0, R6; p
53360A:  BLX             free
53360E:  LDR             R0, [R4]
533610:  LDR             R1, [R0,#0x14]
533612:  MOV             R0, R4
533614:  BLX             R1
533616:  MOVW            R1, #0x517
53361A:  CMP             R0, R1
53361C:  BNE             loc_533702
53361E:  LDR             R0, =(UseDataFence_ptr - 0x533624)
533620:  ADD             R0, PC; UseDataFence_ptr
533622:  LDR             R0, [R0]; UseDataFence
533624:  LDRB            R0, [R0]
533626:  CMP             R0, #0
533628:  IT NE
53362A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53362E:  MOVS            R0, #0xC; byte_count
533630:  BLX             malloc
533634:  ADD.W           R1, R4, #0x48 ; 'H'
533638:  MOV             R5, R0
53363A:  LDR             R0, [R4,#0x50]
53363C:  VLD1.8          {D16}, [R1]
533640:  MOVS            R1, #(byte_9+3); void *
533642:  STR             R0, [R5,#8]
533644:  MOV             R0, R5; this
533646:  VST1.8          {D16}, [R5]
53364A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53364E:  MOV             R0, R5; p
533650:  BLX             free
533654:  LDR             R0, =(UseDataFence_ptr - 0x53365A)
533656:  ADD             R0, PC; UseDataFence_ptr
533658:  LDR             R0, [R0]; UseDataFence
53365A:  LDRB            R0, [R0]
53365C:  CMP             R0, #0
53365E:  IT NE
533660:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533664:  MOVS            R0, #4; byte_count
533666:  BLX             malloc
53366A:  MOV             R5, R0
53366C:  LDR             R0, [R4,#0x54]
53366E:  STR             R0, [R5]
533670:  MOV             R0, R5; this
533672:  MOVS            R1, #byte_4; void *
533674:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533678:  MOV             R0, R5; p
53367A:  BLX             free
53367E:  LDR             R0, =(UseDataFence_ptr - 0x533684)
533680:  ADD             R0, PC; UseDataFence_ptr
533682:  LDR             R0, [R0]; UseDataFence
533684:  LDRB            R0, [R0]
533686:  CMP             R0, #0
533688:  IT NE
53368A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53368E:  MOVS            R0, #4; byte_count
533690:  BLX             malloc
533694:  MOV             R5, R0
533696:  LDR             R0, [R4,#0x58]
533698:  STR             R0, [R5]
53369A:  MOV             R0, R5; this
53369C:  MOVS            R1, #byte_4; void *
53369E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5336A2:  MOV             R0, R5; p
5336A4:  BLX             free
5336A8:  LDR             R0, [R4,#0x60]
5336AA:  CBZ             R0, loc_53371C
5336AC:  LDR             R1, =(UseDataFence_ptr - 0x5336B6)
5336AE:  LDRB.W          R0, [R0,#0x3A]
5336B2:  ADD             R1, PC; UseDataFence_ptr
5336B4:  AND.W           R6, R0, #7
5336B8:  LDR             R1, [R1]; UseDataFence
5336BA:  LDRB            R1, [R1]
5336BC:  CMP             R1, #0
5336BE:  IT NE
5336C0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5336C4:  MOVS            R0, #4; byte_count
5336C6:  BLX             malloc
5336CA:  MOV             R5, R0
5336CC:  MOVS            R1, #byte_4; void *
5336CE:  STR             R6, [R5]
5336D0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5336D4:  MOV             R0, R5; p
5336D6:  BLX             free
5336DA:  LDR             R0, [R4,#0x60]; CObject *
5336DC:  LDRB.W          R1, [R0,#0x3A]
5336E0:  AND.W           R1, R1, #7
5336E4:  CMP             R1, #2
5336E6:  BEQ             loc_533744
5336E8:  CMP             R1, #4
5336EA:  BEQ             loc_533750
5336EC:  CMP             R1, #3
5336EE:  ITT NE
5336F0:  POPNE.W         {R11}
5336F4:  POPNE           {R4-R7,PC}
5336F6:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5336FA:  MOV             R4, R0
5336FC:  LDR             R0, =(UseDataFence_ptr - 0x533702)
5336FE:  ADD             R0, PC; UseDataFence_ptr
533700:  B               loc_53375A
533702:  LDR             R0, [R4]
533704:  LDR             R1, [R0,#0x14]
533706:  MOV             R0, R4
533708:  BLX             R1
53370A:  MOV             R1, R0; int
53370C:  MOVW            R0, #0x517; int
533710:  POP.W           {R11}
533714:  POP.W           {R4-R7,LR}
533718:  B.W             sub_1941D4
53371C:  LDR             R0, =(UseDataFence_ptr - 0x533722)
53371E:  ADD             R0, PC; UseDataFence_ptr
533720:  LDR             R0, [R0]; UseDataFence
533722:  LDRB            R0, [R0]
533724:  CMP             R0, #0
533726:  IT NE
533728:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53372C:  MOVS            R0, #4; byte_count
53372E:  BLX             malloc
533732:  MOV             R4, R0
533734:  MOVS            R0, #0
533736:  STR             R0, [R4]
533738:  MOV             R0, R4; this
53373A:  MOVS            R1, #byte_4; void *
53373C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533740:  MOV             R0, R4
533742:  B               loc_533778
533744:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
533748:  MOV             R4, R0
53374A:  LDR             R0, =(UseDataFence_ptr - 0x533750)
53374C:  ADD             R0, PC; UseDataFence_ptr
53374E:  B               loc_53375A
533750:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
533754:  MOV             R4, R0
533756:  LDR             R0, =(UseDataFence_ptr - 0x53375C)
533758:  ADD             R0, PC; UseDataFence_ptr
53375A:  LDR             R0, [R0]; UseDataFence
53375C:  LDRB            R0, [R0]
53375E:  CMP             R0, #0
533760:  IT NE
533762:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533766:  MOVS            R0, #4; byte_count
533768:  BLX             malloc
53376C:  MOV             R5, R0
53376E:  MOVS            R1, #byte_4; void *
533770:  STR             R4, [R5]
533772:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533776:  MOV             R0, R5; p
533778:  POP.W           {R11}
53377C:  POP.W           {R4-R7,LR}
533780:  B.W             j_free
