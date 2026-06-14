; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE10CreateTaskEv
; Address            : 0x495690 - 0x4957E4
; =========================================================

495690:  PUSH            {R4,R5,R7,LR}
495692:  ADD             R7, SP, #8
495694:  SUB             SP, SP, #8
495696:  LDR             R0, =(UseDataFence_ptr - 0x49569C)
495698:  ADD             R0, PC; UseDataFence_ptr
49569A:  LDR             R0, [R0]; UseDataFence
49569C:  LDRB            R4, [R0]
49569E:  CBZ             R4, loc_4956B4
4956A0:  LDR             R0, =(UseDataFence_ptr - 0x4956A8)
4956A2:  MOVS            R1, #(stderr+2); void *
4956A4:  ADD             R0, PC; UseDataFence_ptr
4956A6:  LDR             R5, [R0]; UseDataFence
4956A8:  MOVS            R0, #0
4956AA:  STRB            R0, [R5]
4956AC:  ADD             R0, SP, #0x10+var_C; this
4956AE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4956B2:  STRB            R4, [R5]
4956B4:  ADD             R0, SP, #0x10+var_C; this
4956B6:  MOVS            R1, #byte_4; void *
4956B8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4956BC:  LDR             R0, [SP,#0x10+var_C]
4956BE:  CMP             R0, #2
4956C0:  BEQ             loc_4956FC
4956C2:  CMP             R0, #4
4956C4:  BEQ             loc_49572E
4956C6:  CMP             R0, #3
4956C8:  BNE             loc_495762
4956CA:  LDR             R0, =(UseDataFence_ptr - 0x4956D0)
4956CC:  ADD             R0, PC; UseDataFence_ptr
4956CE:  LDR             R0, [R0]; UseDataFence
4956D0:  LDRB            R4, [R0]
4956D2:  CBZ             R4, loc_4956E8
4956D4:  LDR             R0, =(UseDataFence_ptr - 0x4956DC)
4956D6:  MOVS            R1, #(stderr+2); void *
4956D8:  ADD             R0, PC; UseDataFence_ptr
4956DA:  LDR             R5, [R0]; UseDataFence
4956DC:  MOVS            R0, #0
4956DE:  STRB            R0, [R5]
4956E0:  MOV             R0, SP; this
4956E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4956E6:  STRB            R4, [R5]
4956E8:  MOV             R0, SP; this
4956EA:  MOVS            R1, #byte_4; void *
4956EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4956F0:  LDR             R0, [SP,#0x10+var_10]; this
4956F2:  ADDS            R1, R0, #1; int
4956F4:  BEQ             loc_495762
4956F6:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
4956FA:  B               loc_49575E
4956FC:  LDR             R0, =(UseDataFence_ptr - 0x495702)
4956FE:  ADD             R0, PC; UseDataFence_ptr
495700:  LDR             R0, [R0]; UseDataFence
495702:  LDRB            R4, [R0]
495704:  CBZ             R4, loc_49571A
495706:  LDR             R0, =(UseDataFence_ptr - 0x49570E)
495708:  MOVS            R1, #(stderr+2); void *
49570A:  ADD             R0, PC; UseDataFence_ptr
49570C:  LDR             R5, [R0]; UseDataFence
49570E:  MOVS            R0, #0
495710:  STRB            R0, [R5]
495712:  MOV             R0, SP; this
495714:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495718:  STRB            R4, [R5]
49571A:  MOV             R0, SP; this
49571C:  MOVS            R1, #byte_4; void *
49571E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495722:  LDR             R0, [SP,#0x10+var_10]; this
495724:  ADDS            R1, R0, #1; int
495726:  BEQ             loc_495762
495728:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49572C:  B               loc_49575E
49572E:  LDR             R0, =(UseDataFence_ptr - 0x495734)
495730:  ADD             R0, PC; UseDataFence_ptr
495732:  LDR             R0, [R0]; UseDataFence
495734:  LDRB            R4, [R0]
495736:  CBZ             R4, loc_49574C
495738:  LDR             R0, =(UseDataFence_ptr - 0x495740)
49573A:  MOVS            R1, #(stderr+2); void *
49573C:  ADD             R0, PC; UseDataFence_ptr
49573E:  LDR             R5, [R0]; UseDataFence
495740:  MOVS            R0, #0
495742:  STRB            R0, [R5]
495744:  MOV             R0, SP; this
495746:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49574A:  STRB            R4, [R5]
49574C:  MOV             R0, SP; this
49574E:  MOVS            R1, #byte_4; void *
495750:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495754:  LDR             R0, [SP,#0x10+var_10]; this
495756:  ADDS            R1, R0, #1; int
495758:  BEQ             loc_495762
49575A:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
49575E:  MOV             R4, R0
495760:  B               loc_495764
495762:  MOVS            R4, #0
495764:  MOVS            R0, #dword_58; this
495766:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49576A:  MOV             R5, R0
49576C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
495770:  ADR             R2, dword_4957F0
495772:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE_ptr - 0x495780)
495774:  VLD1.64         {D16-D17}, [R2@128]
495778:  ADD.W           R2, R5, #0x18
49577C:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE_ptr
49577E:  MOV.W           R3, #0x3E8
495782:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorFixedPos_ptr - 0x495792)
495784:  CMP             R4, #0
495786:  VST1.32         {D16-D17}, [R2]
49578A:  MOVW            R2, #0xC350
49578E:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorFixedPos_ptr
495790:  STRD.W          R2, R3, [R5,#0x10]
495794:  MOV.W           R2, #0
495798:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorFixedPos> ...
49579A:  STRH            R2, [R5,#0x30]
49579C:  STRH            R2, [R5,#0x3C]
49579E:  ADD.W           R0, R0, #8
4957A2:  STRD.W          R2, R2, [R5,#0x28]
4957A6:  STRD.W          R2, R2, [R5,#0x34]
4957AA:  STRD.W          R2, R2, [R5,#0x44]
4957AE:  STR             R2, [R5,#0x4C]
4957B0:  MOV.W           R2, #6
4957B4:  STR             R2, [R5,#0x50]
4957B6:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorFixedPos ...
4957B8:  LDRB.W          R2, [R5,#0x54]
4957BC:  STR             R0, [R5]
4957BE:  ADD.W           R0, R1, #8
4957C2:  STR             R0, [R5,#0x40]
4957C4:  AND.W           R0, R2, #0xF0
4957C8:  MOV             R1, R5
4957CA:  ORR.W           R0, R0, #3
4957CE:  STRB.W          R0, [R5,#0x54]
4957D2:  STR.W           R4, [R1,#0xC]!; CEntity **
4957D6:  ITT NE
4957D8:  MOVNE           R0, R4; this
4957DA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4957DE:  MOV             R0, R5
4957E0:  ADD             SP, SP, #8
4957E2:  POP             {R4,R5,R7,PC}
