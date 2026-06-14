; =========================================================
; Game Engine Function: _Z10SaveBriefsv
; Address            : 0x48F694 - 0x48FB54
; =========================================================

48F694:  PUSH            {R4-R7,LR}
48F696:  ADD             R7, SP, #0xC
48F698:  PUSH.W          {R8-R11}
48F69C:  SUB             SP, SP, #0xB4
48F69E:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F6AE)
48F6A2:  MOV.W           R11, #0
48F6A6:  LDR.W           R1, =(UseDataFence_ptr - 0x48F6B4)
48F6AA:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F6AC:  LDR.W           R2, =(DataFence_ptr - 0x48F6B8)
48F6B0:  ADD             R1, PC; UseDataFence_ptr
48F6B2:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F6B4:  ADD             R2, PC; DataFence_ptr
48F6B6:  STR             R0, [SP,#0xD0+var_20]
48F6B8:  LDR.W           R0, =(UseDataFence_ptr - 0x48F6C0)
48F6BC:  ADD             R0, PC; UseDataFence_ptr
48F6BE:  LDR             R0, [R0]; UseDataFence
48F6C0:  STR             R0, [SP,#0xD0+var_6C]
48F6C2:  LDR.W           R0, =(currentSaveFenceCount_ptr - 0x48F6CA)
48F6C6:  ADD             R0, PC; currentSaveFenceCount_ptr
48F6C8:  LDR             R0, [R0]; currentSaveFenceCount
48F6CA:  STR             R0, [SP,#0xD0+var_C4]
48F6CC:  LDR             R0, [R1]; UseDataFence
48F6CE:  STR             R0, [SP,#0xD0+var_C8]
48F6D0:  LDR             R0, [R2]; DataFence
48F6D2:  STR             R0, [SP,#0xD0+var_CC]
48F6D4:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F6E0)
48F6D8:  LDR.W           R1, =(UseDataFence_ptr - 0x48F6E6)
48F6DC:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F6DE:  LDR.W           R2, =(DataFence_ptr - 0x48F6EA)
48F6E2:  ADD             R1, PC; UseDataFence_ptr
48F6E4:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F6E6:  ADD             R2, PC; DataFence_ptr
48F6E8:  STR             R0, [SP,#0xD0+var_24]
48F6EA:  LDR.W           R0, =(UseDataFence_ptr - 0x48F6F2)
48F6EE:  ADD             R0, PC; UseDataFence_ptr
48F6F0:  LDR             R0, [R0]; UseDataFence
48F6F2:  STR             R0, [SP,#0xD0+var_28]
48F6F4:  LDR.W           R0, =(UseDataFence_ptr - 0x48F6FC)
48F6F8:  ADD             R0, PC; UseDataFence_ptr
48F6FA:  LDR             R0, [R0]; UseDataFence
48F6FC:  STR             R0, [SP,#0xD0+var_2C]
48F6FE:  LDR.W           R0, =(UseDataFence_ptr - 0x48F706)
48F702:  ADD             R0, PC; UseDataFence_ptr
48F704:  LDR             R0, [R0]; UseDataFence
48F706:  STR             R0, [SP,#0xD0+var_30]
48F708:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F710)
48F70C:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F70E:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F710:  STR             R0, [SP,#0xD0+var_34]
48F712:  LDR.W           R0, =(UseDataFence_ptr - 0x48F71A)
48F716:  ADD             R0, PC; UseDataFence_ptr
48F718:  LDR             R0, [R0]; UseDataFence
48F71A:  STR             R0, [SP,#0xD0+var_38]
48F71C:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F724)
48F720:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F722:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F724:  STR             R0, [SP,#0xD0+var_3C]
48F726:  LDR.W           R0, =(UseDataFence_ptr - 0x48F72E)
48F72A:  ADD             R0, PC; UseDataFence_ptr
48F72C:  LDR             R0, [R0]; UseDataFence
48F72E:  STR             R0, [SP,#0xD0+var_40]
48F730:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F738)
48F734:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F736:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F738:  STR             R0, [SP,#0xD0+var_44]
48F73A:  LDR.W           R0, =(UseDataFence_ptr - 0x48F742)
48F73E:  ADD             R0, PC; UseDataFence_ptr
48F740:  LDR             R0, [R0]; UseDataFence
48F742:  STR             R0, [SP,#0xD0+var_48]
48F744:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F74C)
48F748:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F74A:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F74C:  STR             R0, [SP,#0xD0+var_4C]
48F74E:  LDR.W           R0, =(UseDataFence_ptr - 0x48F756)
48F752:  ADD             R0, PC; UseDataFence_ptr
48F754:  LDR             R0, [R0]; UseDataFence
48F756:  STR             R0, [SP,#0xD0+var_50]
48F758:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F760)
48F75C:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F75E:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F760:  STR             R0, [SP,#0xD0+var_54]
48F762:  LDR.W           R0, =(UseDataFence_ptr - 0x48F76A)
48F766:  ADD             R0, PC; UseDataFence_ptr
48F768:  LDR             R0, [R0]; UseDataFence
48F76A:  STR             R0, [SP,#0xD0+var_58]
48F76C:  LDR.W           R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48F774)
48F770:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48F772:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48F774:  STR             R0, [SP,#0xD0+var_5C]
48F776:  LDR.W           R0, =(currentSaveFenceCount_ptr - 0x48F77E)
48F77A:  ADD             R0, PC; currentSaveFenceCount_ptr
48F77C:  LDR             R0, [R0]; currentSaveFenceCount
48F77E:  STR             R0, [SP,#0xD0+var_70]
48F780:  LDR             R0, [R1]; UseDataFence
48F782:  STR             R0, [SP,#0xD0+var_74]
48F784:  LDR             R0, [R2]; DataFence
48F786:  STR             R0, [SP,#0xD0+var_78]
48F788:  LDR.W           R0, =(currentSaveFenceCount_ptr - 0x48F794)
48F78C:  LDR.W           R1, =(UseDataFence_ptr - 0x48F79A)
48F790:  ADD             R0, PC; currentSaveFenceCount_ptr
48F792:  LDR.W           R2, =(DataFence_ptr - 0x48F79E)
48F796:  ADD             R1, PC; UseDataFence_ptr
48F798:  LDR             R0, [R0]; currentSaveFenceCount
48F79A:  ADD             R2, PC; DataFence_ptr
48F79C:  STR             R0, [SP,#0xD0+var_7C]
48F79E:  LDR             R0, [R1]; UseDataFence
48F7A0:  STR             R0, [SP,#0xD0+var_80]
48F7A2:  LDR             R0, [R2]; DataFence
48F7A4:  STR             R0, [SP,#0xD0+var_84]
48F7A6:  LDR.W           R0, =(currentSaveFenceCount_ptr - 0x48F7B2)
48F7AA:  LDR.W           R1, =(UseDataFence_ptr - 0x48F7B8)
48F7AE:  ADD             R0, PC; currentSaveFenceCount_ptr
48F7B0:  LDR.W           R2, =(DataFence_ptr - 0x48F7BC)
48F7B4:  ADD             R1, PC; UseDataFence_ptr
48F7B6:  LDR             R0, [R0]; currentSaveFenceCount
48F7B8:  ADD             R2, PC; DataFence_ptr
48F7BA:  STR             R0, [SP,#0xD0+var_88]
48F7BC:  LDR             R0, [R1]; UseDataFence
48F7BE:  STR             R0, [SP,#0xD0+var_8C]
48F7C0:  LDR             R0, [R2]; DataFence
48F7C2:  STR             R0, [SP,#0xD0+var_90]
48F7C4:  LDR.W           R0, =(currentSaveFenceCount_ptr - 0x48F7D0)
48F7C8:  LDR.W           R1, =(UseDataFence_ptr - 0x48F7D6)
48F7CC:  ADD             R0, PC; currentSaveFenceCount_ptr
48F7CE:  LDR.W           R2, =(DataFence_ptr - 0x48F7DA)
48F7D2:  ADD             R1, PC; UseDataFence_ptr
48F7D4:  LDR             R0, [R0]; currentSaveFenceCount
48F7D6:  ADD             R2, PC; DataFence_ptr
48F7D8:  STR             R0, [SP,#0xD0+var_94]
48F7DA:  LDR             R0, [R1]; UseDataFence
48F7DC:  STR             R0, [SP,#0xD0+var_98]
48F7DE:  LDR             R0, [R2]; DataFence
48F7E0:  STR             R0, [SP,#0xD0+var_9C]
48F7E2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48F7EA)
48F7E4:  LDR             R1, =(UseDataFence_ptr - 0x48F7EE)
48F7E6:  ADD             R0, PC; currentSaveFenceCount_ptr
48F7E8:  LDR             R2, =(DataFence_ptr - 0x48F7F2)
48F7EA:  ADD             R1, PC; UseDataFence_ptr
48F7EC:  LDR             R0, [R0]; currentSaveFenceCount
48F7EE:  ADD             R2, PC; DataFence_ptr
48F7F0:  STR             R0, [SP,#0xD0+var_A0]
48F7F2:  LDR             R0, [R1]; UseDataFence
48F7F4:  STR             R0, [SP,#0xD0+var_A4]
48F7F6:  LDR             R0, [R2]; DataFence
48F7F8:  STR             R0, [SP,#0xD0+var_A8]
48F7FA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48F802)
48F7FC:  LDR             R1, =(UseDataFence_ptr - 0x48F806)
48F7FE:  ADD             R0, PC; currentSaveFenceCount_ptr
48F800:  LDR             R2, =(DataFence_ptr - 0x48F80A)
48F802:  ADD             R1, PC; UseDataFence_ptr
48F804:  LDR             R0, [R0]; currentSaveFenceCount
48F806:  ADD             R2, PC; DataFence_ptr
48F808:  STR             R0, [SP,#0xD0+var_AC]
48F80A:  LDR             R0, [R1]; UseDataFence
48F80C:  STR             R0, [SP,#0xD0+var_B0]
48F80E:  LDR             R0, [R2]; DataFence
48F810:  STR             R0, [SP,#0xD0+var_B4]
48F812:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48F81A)
48F814:  LDR             R1, =(UseDataFence_ptr - 0x48F81E)
48F816:  ADD             R0, PC; currentSaveFenceCount_ptr
48F818:  LDR             R2, =(DataFence_ptr - 0x48F822)
48F81A:  ADD             R1, PC; UseDataFence_ptr
48F81C:  LDR             R0, [R0]; currentSaveFenceCount
48F81E:  ADD             R2, PC; DataFence_ptr
48F820:  STR             R0, [SP,#0xD0+var_B8]
48F822:  LDR             R0, [R1]; UseDataFence
48F824:  STR             R0, [SP,#0xD0+var_BC]
48F826:  LDR             R0, [R2]; DataFence
48F828:  STR             R0, [SP,#0xD0+var_C0]
48F82A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48F832)
48F82C:  LDR             R1, =(UseDataFence_ptr - 0x48F836)
48F82E:  ADD             R0, PC; currentSaveFenceCount_ptr
48F830:  LDR             R2, =(DataFence_ptr - 0x48F83A)
48F832:  ADD             R1, PC; UseDataFence_ptr
48F834:  LDR             R0, [R0]; currentSaveFenceCount
48F836:  ADD             R2, PC; DataFence_ptr
48F838:  STR             R0, [SP,#0xD0+var_60]
48F83A:  LDR             R0, [R1]; UseDataFence
48F83C:  STR             R0, [SP,#0xD0+var_64]
48F83E:  LDR             R0, [R2]; DataFence
48F840:  STR             R0, [SP,#0xD0+var_68]
48F842:  LDR             R0, [SP,#0xD0+var_20]
48F844:  ADD             R0, R11
48F846:  LDR             R0, [R0,#8]
48F848:  CMP             R0, #0
48F84A:  BEQ.W           loc_48FAF0
48F84E:  LDR             R0, [SP,#0xD0+var_24]
48F850:  ADD.W           R9, R0, R11
48F854:  MOV             R0, R9; char *
48F856:  BLX             strlen
48F85A:  MOV             R5, R0
48F85C:  LDR             R0, [SP,#0xD0+var_28]
48F85E:  LDRB.W          R10, [R0]
48F862:  CMP.W           R10, #0
48F866:  BEQ             loc_48F89A
48F868:  LDR.W           R8, [SP,#0xD0+var_64]
48F86C:  MOVS            R1, #0
48F86E:  LDR             R3, [SP,#0xD0+var_60]
48F870:  STRB.W          R1, [R8]
48F874:  LDR             R1, [SP,#0xD0+var_68]
48F876:  LDR             R0, [R3]
48F878:  LDRH            R1, [R1]
48F87A:  ADDS            R2, R0, #1
48F87C:  STR             R2, [R3]
48F87E:  ADDS            R4, R0, R1
48F880:  MOVS            R0, #2; byte_count
48F882:  BLX             malloc
48F886:  MOV             R6, R0
48F888:  MOVS            R1, #(stderr+2); void *
48F88A:  STRH            R4, [R6]
48F88C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F890:  MOV             R0, R6; p
48F892:  BLX             free
48F896:  STRB.W          R10, [R8]
48F89A:  MOVS            R0, #4; byte_count
48F89C:  BLX             malloc
48F8A0:  MOV             R6, R0
48F8A2:  MOVS            R1, #byte_4; void *
48F8A4:  STR             R5, [R6]
48F8A6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F8AA:  MOV             R0, R6; p
48F8AC:  BLX             free
48F8B0:  CMP             R5, #0
48F8B2:  BEQ.W           loc_48FB40
48F8B6:  LDR             R0, [SP,#0xD0+var_2C]
48F8B8:  LDRB            R4, [R0]
48F8BA:  CBZ             R4, loc_48F8F2
48F8BC:  LDR.W           R8, [SP,#0xD0+var_BC]
48F8C0:  MOVS            R1, #0
48F8C2:  LDR             R3, [SP,#0xD0+var_B8]
48F8C4:  STRB.W          R1, [R8]
48F8C8:  LDR             R1, [SP,#0xD0+var_C0]
48F8CA:  LDR             R0, [R3]
48F8CC:  LDRH            R1, [R1]
48F8CE:  ADDS            R2, R0, #1
48F8D0:  STR             R2, [R3]
48F8D2:  ADD.W           R10, R0, R1
48F8D6:  MOVS            R0, #2; byte_count
48F8D8:  BLX             malloc
48F8DC:  MOV             R6, R0
48F8DE:  MOVS            R1, #(stderr+2); void *
48F8E0:  STRH.W          R10, [R6]
48F8E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F8E8:  MOV             R0, R6; p
48F8EA:  BLX             free
48F8EE:  STRB.W          R4, [R8]
48F8F2:  MOV             R0, R9; this
48F8F4:  MOV             R1, R5; void *
48F8F6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F8FA:  LDR             R0, [SP,#0xD0+var_30]
48F8FC:  LDRB            R5, [R0]
48F8FE:  CBZ             R5, loc_48F930
48F900:  LDR             R6, [SP,#0xD0+var_B0]
48F902:  MOVS            R1, #0
48F904:  LDR             R3, [SP,#0xD0+var_AC]
48F906:  STRB            R1, [R6]
48F908:  LDR             R1, [SP,#0xD0+var_B4]
48F90A:  LDR             R0, [R3]
48F90C:  LDRH            R1, [R1]
48F90E:  ADDS            R2, R0, #1
48F910:  STR             R2, [R3]
48F912:  ADD.W           R9, R0, R1
48F916:  MOVS            R0, #2; byte_count
48F918:  BLX             malloc
48F91C:  MOV             R4, R0
48F91E:  MOVS            R1, #(stderr+2); void *
48F920:  STRH.W          R9, [R4]
48F924:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F928:  MOV             R0, R4; p
48F92A:  BLX             free
48F92E:  STRB            R5, [R6]
48F930:  LDR             R0, [SP,#0xD0+var_34]
48F932:  ADD.W           R5, R0, R11
48F936:  MOVS            R0, #4; byte_count
48F938:  BLX             malloc
48F93C:  MOV             R4, R0
48F93E:  LDR             R0, [R5,#0xC]
48F940:  STR             R0, [R4]
48F942:  MOV             R0, R4; this
48F944:  MOVS            R1, #byte_4; void *
48F946:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F94A:  MOV             R0, R4; p
48F94C:  BLX             free
48F950:  LDR             R0, [SP,#0xD0+var_38]
48F952:  LDRB            R5, [R0]
48F954:  CBZ             R5, loc_48F986
48F956:  LDR             R6, [SP,#0xD0+var_A4]
48F958:  MOVS            R1, #0
48F95A:  LDR             R3, [SP,#0xD0+var_A0]
48F95C:  STRB            R1, [R6]
48F95E:  LDR             R1, [SP,#0xD0+var_A8]
48F960:  LDR             R0, [R3]
48F962:  LDRH            R1, [R1]
48F964:  ADDS            R2, R0, #1
48F966:  STR             R2, [R3]
48F968:  ADD.W           R9, R0, R1
48F96C:  MOVS            R0, #2; byte_count
48F96E:  BLX             malloc
48F972:  MOV             R4, R0
48F974:  MOVS            R1, #(stderr+2); void *
48F976:  STRH.W          R9, [R4]
48F97A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F97E:  MOV             R0, R4; p
48F980:  BLX             free
48F984:  STRB            R5, [R6]
48F986:  LDR             R0, [SP,#0xD0+var_3C]
48F988:  ADD.W           R5, R0, R11
48F98C:  MOVS            R0, #4; byte_count
48F98E:  BLX             malloc
48F992:  MOV             R4, R0
48F994:  LDR             R0, [R5,#0x10]
48F996:  STR             R0, [R4]
48F998:  MOV             R0, R4; this
48F99A:  MOVS            R1, #byte_4; void *
48F99C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F9A0:  MOV             R0, R4; p
48F9A2:  BLX             free
48F9A6:  LDR             R0, [SP,#0xD0+var_40]
48F9A8:  LDRB            R5, [R0]
48F9AA:  CBZ             R5, loc_48F9DC
48F9AC:  LDR             R6, [SP,#0xD0+var_98]
48F9AE:  MOVS            R1, #0
48F9B0:  LDR             R3, [SP,#0xD0+var_94]
48F9B2:  STRB            R1, [R6]
48F9B4:  LDR             R1, [SP,#0xD0+var_9C]
48F9B6:  LDR             R0, [R3]
48F9B8:  LDRH            R1, [R1]
48F9BA:  ADDS            R2, R0, #1
48F9BC:  STR             R2, [R3]
48F9BE:  ADD.W           R9, R0, R1
48F9C2:  MOVS            R0, #2; byte_count
48F9C4:  BLX             malloc
48F9C8:  MOV             R4, R0
48F9CA:  MOVS            R1, #(stderr+2); void *
48F9CC:  STRH.W          R9, [R4]
48F9D0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F9D4:  MOV             R0, R4; p
48F9D6:  BLX             free
48F9DA:  STRB            R5, [R6]
48F9DC:  LDR             R0, [SP,#0xD0+var_44]
48F9DE:  ADD.W           R5, R0, R11
48F9E2:  MOVS            R0, #4; byte_count
48F9E4:  BLX             malloc
48F9E8:  MOV             R4, R0
48F9EA:  LDR             R0, [R5,#0x14]
48F9EC:  STR             R0, [R4]
48F9EE:  MOV             R0, R4; this
48F9F0:  MOVS            R1, #byte_4; void *
48F9F2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48F9F6:  MOV             R0, R4; p
48F9F8:  BLX             free
48F9FC:  LDR             R0, [SP,#0xD0+var_48]
48F9FE:  LDRB            R5, [R0]
48FA00:  CBZ             R5, loc_48FA32
48FA02:  LDR             R6, [SP,#0xD0+var_8C]
48FA04:  MOVS            R1, #0
48FA06:  LDR             R3, [SP,#0xD0+var_88]
48FA08:  STRB            R1, [R6]
48FA0A:  LDR             R1, [SP,#0xD0+var_90]
48FA0C:  LDR             R0, [R3]
48FA0E:  LDRH            R1, [R1]
48FA10:  ADDS            R2, R0, #1
48FA12:  STR             R2, [R3]
48FA14:  ADD.W           R9, R0, R1
48FA18:  MOVS            R0, #2; byte_count
48FA1A:  BLX             malloc
48FA1E:  MOV             R4, R0
48FA20:  MOVS            R1, #(stderr+2); void *
48FA22:  STRH.W          R9, [R4]
48FA26:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FA2A:  MOV             R0, R4; p
48FA2C:  BLX             free
48FA30:  STRB            R5, [R6]
48FA32:  LDR             R0, [SP,#0xD0+var_4C]
48FA34:  ADD.W           R5, R0, R11
48FA38:  MOVS            R0, #4; byte_count
48FA3A:  BLX             malloc
48FA3E:  MOV             R4, R0
48FA40:  LDR             R0, [R5,#0x18]
48FA42:  STR             R0, [R4]
48FA44:  MOV             R0, R4; this
48FA46:  MOVS            R1, #byte_4; void *
48FA48:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FA4C:  MOV             R0, R4; p
48FA4E:  BLX             free
48FA52:  LDR             R0, [SP,#0xD0+var_50]
48FA54:  LDRB            R5, [R0]
48FA56:  CBZ             R5, loc_48FA88
48FA58:  LDR             R6, [SP,#0xD0+var_80]
48FA5A:  MOVS            R1, #0
48FA5C:  LDR             R3, [SP,#0xD0+var_7C]
48FA5E:  STRB            R1, [R6]
48FA60:  LDR             R1, [SP,#0xD0+var_84]
48FA62:  LDR             R0, [R3]
48FA64:  LDRH            R1, [R1]
48FA66:  ADDS            R2, R0, #1
48FA68:  STR             R2, [R3]
48FA6A:  ADD.W           R9, R0, R1
48FA6E:  MOVS            R0, #2; byte_count
48FA70:  BLX             malloc
48FA74:  MOV             R4, R0
48FA76:  MOVS            R1, #(stderr+2); void *
48FA78:  STRH.W          R9, [R4]
48FA7C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FA80:  MOV             R0, R4; p
48FA82:  BLX             free
48FA86:  STRB            R5, [R6]
48FA88:  LDR             R0, [SP,#0xD0+var_54]
48FA8A:  ADD.W           R5, R0, R11
48FA8E:  MOVS            R0, #4; byte_count
48FA90:  BLX             malloc
48FA94:  MOV             R4, R0
48FA96:  LDR             R0, [R5,#0x1C]
48FA98:  STR             R0, [R4]
48FA9A:  MOV             R0, R4; this
48FA9C:  MOVS            R1, #byte_4; void *
48FA9E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FAA2:  MOV             R0, R4; p
48FAA4:  BLX             free
48FAA8:  LDR             R0, [SP,#0xD0+var_58]
48FAAA:  LDRB            R5, [R0]
48FAAC:  CBZ             R5, loc_48FADE
48FAAE:  LDR             R6, [SP,#0xD0+var_74]
48FAB0:  MOVS            R1, #0
48FAB2:  LDR             R3, [SP,#0xD0+var_70]
48FAB4:  STRB            R1, [R6]
48FAB6:  LDR             R1, [SP,#0xD0+var_78]
48FAB8:  LDR             R0, [R3]
48FABA:  LDRH            R1, [R1]
48FABC:  ADDS            R2, R0, #1
48FABE:  STR             R2, [R3]
48FAC0:  ADD.W           R9, R0, R1
48FAC4:  MOVS            R0, #2; byte_count
48FAC6:  BLX             malloc
48FACA:  MOV             R4, R0
48FACC:  MOVS            R1, #(stderr+2); void *
48FACE:  STRH.W          R9, [R4]
48FAD2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FAD6:  MOV             R0, R4; p
48FAD8:  BLX             free
48FADC:  STRB            R5, [R6]
48FADE:  LDR             R0, [SP,#0xD0+var_5C]
48FAE0:  ADD.W           R5, R0, R11
48FAE4:  MOVS            R0, #4; byte_count
48FAE6:  BLX             malloc
48FAEA:  MOV             R4, R0
48FAEC:  LDR             R0, [R5,#0x20]
48FAEE:  B               loc_48FB30
48FAF0:  LDR             R0, [SP,#0xD0+var_6C]
48FAF2:  LDRB            R5, [R0]
48FAF4:  CBZ             R5, loc_48FB26
48FAF6:  LDR             R6, [SP,#0xD0+var_C8]
48FAF8:  MOVS            R1, #0
48FAFA:  LDR             R3, [SP,#0xD0+var_C4]
48FAFC:  STRB            R1, [R6]
48FAFE:  LDR             R1, [SP,#0xD0+var_CC]
48FB00:  LDR             R0, [R3]
48FB02:  LDRH            R1, [R1]
48FB04:  ADDS            R2, R0, #1
48FB06:  STR             R2, [R3]
48FB08:  ADD.W           R9, R0, R1
48FB0C:  MOVS            R0, #2; byte_count
48FB0E:  BLX             malloc
48FB12:  MOV             R4, R0
48FB14:  MOVS            R1, #(stderr+2); void *
48FB16:  STRH.W          R9, [R4]
48FB1A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FB1E:  MOV             R0, R4; p
48FB20:  BLX             free
48FB24:  STRB            R5, [R6]
48FB26:  MOVS            R0, #4; byte_count
48FB28:  BLX             malloc
48FB2C:  MOV             R4, R0
48FB2E:  MOVS            R0, #0
48FB30:  STR             R0, [R4]
48FB32:  MOV             R0, R4; this
48FB34:  MOVS            R1, #byte_4; void *
48FB36:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FB3A:  MOV             R0, R4; p
48FB3C:  BLX             free
48FB40:  ADD.W           R11, R11, #0x28 ; '('
48FB44:  CMP.W           R11, #0x320
48FB48:  BNE.W           loc_48F842
48FB4C:  ADD             SP, SP, #0xB4
48FB4E:  POP.W           {R8-R11}
48FB52:  POP             {R4-R7,PC}
