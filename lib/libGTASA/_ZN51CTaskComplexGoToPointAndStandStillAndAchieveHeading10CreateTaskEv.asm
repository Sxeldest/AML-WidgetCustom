; =========================================================
; Game Engine Function: _ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeading10CreateTaskEv
; Address            : 0x494718 - 0x4947CE
; =========================================================

494718:  PUSH            {R4,R5,R7,LR}
49471A:  ADD             R7, SP, #8
49471C:  SUB             SP, SP, #0x20; float
49471E:  LDR             R0, =(UseDataFence_ptr - 0x494724)
494720:  ADD             R0, PC; UseDataFence_ptr
494722:  LDR             R0, [R0]; UseDataFence
494724:  LDRB            R4, [R0]
494726:  CBZ             R4, loc_49473C
494728:  LDR             R0, =(UseDataFence_ptr - 0x494730)
49472A:  MOVS            R1, #(stderr+2); void *
49472C:  ADD             R0, PC; UseDataFence_ptr
49472E:  LDR             R5, [R0]; UseDataFence
494730:  MOVS            R0, #0
494732:  STRB            R0, [R5]
494734:  ADD             R0, SP, #0x28+var_18; this
494736:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49473A:  STRB            R4, [R5]
49473C:  ADD             R0, SP, #0x28+var_C; this
49473E:  MOVS            R1, #byte_4; void *
494740:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494744:  LDR             R0, =(UseDataFence_ptr - 0x49474A)
494746:  ADD             R0, PC; UseDataFence_ptr
494748:  LDR             R0, [R0]; UseDataFence
49474A:  LDRB            R4, [R0]
49474C:  CBZ             R4, loc_494762
49474E:  LDR             R0, =(UseDataFence_ptr - 0x494756)
494750:  MOVS            R1, #(stderr+2); void *
494752:  ADD             R0, PC; UseDataFence_ptr
494754:  LDR             R5, [R0]; UseDataFence
494756:  MOVS            R0, #0
494758:  STRB            R0, [R5]
49475A:  ADD             R0, SP, #0x28+var_18; this
49475C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494760:  STRB            R4, [R5]
494762:  ADD             R0, SP, #0x28+var_18; this
494764:  MOVS            R1, #(byte_9+3); void *
494766:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49476A:  LDR             R0, =(UseDataFence_ptr - 0x494770)
49476C:  ADD             R0, PC; UseDataFence_ptr
49476E:  LDR             R0, [R0]; UseDataFence
494770:  LDRB            R4, [R0]
494772:  CBZ             R4, loc_494788
494774:  LDR             R0, =(UseDataFence_ptr - 0x49477C)
494776:  MOVS            R1, #(stderr+2); void *
494778:  ADD             R0, PC; UseDataFence_ptr
49477A:  LDR             R5, [R0]; UseDataFence
49477C:  MOVS            R0, #0
49477E:  STRB            R0, [R5]
494780:  ADD             R0, SP, #0x28+var_1C; this
494782:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494786:  STRB            R4, [R5]
494788:  ADD             R0, SP, #0x28+var_1C; this
49478A:  MOVS            R1, #byte_4; void *
49478C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494790:  MOVS            R0, #word_30; this
494792:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494796:  LDR             R1, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x4947A0)
494798:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x4947A2)
49479A:  LDR             R3, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x4947A4)
49479C:  ADD             R1, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
49479E:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
4947A0:  ADD             R3, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
4947A2:  LDR             R5, [R1]; CTaskSimpleGoTo::ms_fTargetRadius ...
4947A4:  LDR             R2, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
4947A6:  LDR             R4, [R3]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
4947A8:  LDR             R1, [SP,#0x28+var_C]; int
4947AA:  LDR             R3, [SP,#0x28+var_1C]; float
4947AC:  VLDR            S0, [R5]
4947B0:  VLDR            S2, [R2]
4947B4:  ADD             R2, SP, #0x28+var_18; CVector *
4947B6:  VLDR            S4, [R4]
4947BA:  VSTR            S0, [SP,#0x28+var_28]
4947BE:  VSTR            S4, [SP,#0x28+var_24]
4947C2:  VSTR            S2, [SP,#0x28+var_20]
4947C6:  BLX             j__ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeadingC2EiRK7CVectorffff; CTaskComplexGoToPointAndStandStillAndAchieveHeading::CTaskComplexGoToPointAndStandStillAndAchieveHeading(int,CVector const&,float,float,float,float)
4947CA:  ADD             SP, SP, #0x20 ; ' '
4947CC:  POP             {R4,R5,R7,PC}
