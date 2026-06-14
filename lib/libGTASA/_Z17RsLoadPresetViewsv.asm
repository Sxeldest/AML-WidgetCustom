; =========================================================
; Game Engine Function: _Z17RsLoadPresetViewsv
; Address            : 0x4D4798 - 0x4D4A02
; =========================================================

4D4798:  PUSH            {R4-R7,LR}
4D479A:  ADD             R7, SP, #0xC
4D479C:  PUSH.W          {R8-R11}
4D47A0:  SUB.W           SP, SP, #0x4A0
4D47A4:  SUB             SP, SP, #4
4D47A6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4D47AE)
4D47A8:  LDR             R1, =(dword_9FC944 - 0x4D47B0)
4D47AA:  ADD             R0, PC; __stack_chk_guard_ptr
4D47AC:  ADD             R1, PC; dword_9FC944 ; void *
4D47AE:  LDR             R0, [R0]; __stack_chk_guard
4D47B0:  LDR             R0, [R0]
4D47B2:  STR.W           R0, [R7,#var_24]
4D47B6:  LDR             R4, [R1]
4D47B8:  CBZ             R4, loc_4D47D2
4D47BA:  LDRD.W          R0, R5, [R4,#0x1C]; this
4D47BE:  CMP             R0, #0
4D47C0:  IT NE
4D47C2:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
4D47C6:  MOV             R0, R4; this
4D47C8:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
4D47CC:  CMP             R5, #0
4D47CE:  MOV             R4, R5
4D47D0:  BNE             loc_4D47BA
4D47D2:  LDR             R0, =(dword_9FC940 - 0x4D47DE)
4D47D4:  MOVS            R3, #0
4D47D6:  LDR             R1, =(dword_9FC944 - 0x4D47E0)
4D47D8:  LDR             R2, =(dword_6B0350 - 0x4D47E2)
4D47DA:  ADD             R0, PC; dword_9FC940
4D47DC:  ADD             R1, PC; dword_9FC944
4D47DE:  ADD             R2, PC; dword_6B0350
4D47E0:  STR             R3, [R0]
4D47E2:  MOV.W           R0, #0xFFFFFFFF
4D47E6:  STR             R3, [R1]
4D47E8:  STR             R0, [R2]
4D47EA:  BLX             j__Z20RwOsGetFileInterfacev; RwOsGetFileInterface(void)
4D47EE:  MOV             R10, R0
4D47F0:  CMP.W           R10, #0
4D47F4:  BEQ.W           loc_4D4982
4D47F8:  LDR             R0, =(aViewsTxt - 0x4D47FE); "./views.txt"
4D47FA:  ADD             R0, PC; "./views.txt"
4D47FC:  BLX             j__Z16psPathnameCreatePKc; psPathnameCreate(char const*)
4D4800:  LDR.W           R2, [R10,#4]
4D4804:  ADR             R1, dword_4D4A1C
4D4806:  MOV             R6, R0
4D4808:  BLX             R2
4D480A:  MOV             R9, R0
4D480C:  MOV             R0, R6; char *
4D480E:  BLX             j__Z17psPathnameDestroyPc; psPathnameDestroy(char *)
4D4812:  CMP.W           R9, #0
4D4816:  BEQ.W           loc_4D4982
4D481A:  ADD.W           R11, SP, #0x4C0+var_424
4D481E:  LDR.W           R3, [R10,#0x14]
4D4822:  MOVW            R1, #0x3FF
4D4826:  MOV             R2, R9
4D4828:  MOV             R0, R11
4D482A:  BLX             R3
4D482C:  CMP             R0, #0
4D482E:  BEQ.W           loc_4D497A
4D4832:  ADD.W           R0, R11, #1
4D4836:  STR             R0, [SP,#0x4C0+var_49C]
4D4838:  ADD             R0, SP, #0x4C0+var_480
4D483A:  ADD.W           R8, SP, #0x4C0+var_464
4D483E:  ADD.W           R1, R0, #8
4D4842:  ORR.W           R0, R0, #4
4D4846:  STR             R0, [SP,#0x4C0+var_490]
4D4848:  LDR             R0, =(RwEngineInstance_ptr - 0x4D4850)
4D484A:  STR             R1, [SP,#0x4C0+var_48C]
4D484C:  ADD             R0, PC; RwEngineInstance_ptr
4D484E:  LDR             R0, [R0]; RwEngineInstance
4D4850:  STR             R0, [SP,#0x4C0+var_494]
4D4852:  LDR             R0, =(RwEngineInstance_ptr - 0x4D4858)
4D4854:  ADD             R0, PC; RwEngineInstance_ptr
4D4856:  LDR             R0, [R0]; RwEngineInstance
4D4858:  STR             R0, [SP,#0x4C0+var_498]
4D485A:  LDR             R0, =(RwEngineInstance_ptr - 0x4D4860)
4D485C:  ADD             R0, PC; RwEngineInstance_ptr
4D485E:  LDR             R0, [R0]; RwEngineInstance
4D4860:  STR             R0, [SP,#0x4C0+var_4A8]
4D4862:  LDR             R0, =(RwEngineInstance_ptr - 0x4D4868)
4D4864:  ADD             R0, PC; RwEngineInstance_ptr
4D4866:  LDR             R0, [R0]; RwEngineInstance
4D4868:  STR             R0, [SP,#0x4C0+var_4A0]
4D486A:  LDR             R0, =(RwEngineInstance_ptr - 0x4D4870)
4D486C:  ADD             R0, PC; RwEngineInstance_ptr
4D486E:  LDR             R0, [R0]; RwEngineInstance
4D4870:  STR             R0, [SP,#0x4C0+var_4A4]
4D4872:  LDR             R0, [SP,#0x4C0+var_494]
4D4874:  ADD             R6, SP, #0x4C0+var_424
4D4876:  LDR             R0, [R0]
4D4878:  LDR.W           R1, [R0,#0x118]
4D487C:  MOV             R0, R6
4D487E:  BLX             R1
4D4880:  LDRB.W          R4, [SP,#0x4C0+var_424]
4D4884:  CBZ             R4, loc_4D48A0
4D4886:  LDR             R5, [SP,#0x4C0+var_49C]
4D4888:  ADD             R6, SP, #0x4C0+var_424
4D488A:  UXTB            R0, R4; int
4D488C:  BLX             isprint
4D4890:  CMP             R0, #0
4D4892:  IT NE
4D4894:  STRBNE.W        R4, [R6],#1
4D4898:  LDRB.W          R4, [R5],#1
4D489C:  CMP             R4, #0
4D489E:  BNE             loc_4D488A
4D48A0:  MOVS            R0, #0
4D48A2:  ADR             R1, aFFFFFFF; "%f%f%f%f%f%f%f %[^"
4D48A4:  STRB            R0, [R6]
4D48A6:  ADD             R2, SP, #0x4C0+var_480
4D48A8:  LDR             R0, [SP,#0x4C0+var_498]
4D48AA:  LDR             R0, [R0]
4D48AC:  LDR.W           R6, [R0,#0x128]
4D48B0:  LDR             R0, [SP,#0x4C0+var_48C]
4D48B2:  STR             R0, [SP,#0x4C0+var_4C0]
4D48B4:  ADD             R0, SP, #0x4C0+var_46C
4D48B6:  STR             R0, [SP,#0x4C0+var_4BC]
4D48B8:  ADD             R0, SP, #0x4C0+var_470
4D48BA:  STR             R0, [SP,#0x4C0+var_4B8]
4D48BC:  ADD             R0, SP, #0x4C0+var_488
4D48BE:  STR             R0, [SP,#0x4C0+var_4B4]
4D48C0:  ADD             R0, SP, #0x4C0+var_484
4D48C2:  STRD.W          R0, R8, [SP,#0x4C0+var_4B0]
4D48C6:  MOV             R0, R11
4D48C8:  LDR             R3, [SP,#0x4C0+var_490]
4D48CA:  BLX             R6
4D48CC:  CMP             R0, #6
4D48CE:  BLE             loc_4D4966
4D48D0:  MOV             R4, R11
4D48D2:  CMP             R0, #7
4D48D4:  BNE             loc_4D48EE
4D48D6:  LDR             R0, [SP,#0x4C0+var_4A8]
4D48D8:  LDR             R1, =(dword_9FC940 - 0x4D48E2)
4D48DA:  LDR             R2, =(aView - 0x4D48E4); "View"
4D48DC:  LDR             R0, [R0]
4D48DE:  ADD             R1, PC; dword_9FC940
4D48E0:  ADD             R2, PC; "View"
4D48E2:  LDR             R3, [R1]
4D48E4:  ADR             R1, aSD_0; "%s%d"
4D48E6:  LDR.W           R6, [R0,#0xF0]
4D48EA:  MOV             R0, R8
4D48EC:  BLX             R6
4D48EE:  MOVS            R0, #0x24 ; '$'; byte_count
4D48F0:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
4D48F4:  MOV             R11, R0
4D48F6:  CMP.W           R11, #0
4D48FA:  BEQ             loc_4D49AE
4D48FC:  VLDR            D16, [SP,#0x4C0+var_480]
4D4900:  LDR             R0, [SP,#0x4C0+var_478]
4D4902:  STR.W           R0, [R11,#8]
4D4906:  VSTR            D16, [R11]
4D490A:  LDR             R0, [SP,#0x4C0+var_46C]
4D490C:  STR.W           R0, [R11,#0xC]
4D4910:  LDR             R0, [SP,#0x4C0+var_470]
4D4912:  STR.W           R0, [R11,#0x10]
4D4916:  LDR             R0, [SP,#0x4C0+var_488]
4D4918:  STR.W           R0, [R11,#0x14]
4D491C:  LDR             R0, [SP,#0x4C0+var_484]
4D491E:  STR.W           R0, [R11,#0x18]
4D4922:  LDR             R0, [SP,#0x4C0+var_4A0]
4D4924:  LDR             R0, [R0]
4D4926:  LDR.W           R1, [R0,#0x118]
4D492A:  MOV             R0, R8
4D492C:  BLX             R1
4D492E:  ADDS            R0, #1; byte_count
4D4930:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
4D4934:  CMP             R0, #0
4D4936:  STR.W           R0, [R11,#0x1C]
4D493A:  BEQ             loc_4D49D4
4D493C:  LDR             R1, [SP,#0x4C0+var_4A4]
4D493E:  LDR             R1, [R1]
4D4940:  LDR.W           R2, [R1,#0xF8]
4D4944:  MOV             R1, R8
4D4946:  BLX             R2
4D4948:  LDR             R0, =(dword_9FC944 - 0x4D494E)
4D494A:  ADD             R0, PC; dword_9FC944
4D494C:  MOV             R1, R0
4D494E:  LDR             R0, [R1]
4D4950:  STR.W           R0, [R11,#0x20]
4D4954:  LDR             R0, =(dword_9FC940 - 0x4D4960)
4D4956:  STR.W           R11, [R1]
4D495A:  MOV             R11, R4
4D495C:  ADD             R0, PC; dword_9FC940
4D495E:  MOV             R2, R0
4D4960:  LDR             R0, [R2]
4D4962:  ADDS            R0, #1
4D4964:  STR             R0, [R2]
4D4966:  LDR.W           R3, [R10,#0x14]
4D496A:  MOV             R0, R11
4D496C:  MOVW            R1, #0x3FF
4D4970:  MOV             R2, R9
4D4972:  BLX             R3
4D4974:  CMP             R0, #0
4D4976:  BNE.W           loc_4D4872
4D497A:  LDR.W           R1, [R10,#8]
4D497E:  MOV             R0, R9
4D4980:  BLX             R1
4D4982:  LDR             R0, =(dword_9FC940 - 0x4D4988)
4D4984:  ADD             R0, PC; dword_9FC940
4D4986:  LDR             R0, [R0]
4D4988:  CMP             R0, #0
4D498A:  IT NE
4D498C:  MOVNE           R0, #1
4D498E:  LDR             R1, =(__stack_chk_guard_ptr - 0x4D4998)
4D4990:  LDR.W           R2, [R7,#var_24]
4D4994:  ADD             R1, PC; __stack_chk_guard_ptr
4D4996:  LDR             R1, [R1]; __stack_chk_guard
4D4998:  LDR             R1, [R1]
4D499A:  SUBS            R1, R1, R2
4D499C:  ITTTT EQ
4D499E:  ADDEQ.W         SP, SP, #0x4A0
4D49A2:  ADDEQ           SP, SP, #4
4D49A4:  POPEQ.W         {R8-R11}
4D49A8:  POPEQ           {R4-R7,PC}
4D49AA:  BLX             __stack_chk_fail
4D49AE:  LDR             R0, =(RsGlobal_ptr - 0x4D49BA)
4D49B0:  MOV.W           R1, #0x420
4D49B4:  STR             R1, [SP,#0x4C0+var_468]
4D49B6:  ADD             R0, PC; RsGlobal_ptr
4D49B8:  LDR             R0, [R0]; RsGlobal
4D49BA:  LDR             R0, [R0,#(dword_9FC918 - 0x9FC8FC)]
4D49BC:  CBZ             R0, loc_4D49CC
4D49BE:  LDR             R0, =(RsGlobal_ptr - 0x4D49C6)
4D49C0:  ADD             R1, SP, #0x4C0+var_468
4D49C2:  ADD             R0, PC; RsGlobal_ptr
4D49C4:  LDR             R0, [R0]; RsGlobal
4D49C6:  LDR             R2, [R0,#(off_9FC91C - 0x9FC8FC)]
4D49C8:  MOVS            R0, #0x1D
4D49CA:  BLX             R2
4D49CC:  ADR             R0, aOutOfMemoryNot; "Out of memory - not all preset views lo"...
4D49CE:  BLX             j__Z14psErrorMessagePKc; psErrorMessage(char const*)
4D49D2:  B               loc_4D49FE
4D49D4:  LDR             R0, =(RsGlobal_ptr - 0x4D49E0)
4D49D6:  MOV.W           R1, #0x420
4D49DA:  STR             R1, [SP,#0x4C0+var_468]
4D49DC:  ADD             R0, PC; RsGlobal_ptr
4D49DE:  LDR             R0, [R0]; RsGlobal
4D49E0:  LDR             R0, [R0,#(dword_9FC918 - 0x9FC8FC)]
4D49E2:  CBZ             R0, loc_4D49F2
4D49E4:  LDR             R0, =(RsGlobal_ptr - 0x4D49EC)
4D49E6:  ADD             R1, SP, #0x4C0+var_468
4D49E8:  ADD             R0, PC; RsGlobal_ptr
4D49EA:  LDR             R0, [R0]; RsGlobal
4D49EC:  LDR             R2, [R0,#(off_9FC91C - 0x9FC8FC)]
4D49EE:  MOVS            R0, #0x1D
4D49F0:  BLX             R2
4D49F2:  ADR             R0, aOutOfMemoryNot; "Out of memory - not all preset views lo"...
4D49F4:  BLX             j__Z14psErrorMessagePKc; psErrorMessage(char const*)
4D49F8:  MOV             R0, R11; this
4D49FA:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
4D49FE:  MOVS            R0, #0
4D4A00:  B               loc_4D498E
