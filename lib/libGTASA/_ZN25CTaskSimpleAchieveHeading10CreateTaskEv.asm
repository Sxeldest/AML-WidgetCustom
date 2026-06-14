; =========================================================
; Game Engine Function: _ZN25CTaskSimpleAchieveHeading10CreateTaskEv
; Address            : 0x494594 - 0x494620
; =========================================================

494594:  PUSH            {R4,R5,R7,LR}
494596:  ADD             R7, SP, #8
494598:  SUB             SP, SP, #0x10
49459A:  LDR             R0, =(UseDataFence_ptr - 0x4945A0)
49459C:  ADD             R0, PC; UseDataFence_ptr
49459E:  LDR             R0, [R0]; UseDataFence
4945A0:  LDRB            R4, [R0]
4945A2:  CBZ             R4, loc_4945B8
4945A4:  LDR             R0, =(UseDataFence_ptr - 0x4945AC)
4945A6:  MOVS            R1, #(stderr+2); void *
4945A8:  ADD             R0, PC; UseDataFence_ptr
4945AA:  LDR             R5, [R0]; UseDataFence
4945AC:  MOVS            R0, #0
4945AE:  STRB            R0, [R5]
4945B0:  ADD             R0, SP, #0x18+var_C; this
4945B2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4945B6:  STRB            R4, [R5]
4945B8:  ADD             R0, SP, #0x18+var_C; this
4945BA:  MOVS            R1, #byte_4; void *
4945BC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4945C0:  LDR             R0, =(UseDataFence_ptr - 0x4945C6)
4945C2:  ADD             R0, PC; UseDataFence_ptr
4945C4:  LDR             R0, [R0]; UseDataFence
4945C6:  LDRB            R4, [R0]
4945C8:  CBZ             R4, loc_4945DE
4945CA:  LDR             R0, =(UseDataFence_ptr - 0x4945D2)
4945CC:  MOVS            R1, #(stderr+2); void *
4945CE:  ADD             R0, PC; UseDataFence_ptr
4945D0:  LDR             R5, [R0]; UseDataFence
4945D2:  MOVS            R0, #0
4945D4:  STRB            R0, [R5]
4945D6:  ADD             R0, SP, #0x18+var_10; this
4945D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4945DC:  STRB            R4, [R5]
4945DE:  ADD             R0, SP, #0x18+var_10; this
4945E0:  MOVS            R1, #byte_4; void *
4945E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4945E6:  LDR             R0, =(UseDataFence_ptr - 0x4945EC)
4945E8:  ADD             R0, PC; UseDataFence_ptr
4945EA:  LDR             R0, [R0]; UseDataFence
4945EC:  LDRB            R4, [R0]
4945EE:  CBZ             R4, loc_494604
4945F0:  LDR             R0, =(UseDataFence_ptr - 0x4945F8)
4945F2:  MOVS            R1, #(stderr+2); void *
4945F4:  ADD             R0, PC; UseDataFence_ptr
4945F6:  LDR             R5, [R0]; UseDataFence
4945F8:  MOVS            R0, #0
4945FA:  STRB            R0, [R5]
4945FC:  ADD             R0, SP, #0x18+var_14; this
4945FE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494602:  STRB            R4, [R5]
494604:  ADD             R0, SP, #0x18+var_14; this
494606:  MOVS            R1, #byte_4; void *
494608:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49460C:  MOVS            R0, #off_18; this
49460E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494612:  LDRD.W          R3, R2, [SP,#0x18+var_14]; float
494616:  LDR             R1, [SP,#0x18+var_C]; float
494618:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
49461C:  ADD             SP, SP, #0x10
49461E:  POP             {R4,R5,R7,PC}
