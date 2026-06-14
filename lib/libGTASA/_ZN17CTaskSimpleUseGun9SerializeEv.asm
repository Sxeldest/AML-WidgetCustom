; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun9SerializeEv
; Address            : 0x4E955C - 0x4E973A
; =========================================================

4E955C:  PUSH            {R4-R7,LR}
4E955E:  ADD             R7, SP, #0xC
4E9560:  PUSH.W          {R11}
4E9564:  VPUSH           {D8}
4E9568:  MOV             R4, R0
4E956A:  LDR             R0, [R4]
4E956C:  LDR             R1, [R0,#0x14]
4E956E:  MOV             R0, R4
4E9570:  BLX             R1
4E9572:  MOV             R5, R0
4E9574:  LDR             R0, =(UseDataFence_ptr - 0x4E957A)
4E9576:  ADD             R0, PC; UseDataFence_ptr
4E9578:  LDR             R0, [R0]; UseDataFence
4E957A:  LDRB            R0, [R0]
4E957C:  CMP             R0, #0
4E957E:  IT NE
4E9580:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9584:  MOVS            R0, #4; byte_count
4E9586:  BLX             malloc
4E958A:  MOV             R6, R0
4E958C:  MOVS            R1, #byte_4; void *
4E958E:  STR             R5, [R6]
4E9590:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9594:  MOV             R0, R6; p
4E9596:  BLX             free
4E959A:  LDR             R0, [R4]
4E959C:  LDR             R1, [R0,#0x14]
4E959E:  MOV             R0, R4
4E95A0:  BLX             R1
4E95A2:  MOVW            R1, #0x3F9
4E95A6:  CMP             R0, R1
4E95A8:  BNE             loc_4E95FE
4E95AA:  LDR             R0, [R4,#0x1C]
4E95AC:  CBZ             R0, loc_4E961C
4E95AE:  LDR             R1, =(UseDataFence_ptr - 0x4E95B8)
4E95B0:  LDRB.W          R0, [R0,#0x3A]
4E95B4:  ADD             R1, PC; UseDataFence_ptr
4E95B6:  AND.W           R6, R0, #7
4E95BA:  LDR             R1, [R1]; UseDataFence
4E95BC:  LDRB            R1, [R1]
4E95BE:  CMP             R1, #0
4E95C0:  IT NE
4E95C2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E95C6:  MOVS            R0, #4; byte_count
4E95C8:  BLX             malloc
4E95CC:  MOV             R5, R0
4E95CE:  MOVS            R1, #byte_4; void *
4E95D0:  STR             R6, [R5]
4E95D2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E95D6:  MOV             R0, R5; p
4E95D8:  BLX             free
4E95DC:  LDR             R0, [R4,#0x1C]; CObject *
4E95DE:  LDRB.W          R1, [R0,#0x3A]
4E95E2:  AND.W           R1, R1, #7
4E95E6:  CMP             R1, #2
4E95E8:  BEQ             loc_4E9644
4E95EA:  CMP             R1, #4
4E95EC:  BEQ             loc_4E9650
4E95EE:  CMP             R1, #3
4E95F0:  BNE             loc_4E967C
4E95F2:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4E95F6:  MOV             R5, R0
4E95F8:  LDR             R0, =(UseDataFence_ptr - 0x4E95FE)
4E95FA:  ADD             R0, PC; UseDataFence_ptr
4E95FC:  B               loc_4E965A
4E95FE:  LDR             R0, [R4]
4E9600:  LDR             R1, [R0,#0x14]
4E9602:  MOV             R0, R4
4E9604:  BLX             R1
4E9606:  MOV             R1, R0; int
4E9608:  MOVW            R0, #0x3F9; int
4E960C:  VPOP            {D8}
4E9610:  POP.W           {R11}
4E9614:  POP.W           {R4-R7,LR}
4E9618:  B.W             sub_1941D4
4E961C:  LDR             R0, =(UseDataFence_ptr - 0x4E9622)
4E961E:  ADD             R0, PC; UseDataFence_ptr
4E9620:  LDR             R0, [R0]; UseDataFence
4E9622:  LDRB            R0, [R0]
4E9624:  CMP             R0, #0
4E9626:  IT NE
4E9628:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E962C:  MOVS            R0, #4; byte_count
4E962E:  BLX             malloc
4E9632:  MOV             R5, R0
4E9634:  MOVS            R0, #0
4E9636:  STR             R0, [R5]
4E9638:  MOV             R0, R5; this
4E963A:  MOVS            R1, #byte_4; void *
4E963C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9640:  MOV             R0, R5
4E9642:  B               loc_4E9678
4E9644:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4E9648:  MOV             R5, R0
4E964A:  LDR             R0, =(UseDataFence_ptr - 0x4E9650)
4E964C:  ADD             R0, PC; UseDataFence_ptr
4E964E:  B               loc_4E965A
4E9650:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
4E9654:  MOV             R5, R0
4E9656:  LDR             R0, =(UseDataFence_ptr - 0x4E965C)
4E9658:  ADD             R0, PC; UseDataFence_ptr
4E965A:  LDR             R0, [R0]; UseDataFence
4E965C:  LDRB            R0, [R0]
4E965E:  CMP             R0, #0
4E9660:  IT NE
4E9662:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9666:  MOVS            R0, #4; byte_count
4E9668:  BLX             malloc
4E966C:  MOV             R6, R0
4E966E:  MOVS            R1, #byte_4; void *
4E9670:  STR             R5, [R6]
4E9672:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E9676:  MOV             R0, R6; p
4E9678:  BLX             free
4E967C:  LDR             R0, =(UseDataFence_ptr - 0x4E9682)
4E967E:  ADD             R0, PC; UseDataFence_ptr
4E9680:  LDR             R0, [R0]; UseDataFence
4E9682:  LDRB            R0, [R0]
4E9684:  CMP             R0, #0
4E9686:  IT NE
4E9688:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E968C:  MOVS            R0, #0xC; byte_count
4E968E:  BLX             malloc
4E9692:  ADD.W           R1, R4, #0x20 ; ' '
4E9696:  MOV             R5, R0
4E9698:  LDR             R0, [R4,#0x28]
4E969A:  VLD1.8          {D16}, [R1]
4E969E:  MOVS            R1, #(byte_9+3); void *
4E96A0:  STR             R0, [R5,#8]
4E96A2:  MOV             R0, R5; this
4E96A4:  VST1.8          {D16}, [R5]
4E96A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E96AC:  MOV             R0, R5; p
4E96AE:  BLX             free
4E96B2:  LDR             R0, =(UseDataFence_ptr - 0x4E96BC)
4E96B4:  LDRSB.W         R1, [R4,#0xF]
4E96B8:  ADD             R0, PC; UseDataFence_ptr
4E96BA:  LDR             R0, [R0]; UseDataFence
4E96BC:  VMOV            S0, R1
4E96C0:  VCVT.F32.S32    S16, S0
4E96C4:  LDRB            R0, [R0]
4E96C6:  CMP             R0, #0
4E96C8:  IT NE
4E96CA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E96CE:  MOVS            R0, #1; byte_count
4E96D0:  BLX             malloc
4E96D4:  MOV             R5, R0
4E96D6:  VMOV            R0, S16
4E96DA:  MOVS            R1, #(stderr+1); void *
4E96DC:  STRB            R0, [R5]
4E96DE:  MOV             R0, R5; this
4E96E0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E96E4:  MOV             R0, R5; p
4E96E6:  BLX             free
4E96EA:  LDR             R0, =(UseDataFence_ptr - 0x4E96F0)
4E96EC:  ADD             R0, PC; UseDataFence_ptr
4E96EE:  LDR             R0, [R0]; UseDataFence
4E96F0:  LDRB            R0, [R0]
4E96F2:  CMP             R0, #0
4E96F4:  IT NE
4E96F6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E96FA:  MOVS            R0, #2; byte_count
4E96FC:  BLX             malloc
4E9700:  MOV             R5, R0
4E9702:  LDRH            R0, [R4,#0x34]
4E9704:  STRH            R0, [R5]
4E9706:  MOV             R0, R5; this
4E9708:  MOVS            R1, #(stderr+2); void *
4E970A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4E970E:  MOV             R0, R5; p
4E9710:  BLX             free
4E9714:  LDR             R0, =(UseDataFence_ptr - 0x4E971A)
4E9716:  ADD             R0, PC; UseDataFence_ptr
4E9718:  LDR             R0, [R0]; UseDataFence
4E971A:  LDRB            R0, [R0]
4E971C:  CMP             R0, #0
4E971E:  IT NE
4E9720:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4E9724:  ADD.W           R0, R4, #0x3B ; ';'; this
4E9728:  MOVS            R1, #(stderr+1); void *
4E972A:  VPOP            {D8}
4E972E:  POP.W           {R11}
4E9732:  POP.W           {R4-R7,LR}
4E9736:  B.W             sub_19EA3C
