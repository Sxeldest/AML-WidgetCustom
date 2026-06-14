; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun10CreateTaskEv
; Address            : 0x496598 - 0x496742
; =========================================================

496598:  PUSH            {R4-R7,LR}
49659A:  ADD             R7, SP, #0xC
49659C:  PUSH.W          {R8}
4965A0:  SUB             SP, SP, #0x28
4965A2:  LDR             R0, =(UseDataFence_ptr - 0x4965A8)
4965A4:  ADD             R0, PC; UseDataFence_ptr
4965A6:  LDR             R0, [R0]; UseDataFence
4965A8:  LDRB            R4, [R0]
4965AA:  CBZ             R4, loc_4965C0
4965AC:  LDR             R0, =(UseDataFence_ptr - 0x4965B4)
4965AE:  MOVS            R1, #(stderr+2); void *
4965B0:  ADD             R0, PC; UseDataFence_ptr
4965B2:  LDR             R5, [R0]; UseDataFence
4965B4:  MOVS            R0, #0
4965B6:  STRB            R0, [R5]
4965B8:  ADD             R0, SP, #0x38+var_24; this
4965BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4965BE:  STRB            R4, [R5]
4965C0:  ADD             R0, SP, #0x38+var_18; this
4965C2:  MOVS            R1, #byte_4; void *
4965C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4965C8:  LDR             R0, [SP,#0x38+var_18]
4965CA:  CMP             R0, #2
4965CC:  BEQ             loc_496608
4965CE:  CMP             R0, #4
4965D0:  BEQ             loc_49663A
4965D2:  CMP             R0, #3
4965D4:  BNE             loc_49666E
4965D6:  LDR             R0, =(UseDataFence_ptr - 0x4965DC)
4965D8:  ADD             R0, PC; UseDataFence_ptr
4965DA:  LDR             R0, [R0]; UseDataFence
4965DC:  LDRB            R4, [R0]
4965DE:  CBZ             R4, loc_4965F4
4965E0:  LDR             R0, =(UseDataFence_ptr - 0x4965E8)
4965E2:  MOVS            R1, #(stderr+2); void *
4965E4:  ADD             R0, PC; UseDataFence_ptr
4965E6:  LDR             R5, [R0]; UseDataFence
4965E8:  MOVS            R0, #0
4965EA:  STRB            R0, [R5]
4965EC:  ADD             R0, SP, #0x38+var_24; this
4965EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4965F2:  STRB            R4, [R5]
4965F4:  ADD             R0, SP, #0x38+var_24; this
4965F6:  MOVS            R1, #byte_4; void *
4965F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4965FC:  LDR             R0, [SP,#0x38+var_24]; this
4965FE:  ADDS            R1, R0, #1; int
496600:  BEQ             loc_49666E
496602:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
496606:  B               loc_49666A
496608:  LDR             R0, =(UseDataFence_ptr - 0x49660E)
49660A:  ADD             R0, PC; UseDataFence_ptr
49660C:  LDR             R0, [R0]; UseDataFence
49660E:  LDRB            R4, [R0]
496610:  CBZ             R4, loc_496626
496612:  LDR             R0, =(UseDataFence_ptr - 0x49661A)
496614:  MOVS            R1, #(stderr+2); void *
496616:  ADD             R0, PC; UseDataFence_ptr
496618:  LDR             R5, [R0]; UseDataFence
49661A:  MOVS            R0, #0
49661C:  STRB            R0, [R5]
49661E:  ADD             R0, SP, #0x38+var_24; this
496620:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496624:  STRB            R4, [R5]
496626:  ADD             R0, SP, #0x38+var_24; this
496628:  MOVS            R1, #byte_4; void *
49662A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49662E:  LDR             R0, [SP,#0x38+var_24]; this
496630:  ADDS            R1, R0, #1; int
496632:  BEQ             loc_49666E
496634:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
496638:  B               loc_49666A
49663A:  LDR             R0, =(UseDataFence_ptr - 0x496640)
49663C:  ADD             R0, PC; UseDataFence_ptr
49663E:  LDR             R0, [R0]; UseDataFence
496640:  LDRB            R4, [R0]
496642:  CBZ             R4, loc_496658
496644:  LDR             R0, =(UseDataFence_ptr - 0x49664C)
496646:  MOVS            R1, #(stderr+2); void *
496648:  ADD             R0, PC; UseDataFence_ptr
49664A:  LDR             R5, [R0]; UseDataFence
49664C:  MOVS            R0, #0
49664E:  STRB            R0, [R5]
496650:  ADD             R0, SP, #0x38+var_24; this
496652:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496656:  STRB            R4, [R5]
496658:  ADD             R0, SP, #0x38+var_24; this
49665A:  MOVS            R1, #byte_4; void *
49665C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496660:  LDR             R0, [SP,#0x38+var_24]; this
496662:  ADDS            R1, R0, #1; int
496664:  BEQ             loc_49666E
496666:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
49666A:  MOV             R8, R0
49666C:  B               loc_496672
49666E:  MOV.W           R8, #0
496672:  LDR             R0, =(UseDataFence_ptr - 0x496678)
496674:  ADD             R0, PC; UseDataFence_ptr
496676:  LDR             R0, [R0]; UseDataFence
496678:  LDRB            R5, [R0]
49667A:  CBZ             R5, loc_496690
49667C:  LDR             R0, =(UseDataFence_ptr - 0x496684)
49667E:  MOVS            R1, #(stderr+2); void *
496680:  ADD             R0, PC; UseDataFence_ptr
496682:  LDR             R6, [R0]; UseDataFence
496684:  MOVS            R0, #0
496686:  STRB            R0, [R6]
496688:  ADD             R0, SP, #0x38+var_24; this
49668A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49668E:  STRB            R5, [R6]
496690:  ADD             R0, SP, #0x38+var_24; this
496692:  MOVS            R1, #(byte_9+3); void *
496694:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496698:  LDR             R0, =(UseDataFence_ptr - 0x49669E)
49669A:  ADD             R0, PC; UseDataFence_ptr
49669C:  LDR             R0, [R0]; UseDataFence
49669E:  LDRB            R5, [R0]
4966A0:  CBZ             R5, loc_4966B8
4966A2:  LDR             R0, =(UseDataFence_ptr - 0x4966AA)
4966A4:  MOVS            R1, #(stderr+2); void *
4966A6:  ADD             R0, PC; UseDataFence_ptr
4966A8:  LDR             R6, [R0]; UseDataFence
4966AA:  MOVS            R0, #0
4966AC:  STRB            R0, [R6]
4966AE:  SUB.W           R0, R7, #-var_12; this
4966B2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4966B6:  STRB            R5, [R6]
4966B8:  SUB.W           R0, R7, #-var_25; this
4966BC:  MOVS            R1, #(stderr+1); void *
4966BE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4966C2:  LDR             R0, =(UseDataFence_ptr - 0x4966C8)
4966C4:  ADD             R0, PC; UseDataFence_ptr
4966C6:  LDR             R0, [R0]; UseDataFence
4966C8:  LDRB            R5, [R0]
4966CA:  CBZ             R5, loc_4966E2
4966CC:  LDR             R0, =(UseDataFence_ptr - 0x4966D4)
4966CE:  MOVS            R1, #(stderr+2); void *
4966D0:  ADD             R0, PC; UseDataFence_ptr
4966D2:  LDR             R6, [R0]; UseDataFence
4966D4:  MOVS            R0, #0
4966D6:  STRB            R0, [R6]
4966D8:  SUB.W           R0, R7, #-var_12; this
4966DC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4966E0:  STRB            R5, [R6]
4966E2:  ADD             R0, SP, #0x38+var_28; this
4966E4:  MOVS            R1, #(stderr+2); void *
4966E6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4966EA:  LDR             R0, =(UseDataFence_ptr - 0x4966F0)
4966EC:  ADD             R0, PC; UseDataFence_ptr
4966EE:  LDR             R0, [R0]; UseDataFence
4966F0:  LDRB            R5, [R0]
4966F2:  CBZ             R5, loc_49670A
4966F4:  LDR             R0, =(UseDataFence_ptr - 0x4966FC)
4966F6:  MOVS            R1, #(stderr+2); void *
4966F8:  ADD             R0, PC; UseDataFence_ptr
4966FA:  LDR             R6, [R0]; UseDataFence
4966FC:  MOVS            R0, #0
4966FE:  STRB            R0, [R6]
496700:  SUB.W           R0, R7, #-var_12; this
496704:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496708:  STRB            R5, [R6]
49670A:  SUB.W           R0, R7, #-var_12; this
49670E:  MOVS            R1, #(stderr+1); void *
496710:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496714:  MOVS            R0, #off_3C; this
496716:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49671A:  LDRD.W          R2, R3, [SP,#0x38+var_24]
49671E:  LDRSB.W         R6, [R7,#var_25]
496722:  LDRB.W          R4, [R7,#var_12]
496726:  LDR             R1, [SP,#0x38+var_1C]
496728:  LDRSH.W         R5, [SP,#0x38+var_28]
49672C:  STRD.W          R1, R6, [SP,#0x38+var_38]
496730:  MOV             R1, R8
496732:  STRD.W          R5, R4, [SP,#0x38+var_30]
496736:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
49673A:  ADD             SP, SP, #0x28 ; '('
49673C:  POP.W           {R8}
496740:  POP             {R4-R7,PC}
