; =========================================================
; Game Engine Function: _ZN22CPedScriptedTaskRecord4SaveEv
; Address            : 0x489744 - 0x489A5A
; =========================================================

489744:  PUSH            {R4-R7,LR}
489746:  ADD             R7, SP, #0xC
489748:  PUSH.W          {R8-R11}
48974C:  SUB             SP, SP, #0x74
48974E:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x48975E)
489750:  MOV.W           R9, #0
489754:  LDR             R1, =(UseDataFence_ptr - 0x489762)
489756:  MOV.W           R11, #0
48975A:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
48975C:  LDR             R2, =(DataFence_ptr - 0x489766)
48975E:  ADD             R1, PC; UseDataFence_ptr
489760:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
489762:  ADD             R2, PC; DataFence_ptr
489764:  STR             R0, [SP,#0x90+var_20]
489766:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x48976C)
489768:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
48976A:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
48976C:  STR             R0, [SP,#0x90+var_60]
48976E:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x489774)
489770:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
489772:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
489774:  STR             R0, [SP,#0x90+var_80]
489776:  LDR             R0, =(UseDataFence_ptr - 0x48977C)
489778:  ADD             R0, PC; UseDataFence_ptr
48977A:  LDR             R0, [R0]; UseDataFence
48977C:  STR             R0, [SP,#0x90+var_84]
48977E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489784)
489780:  ADD             R0, PC; currentSaveFenceCount_ptr
489782:  LDR             R0, [R0]; currentSaveFenceCount
489784:  STR             R0, [SP,#0x90+var_88]
489786:  LDR             R0, [R1]; UseDataFence
489788:  STR             R0, [SP,#0x90+var_8C]
48978A:  LDR             R0, [R2]; DataFence
48978C:  STR             R0, [SP,#0x90+var_90]
48978E:  LDR             R0, =(UseDataFence_ptr - 0x489796)
489790:  LDR             R1, =(UseDataFence_ptr - 0x48979A)
489792:  ADD             R0, PC; UseDataFence_ptr
489794:  LDR             R2, =(DataFence_ptr - 0x48979E)
489796:  ADD             R1, PC; UseDataFence_ptr
489798:  LDR             R0, [R0]; UseDataFence
48979A:  ADD             R2, PC; DataFence_ptr
48979C:  STR             R0, [SP,#0x90+var_24]
48979E:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x4897A4)
4897A0:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
4897A2:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
4897A4:  STR             R0, [SP,#0x90+var_28]
4897A6:  LDR             R0, =(UseDataFence_ptr - 0x4897AC)
4897A8:  ADD             R0, PC; UseDataFence_ptr
4897AA:  LDR             R0, [R0]; UseDataFence
4897AC:  STR             R0, [SP,#0x90+var_2C]
4897AE:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x4897B4)
4897B0:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
4897B2:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
4897B4:  STR             R0, [SP,#0x90+var_30]
4897B6:  LDR             R0, =(UseDataFence_ptr - 0x4897BC)
4897B8:  ADD             R0, PC; UseDataFence_ptr
4897BA:  LDR             R0, [R0]; UseDataFence
4897BC:  STR             R0, [SP,#0x90+var_34]
4897BE:  LDR             R0, =(UseDataFence_ptr - 0x4897C4)
4897C0:  ADD             R0, PC; UseDataFence_ptr
4897C2:  LDR             R0, [R0]; UseDataFence
4897C4:  STR             R0, [SP,#0x90+var_70]
4897C6:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4897CC)
4897C8:  ADD             R0, PC; currentSaveFenceCount_ptr
4897CA:  LDR             R0, [R0]; currentSaveFenceCount
4897CC:  STR             R0, [SP,#0x90+var_74]
4897CE:  LDR             R0, [R1]; UseDataFence
4897D0:  STR             R0, [SP,#0x90+var_78]
4897D2:  LDR             R0, [R2]; DataFence
4897D4:  STR             R0, [SP,#0x90+var_7C]
4897D6:  LDR             R0, =(UseDataFence_ptr - 0x4897DE)
4897D8:  LDR             R1, =(UseDataFence_ptr - 0x4897E2)
4897DA:  ADD             R0, PC; UseDataFence_ptr
4897DC:  LDR             R2, =(DataFence_ptr - 0x4897E6)
4897DE:  ADD             R1, PC; UseDataFence_ptr
4897E0:  LDR             R0, [R0]; UseDataFence
4897E2:  ADD             R2, PC; DataFence_ptr
4897E4:  STR             R0, [SP,#0x90+var_38]
4897E6:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4897EC)
4897E8:  ADD             R0, PC; currentSaveFenceCount_ptr
4897EA:  LDR             R0, [R0]; currentSaveFenceCount
4897EC:  STR             R0, [SP,#0x90+var_64]
4897EE:  LDR             R0, [R1]; UseDataFence
4897F0:  STR             R0, [SP,#0x90+var_68]
4897F2:  LDR             R0, [R2]; DataFence
4897F4:  STR             R0, [SP,#0x90+var_6C]
4897F6:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4897FE)
4897F8:  LDR             R1, =(UseDataFence_ptr - 0x489802)
4897FA:  ADD             R0, PC; currentSaveFenceCount_ptr
4897FC:  LDR             R2, =(DataFence_ptr - 0x489806)
4897FE:  ADD             R1, PC; UseDataFence_ptr
489800:  LDR             R0, [R0]; currentSaveFenceCount
489802:  ADD             R2, PC; DataFence_ptr
489804:  STR             R0, [SP,#0x90+var_3C]
489806:  LDR             R0, [R1]; UseDataFence
489808:  STR             R0, [SP,#0x90+var_40]
48980A:  LDR             R0, [R2]; DataFence
48980C:  STR             R0, [SP,#0x90+var_44]
48980E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489816)
489810:  LDR             R1, =(UseDataFence_ptr - 0x48981A)
489812:  ADD             R0, PC; currentSaveFenceCount_ptr
489814:  LDR             R2, =(DataFence_ptr - 0x48981E)
489816:  ADD             R1, PC; UseDataFence_ptr
489818:  LDR             R0, [R0]; currentSaveFenceCount
48981A:  ADD             R2, PC; DataFence_ptr
48981C:  STR             R0, [SP,#0x90+var_48]
48981E:  LDR             R0, [R1]; UseDataFence
489820:  STR             R0, [SP,#0x90+var_4C]
489822:  LDR             R0, [R2]; DataFence
489824:  STR             R0, [SP,#0x90+var_50]
489826:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48982E)
489828:  LDR             R1, =(UseDataFence_ptr - 0x489832)
48982A:  ADD             R0, PC; currentSaveFenceCount_ptr
48982C:  LDR             R2, =(DataFence_ptr - 0x489836)
48982E:  ADD             R1, PC; UseDataFence_ptr
489830:  LDR             R0, [R0]; currentSaveFenceCount
489832:  ADD             R2, PC; DataFence_ptr
489834:  STR             R0, [SP,#0x90+var_54]
489836:  LDR             R0, [R1]; UseDataFence
489838:  STR             R0, [SP,#0x90+var_58]
48983A:  LDR             R0, [R2]; DataFence
48983C:  STR             R0, [SP,#0x90+var_5C]
48983E:  B               loc_489852
489840:  LDR             R0, [SP,#0x90+var_84]
489842:  LDRB            R5, [R0]
489844:  CMP             R5, #0
489846:  BEQ.W           loc_489A2A
48984A:  LDR             R3, [SP,#0x90+var_88]
48984C:  LDR             R6, [SP,#0x90+var_8C]
48984E:  LDR             R1, [SP,#0x90+var_90]
489850:  B               loc_489A00
489852:  LDR             R0, [SP,#0x90+var_20]
489854:  ADD.W           R8, R0, R11
489858:  LDR.W           R0, [R8,#4]
48985C:  CBNZ            R0, loc_489870
48985E:  LDR             R0, [SP,#0x90+var_60]
489860:  ADD             R0, R11
489862:  LDR             R0, [R0,#8]
489864:  CBNZ            R0, loc_489870
489866:  LDR             R0, [SP,#0x90+var_80]
489868:  ADD             R0, R11
48986A:  LDR             R0, [R0,#0xC]
48986C:  CMP             R0, #0
48986E:  BEQ             loc_489840
489870:  LDR             R0, [SP,#0x90+var_24]
489872:  LDRB            R5, [R0]
489874:  CBZ             R5, loc_4898A6
489876:  LDR             R1, [SP,#0x90+var_5C]
489878:  LDR             R3, [SP,#0x90+var_54]
48987A:  LDR             R6, [SP,#0x90+var_58]
48987C:  LDRH            R1, [R1]
48987E:  LDR             R0, [R3]
489880:  STRB.W          R9, [R6]
489884:  ADDS            R2, R0, #1
489886:  ADD.W           R10, R0, R1
48988A:  MOVS            R0, #2; byte_count
48988C:  STR             R2, [R3]
48988E:  BLX             malloc
489892:  MOV             R4, R0
489894:  MOVS            R1, #(stderr+2); void *
489896:  STRH.W          R10, [R4]
48989A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48989E:  MOV             R0, R4; p
4898A0:  BLX             free
4898A4:  STRB            R5, [R6]
4898A6:  MOVS            R0, #4; byte_count
4898A8:  BLX             malloc
4898AC:  MOV             R4, R0
4898AE:  LDR             R0, [SP,#0x90+var_28]
4898B0:  MOVS            R1, #byte_4; void *
4898B2:  LDR.W           R0, [R0,R11]
4898B6:  STR             R0, [R4]
4898B8:  MOV             R0, R4; this
4898BA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4898BE:  MOV             R0, R4; p
4898C0:  BLX             free
4898C4:  LDR             R0, [SP,#0x90+var_2C]
4898C6:  LDRB            R5, [R0]
4898C8:  CBZ             R5, loc_4898FA
4898CA:  LDR             R1, [SP,#0x90+var_50]
4898CC:  LDR             R3, [SP,#0x90+var_48]
4898CE:  LDR             R6, [SP,#0x90+var_4C]
4898D0:  LDRH            R1, [R1]
4898D2:  LDR             R0, [R3]
4898D4:  STRB.W          R9, [R6]
4898D8:  ADDS            R2, R0, #1
4898DA:  ADD.W           R10, R0, R1
4898DE:  MOVS            R0, #2; byte_count
4898E0:  STR             R2, [R3]
4898E2:  BLX             malloc
4898E6:  MOV             R4, R0
4898E8:  MOVS            R1, #(stderr+2); void *
4898EA:  STRH.W          R10, [R4]
4898EE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4898F2:  MOV             R0, R4; p
4898F4:  BLX             free
4898F8:  STRB            R5, [R6]
4898FA:  LDR             R0, [SP,#0x90+var_30]
4898FC:  ADD.W           R5, R0, R11
489900:  MOVS            R0, #4; byte_count
489902:  BLX             malloc
489906:  MOV             R4, R0
489908:  LDR             R0, [R5,#0x10]
48990A:  STR             R0, [R4]
48990C:  MOV             R0, R4; this
48990E:  MOVS            R1, #byte_4; void *
489910:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489914:  MOV             R0, R4; p
489916:  BLX             free
48991A:  LDR             R0, [R5,#0xC]; this
48991C:  CBZ             R0, loc_489926
48991E:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
489922:  MOV             R10, R0
489924:  B               loc_48992A
489926:  MOV.W           R10, #0xFFFFFFFF
48992A:  LDR             R0, [SP,#0x90+var_34]
48992C:  LDRB            R6, [R0]
48992E:  CBZ             R6, loc_489964
489930:  LDR             R1, [SP,#0x90+var_44]
489932:  LDR             R3, [SP,#0x90+var_3C]
489934:  LDR             R4, [SP,#0x90+var_40]
489936:  LDRH            R1, [R1]
489938:  LDR             R0, [R3]
48993A:  STRB.W          R9, [R4]
48993E:  ADDS            R2, R0, #1
489940:  ADD.W           R9, R0, R1
489944:  MOVS            R0, #2; byte_count
489946:  STR             R2, [R3]
489948:  BLX             malloc
48994C:  MOV             R5, R0
48994E:  MOVS            R1, #(stderr+2); void *
489950:  STRH.W          R9, [R5]
489954:  MOV.W           R9, #0
489958:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48995C:  MOV             R0, R5; p
48995E:  BLX             free
489962:  STRB            R6, [R4]
489964:  MOVS            R0, #4; byte_count
489966:  BLX             malloc
48996A:  MOV             R5, R0
48996C:  MOVS            R1, #byte_4; void *
48996E:  STR.W           R10, [R5]
489972:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489976:  MOV             R0, R5; p
489978:  BLX             free
48997C:  LDR.W           R4, [R8,#4]
489980:  CBZ             R4, loc_4899F4
489982:  LDR             R0, [R4]
489984:  LDR             R1, [R0,#8]
489986:  MOV             R0, R4
489988:  BLX             R1
48998A:  MOV             R5, R0
48998C:  LDR             R0, [SP,#0x90+var_38]
48998E:  LDRB.W          R8, [R0]
489992:  CMP.W           R8, #0
489996:  BEQ             loc_4899D0
489998:  LDR             R1, [SP,#0x90+var_6C]
48999A:  LDR             R3, [SP,#0x90+var_64]
48999C:  LDR.W           R10, [SP,#0x90+var_68]
4899A0:  LDRH            R1, [R1]
4899A2:  LDR             R0, [R3]
4899A4:  STRB.W          R9, [R10]
4899A8:  ADDS            R2, R0, #1
4899AA:  ADD.W           R9, R0, R1
4899AE:  MOVS            R0, #2; byte_count
4899B0:  STR             R2, [R3]
4899B2:  BLX             malloc
4899B6:  MOV             R6, R0
4899B8:  MOVS            R1, #(stderr+2); void *
4899BA:  STRH.W          R9, [R6]
4899BE:  MOV.W           R9, #0
4899C2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4899C6:  MOV             R0, R6; p
4899C8:  BLX             free
4899CC:  STRB.W          R8, [R10]
4899D0:  MOVS            R0, #4; byte_count
4899D2:  BLX             malloc
4899D6:  MOV             R6, R0
4899D8:  MOVS            R1, #byte_4; void *
4899DA:  STR             R5, [R6]
4899DC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4899E0:  MOV             R0, R6; p
4899E2:  BLX             free
4899E6:  CMP             R5, #0x20 ; ' '
4899E8:  BNE             loc_489A46
4899EA:  LDR             R0, [R4,#0x10]
4899EC:  LDR             R1, [R0]
4899EE:  LDR             R1, [R1,#0x20]
4899F0:  BLX             R1
4899F2:  B               loc_489A46
4899F4:  LDR             R0, [SP,#0x90+var_70]
4899F6:  LDRB            R5, [R0]
4899F8:  CBZ             R5, loc_489A2A
4899FA:  LDR             R3, [SP,#0x90+var_74]
4899FC:  LDR             R6, [SP,#0x90+var_78]
4899FE:  LDR             R1, [SP,#0x90+var_7C]
489A00:  LDR             R0, [R3]
489A02:  STRB.W          R9, [R6]
489A06:  LDRH            R1, [R1]
489A08:  ADDS            R2, R0, #1
489A0A:  STR             R2, [R3]
489A0C:  ADD.W           R8, R0, R1
489A10:  MOVS            R0, #2; byte_count
489A12:  BLX             malloc
489A16:  MOV             R4, R0
489A18:  MOVS            R1, #(stderr+2); void *
489A1A:  STRH.W          R8, [R4]
489A1E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489A22:  MOV             R0, R4; p
489A24:  BLX             free
489A28:  STRB            R5, [R6]
489A2A:  MOVS            R0, #4; byte_count
489A2C:  BLX             malloc
489A30:  MOV             R4, R0
489A32:  MOV.W           R0, #0xFFFFFFFF
489A36:  STR             R0, [R4]
489A38:  MOV             R0, R4; this
489A3A:  MOVS            R1, #byte_4; void *
489A3C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489A40:  MOV             R0, R4; p
489A42:  BLX             free
489A46:  ADD.W           R11, R11, #0x14
489A4A:  CMP.W           R11, #0xA00
489A4E:  BNE.W           loc_489852
489A52:  ADD             SP, SP, #0x74 ; 't'
489A54:  POP.W           {R8-R11}
489A58:  POP             {R4-R7,PC}
