; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStill10CreateTaskEv
; Address            : 0x494638 - 0x4946F8
; =========================================================

494638:  PUSH            {R4,R5,R7,LR}
49463A:  ADD             R7, SP, #8
49463C:  SUB             SP, SP, #0x28; float
49463E:  LDR             R0, =(UseDataFence_ptr - 0x494644)
494640:  ADD             R0, PC; UseDataFence_ptr
494642:  LDR             R0, [R0]; UseDataFence
494644:  LDRB            R4, [R0]
494646:  CBZ             R4, loc_49465C
494648:  LDR             R0, =(UseDataFence_ptr - 0x494650)
49464A:  MOVS            R1, #(stderr+2); void *
49464C:  ADD             R0, PC; UseDataFence_ptr
49464E:  LDR             R5, [R0]; UseDataFence
494650:  MOVS            R0, #0
494652:  STRB            R0, [R5]
494654:  ADD             R0, SP, #0x30+var_18; this
494656:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49465A:  STRB            R4, [R5]
49465C:  ADD             R0, SP, #0x30+var_C; this
49465E:  MOVS            R1, #byte_4; void *
494660:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494664:  LDR             R0, =(UseDataFence_ptr - 0x49466A)
494666:  ADD             R0, PC; UseDataFence_ptr
494668:  LDR             R0, [R0]; UseDataFence
49466A:  LDRB            R4, [R0]
49466C:  CBZ             R4, loc_494682
49466E:  LDR             R0, =(UseDataFence_ptr - 0x494676)
494670:  MOVS            R1, #(stderr+2); void *
494672:  ADD             R0, PC; UseDataFence_ptr
494674:  LDR             R5, [R0]; UseDataFence
494676:  MOVS            R0, #0
494678:  STRB            R0, [R5]
49467A:  ADD             R0, SP, #0x30+var_18; this
49467C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494680:  STRB            R4, [R5]
494682:  ADD             R0, SP, #0x30+var_18; this
494684:  MOVS            R1, #(byte_9+3); void *
494686:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49468A:  LDR             R0, =(UseDataFence_ptr - 0x494690)
49468C:  ADD             R0, PC; UseDataFence_ptr
49468E:  LDR             R0, [R0]; UseDataFence
494690:  LDRB            R4, [R0]
494692:  CBZ             R4, loc_4946A8
494694:  LDR             R0, =(UseDataFence_ptr - 0x49469C)
494696:  MOVS            R1, #(stderr+2); void *
494698:  ADD             R0, PC; UseDataFence_ptr
49469A:  LDR             R5, [R0]; UseDataFence
49469C:  MOVS            R0, #0
49469E:  STRB            R0, [R5]
4946A0:  ADD             R0, SP, #0x30+var_1C; this
4946A2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4946A6:  STRB            R4, [R5]
4946A8:  ADD             R0, SP, #0x30+var_1C; this
4946AA:  MOVS            R1, #byte_4; void *
4946AC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4946B0:  LDR             R0, =(UseDataFence_ptr - 0x4946B6)
4946B2:  ADD             R0, PC; UseDataFence_ptr
4946B4:  LDR             R0, [R0]; UseDataFence
4946B6:  LDRB            R4, [R0]
4946B8:  CBZ             R4, loc_4946CE
4946BA:  LDR             R0, =(UseDataFence_ptr - 0x4946C2)
4946BC:  MOVS            R1, #(stderr+2); void *
4946BE:  ADD             R0, PC; UseDataFence_ptr
4946C0:  LDR             R5, [R0]; UseDataFence
4946C2:  MOVS            R0, #0
4946C4:  STRB            R0, [R5]
4946C6:  ADD             R0, SP, #0x30+var_20; this
4946C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4946CC:  STRB            R4, [R5]
4946CE:  ADD             R0, SP, #0x30+var_20; this
4946D0:  MOVS            R1, #byte_4; void *
4946D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4946D6:  MOVS            R0, #word_28; this
4946D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4946DC:  LDR             R1, [SP,#0x30+var_C]; int
4946DE:  MOVS            R2, #0
4946E0:  LDR             R3, [SP,#0x30+var_1C]; float
4946E2:  VLDR            S0, [SP,#0x30+var_20]
4946E6:  STRD.W          R2, R2, [SP,#0x30+var_2C]; bool
4946EA:  ADD             R2, SP, #0x30+var_18; CVector *
4946EC:  VSTR            S0, [SP,#0x30+var_30]
4946F0:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
4946F4:  ADD             SP, SP, #0x28 ; '('
4946F6:  POP             {R4,R5,R7,PC}
