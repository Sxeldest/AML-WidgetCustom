; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes4LoadEv
; Address            : 0x48A624 - 0x48A6DC
; =========================================================

48A624:  PUSH            {R4-R7,LR}
48A626:  ADD             R7, SP, #0xC
48A628:  PUSH.W          {R8-R10}
48A62C:  SUB             SP, SP, #0x108; int
48A62E:  LDR             R0, =(__stack_chk_guard_ptr - 0x48A636)
48A630:  LDR             R1, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x48A638)
48A632:  ADD             R0, PC; __stack_chk_guard_ptr
48A634:  ADD             R1, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
48A636:  LDR             R0, [R0]; __stack_chk_guard
48A638:  LDR             R2, [R0]; int
48A63A:  LDR             R0, [R1]; this
48A63C:  MOVS            R1, #dword_14; void *
48A63E:  STR             R2, [SP,#0x120+var_1C]
48A640:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A644:  LDR             R0, =(_ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr - 0x48A64C)
48A646:  MOVS            R1, #word_28; void *
48A648:  ADD             R0, PC; _ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr
48A64A:  LDR             R0, [R0]; this
48A64C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A650:  LDR             R0, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x48A658)
48A652:  MOVS            R1, #dword_14; void *
48A654:  ADD             R0, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
48A656:  LDR             R0, [R0]; this
48A658:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A65C:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x48A666)
48A65E:  MOVW            R1, #(elf_hash_bucket+0xF0C4); void *
48A662:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
48A664:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
48A666:  LDR             R0, [R0]; this
48A668:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A66C:  LDR             R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x48A678)
48A66E:  ADD.W           R8, SP, #0x120+var_11C
48A672:  MOVS            R4, #0
48A674:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
48A676:  LDR             R6, [R0]; CDecisionMakerTypes::m_bIsActive ...
48A678:  LDR             R0, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x48A67E)
48A67A:  ADD             R0, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
48A67C:  LDR.W           R10, [R0]; CDecisionMakerTypes::m_types ...
48A680:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x48A686)
48A682:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
48A684:  LDR.W           R9, [R0]; CTheScripts::MissionCleanUp ...
48A688:  CMP             R4, #0xF
48A68A:  BLT             loc_48A6BC
48A68C:  LDRB            R0, [R6,R4]
48A68E:  CBZ             R0, loc_48A6BC
48A690:  MOV             R0, R4; this
48A692:  MOVS            R1, #7; int
48A694:  BLX             j__ZN11CTheScripts25GetUniqueScriptThingIndexEih; CTheScripts::GetUniqueScriptThingIndex(int,uchar)
48A698:  MOV             R5, R0
48A69A:  SUB.W           R0, R4, #0xF; this
48A69E:  MOV             R1, R8; int
48A6A0:  BLX             j__ZN29CDecisionMakerTypesFileLoader12GetPedDMNameEiPc; CDecisionMakerTypesFileLoader::GetPedDMName(int,char *)
48A6A4:  LDRB.W          R1, [R10,R4]; char *
48A6A8:  MOV             R0, R8; this
48A6AA:  MOVS            R2, #1; unsigned __int8
48A6AC:  MOV             R3, R4; unsigned __int8
48A6AE:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
48A6B2:  MOV             R0, R9; this
48A6B4:  MOV             R1, R5; int
48A6B6:  MOVS            R2, #9; unsigned __int8
48A6B8:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
48A6BC:  ADDS            R4, #1
48A6BE:  CMP             R4, #0x14
48A6C0:  BNE             loc_48A688
48A6C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x48A6CA)
48A6C4:  LDR             R1, [SP,#0x120+var_1C]
48A6C6:  ADD             R0, PC; __stack_chk_guard_ptr
48A6C8:  LDR             R0, [R0]; __stack_chk_guard
48A6CA:  LDR             R0, [R0]
48A6CC:  SUBS            R0, R0, R1
48A6CE:  ITTT EQ
48A6D0:  ADDEQ           SP, SP, #0x108
48A6D2:  POPEQ.W         {R8-R10}
48A6D6:  POPEQ           {R4-R7,PC}
48A6D8:  BLX             __stack_chk_fail
