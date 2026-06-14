; =========================================================
; Game Engine Function: _ZN22CPedScriptedTaskRecord4LoadEv
; Address            : 0x48A71C - 0x48A874
; =========================================================

48A71C:  PUSH            {R4-R7,LR}
48A71E:  ADD             R7, SP, #0xC
48A720:  PUSH.W          {R8-R11}
48A724:  SUB             SP, SP, #0x5C
48A726:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x48A736)
48A728:  ADD.W           R9, SP, #0x78+var_20
48A72C:  LDR             R1, =(UseDataFence_ptr - 0x48A73C)
48A72E:  ADD.W           R11, SP, #0x78+var_24
48A732:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
48A734:  ADD.W           R10, SP, #0x78+var_2C
48A738:  ADD             R1, PC; UseDataFence_ptr
48A73A:  MOVS            R6, #0
48A73C:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
48A73E:  STR             R0, [SP,#0x78+var_48]
48A740:  LDR             R0, =(UseDataFence_ptr - 0x48A746)
48A742:  ADD             R0, PC; UseDataFence_ptr
48A744:  LDR             R0, [R0]; UseDataFence
48A746:  STR             R0, [SP,#0x78+var_4C]
48A748:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x48A74E)
48A74A:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
48A74C:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
48A74E:  STR             R0, [SP,#0x78+var_50]
48A750:  LDR             R0, [R1]; UseDataFence
48A752:  STR             R0, [SP,#0x78+var_54]
48A754:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x48A75C)
48A756:  LDR             R1, =(UseDataFence_ptr - 0x48A75E)
48A758:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
48A75A:  ADD             R1, PC; UseDataFence_ptr
48A75C:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
48A75E:  STR             R0, [SP,#0x78+var_58]
48A760:  LDR             R0, [R1]; UseDataFence
48A762:  STR             R0, [SP,#0x78+var_5C]
48A764:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x48A76C)
48A766:  LDR             R1, =(UseDataFence_ptr - 0x48A76E)
48A768:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
48A76A:  ADD             R1, PC; UseDataFence_ptr
48A76C:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
48A76E:  STR             R0, [SP,#0x78+var_60]
48A770:  LDR             R0, [R1]; UseDataFence
48A772:  STR             R0, [SP,#0x78+var_64]
48A774:  LDR             R0, =(UseDataFence_ptr - 0x48A77A)
48A776:  ADD             R0, PC; UseDataFence_ptr
48A778:  LDR             R0, [R0]; UseDataFence
48A77A:  STR             R0, [SP,#0x78+var_6C]
48A77C:  LDR             R0, =(UseDataFence_ptr - 0x48A782)
48A77E:  ADD             R0, PC; UseDataFence_ptr
48A780:  LDR             R0, [R0]; UseDataFence
48A782:  STR             R0, [SP,#0x78+var_70]
48A784:  LDR             R0, =(UseDataFence_ptr - 0x48A78A)
48A786:  ADD             R0, PC; UseDataFence_ptr
48A788:  LDR             R0, [R0]; UseDataFence
48A78A:  STR             R0, [SP,#0x78+var_74]
48A78C:  LDR             R0, =(UseDataFence_ptr - 0x48A792)
48A78E:  ADD             R0, PC; UseDataFence_ptr
48A790:  LDR             R0, [R0]; UseDataFence
48A792:  STR             R0, [SP,#0x78+var_68]
48A794:  LDR             R0, [SP,#0x78+var_48]
48A796:  ADD             R0, R6; this
48A798:  BLX             j__ZN26CPedScriptedTaskRecordData5FlushEv; CPedScriptedTaskRecordData::Flush(void)
48A79C:  LDR             R0, [SP,#0x78+var_4C]
48A79E:  LDRB.W          R8, [R0]
48A7A2:  CMP.W           R8, #0
48A7A6:  BEQ             loc_48A7BA
48A7A8:  LDR             R5, [SP,#0x78+var_68]
48A7AA:  MOVS            R0, #0
48A7AC:  MOVS            R1, #(stderr+2); void *
48A7AE:  STRB            R0, [R5]
48A7B0:  MOV             R0, R9; this
48A7B2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A7B6:  STRB.W          R8, [R5]
48A7BA:  MOV             R0, R9; this
48A7BC:  MOVS            R1, #byte_4; void *
48A7BE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A7C2:  LDR             R0, [SP,#0x78+var_20]
48A7C4:  ADDS            R1, R0, #1
48A7C6:  BEQ             loc_48A864
48A7C8:  LDR             R1, [SP,#0x78+var_50]
48A7CA:  MOV             R8, R10
48A7CC:  STR             R0, [R1,R6]
48A7CE:  LDR             R0, [SP,#0x78+var_54]
48A7D0:  LDRB            R5, [R0]
48A7D2:  CBZ             R5, loc_48A7E4
48A7D4:  LDR             R4, [SP,#0x78+var_74]
48A7D6:  MOVS            R0, #0
48A7D8:  MOVS            R1, #(stderr+2); void *
48A7DA:  STRB            R0, [R4]
48A7DC:  MOV             R0, R11; this
48A7DE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A7E2:  STRB            R5, [R4]
48A7E4:  MOV             R0, R11; this
48A7E6:  MOVS            R1, #byte_4; void *
48A7E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A7EC:  LDR             R1, [SP,#0x78+var_58]
48A7EE:  ADD.W           R10, SP, #0x78+var_28
48A7F2:  LDR             R0, [SP,#0x78+var_24]
48A7F4:  ADD             R1, R6
48A7F6:  STR             R0, [R1,#0x10]
48A7F8:  LDR             R0, [SP,#0x78+var_5C]
48A7FA:  LDRB            R5, [R0]
48A7FC:  CBZ             R5, loc_48A80E
48A7FE:  LDR             R4, [SP,#0x78+var_70]
48A800:  MOVS            R0, #0
48A802:  MOVS            R1, #(stderr+2); void *
48A804:  STRB            R0, [R4]
48A806:  MOV             R0, R10; this
48A808:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A80C:  STRB            R5, [R4]
48A80E:  MOV             R0, R10; this
48A810:  MOVS            R1, #byte_4; void *
48A812:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A816:  LDR             R0, [SP,#0x78+var_28]; this
48A818:  ADDS            R1, R0, #1; int
48A81A:  BEQ             loc_48A822
48A81C:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48A820:  B               loc_48A824
48A822:  MOVS            R0, #0
48A824:  LDR             R1, [SP,#0x78+var_60]
48A826:  MOV             R10, R8
48A828:  ADD             R1, R6
48A82A:  STR             R0, [R1,#0xC]
48A82C:  LDR             R0, [SP,#0x78+var_64]
48A82E:  LDRB            R5, [R0]
48A830:  CBZ             R5, loc_48A842
48A832:  LDR             R4, [SP,#0x78+var_6C]
48A834:  MOVS            R0, #0
48A836:  MOVS            R1, #(stderr+2); void *
48A838:  STRB            R0, [R4]
48A83A:  MOV             R0, R10; this
48A83C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A840:  STRB            R5, [R4]
48A842:  MOV             R0, R10; this
48A844:  MOVS            R1, #byte_4; void *
48A846:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A84A:  LDR             R0, [SP,#0x78+var_2C]; this
48A84C:  CMP             R0, #0x20 ; ' '
48A84E:  BNE             loc_48A864
48A850:  BLX             j__ZN5CTask10CreateTaskEv; CTask::CreateTask(void)
48A854:  MOV             R2, R0; CTask *
48A856:  ADD             R0, SP, #0x78+var_44; this
48A858:  MOVS            R1, #3; int
48A85A:  MOVS            R3, #0; bool
48A85C:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
48A860:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
48A864:  ADDS            R6, #0x14
48A866:  CMP.W           R6, #0xA00
48A86A:  BNE             loc_48A794
48A86C:  ADD             SP, SP, #0x5C ; '\'
48A86E:  POP.W           {R8-R11}
48A872:  POP             {R4-R7,PC}
