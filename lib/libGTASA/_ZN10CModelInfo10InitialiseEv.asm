; =========================================================
; Game Engine Function: _ZN10CModelInfo10InitialiseEv
; Address            : 0x385760 - 0x385990
; =========================================================

385760:  PUSH            {R4-R7,LR}
385762:  ADD             R7, SP, #0xC
385764:  PUSH.W          {R8-R11}
385768:  SUB             SP, SP, #4
38576A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385778)
38576C:  MOV             R1, #0x13880
385774:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385776:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
38577A:  MOV             R0, R10
38577C:  BLX             j___aeabi_memclr8_0
385780:  LDR             R0, =(dword_8E0E68 - 0x38578C)
385782:  MOVS            R3, #0
385784:  LDR             R1, =(dword_8E0E28 - 0x385790)
385786:  LDR             R2, =(dword_8E3608 - 0x385794)
385788:  ADD             R0, PC; dword_8E0E68
38578A:  LDR             R5, =(dword_8DFDBC - 0x385798)
38578C:  ADD             R1, PC; dword_8E0E28
38578E:  LDR             R4, =(dword_820738 - 0x38579C)
385790:  ADD             R2, PC; dword_8E3608
385792:  STR             R3, [R0]
385794:  ADD             R5, PC; dword_8DFDBC
385796:  LDR             R0, =(dword_8E58A4 - 0x3857A2)
385798:  ADD             R4, PC; dword_820738
38579A:  STR             R3, [R1]
38579C:  LDR             R1, =(dword_915FC8 - 0x3857AA)
38579E:  ADD             R0, PC; dword_8E58A4
3857A0:  LDR.W           R12, =(dword_8E364C - 0x3857AE)
3857A4:  LDR             R6, =(dword_8E4310 - 0x3857B2)
3857A6:  ADD             R1, PC; dword_915FC8
3857A8:  STR             R3, [R2]
3857AA:  ADD             R12, PC; dword_8E364C
3857AC:  LDR             R2, =(dword_91C3B4 - 0x3857B8)
3857AE:  ADD             R6, PC; dword_8E4310
3857B0:  STR             R3, [R5]
3857B2:  MOV             R5, R4
3857B4:  ADD             R2, PC; dword_91C3B4
3857B6:  STR             R3, [R0]
3857B8:  LDR.W           R0, [R5,#(dword_82073C - 0x820738)]!
3857BC:  STR             R3, [R1]
3857BE:  MOVS            R1, #1
3857C0:  STR.W           R3, [R12]
3857C4:  STR             R3, [R6]
3857C6:  STR             R3, [R2]
3857C8:  STR             R1, [R4]
3857CA:  LDR             R1, [R0,#0x1C]
3857CC:  MOV             R0, R5
3857CE:  BLX             R1
3857D0:  LDR             R0, =(_ZN14CTempColModels16ms_colModelDoor1E_ptr - 0x3857DC)
3857D2:  MOVS            R2, #0; bool
3857D4:  STR.W           R5, [R10,#(dword_91E290 - 0x91DCB8)]
3857D8:  ADD             R0, PC; _ZN14CTempColModels16ms_colModelDoor1E_ptr
3857DA:  LDR             R1, [R0]; CColModel *
3857DC:  MOV             R0, R5; this
3857DE:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
3857E2:  ADR.W           R9, aGeneric_2; "generic"
3857E6:  ADR.W           R8, aTxd_1; "txd"
3857EA:  MOV             R0, R5; this
3857EC:  MOV             R1, R9; CTxdStore *
3857EE:  MOV             R2, R8; char *
3857F0:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
3857F4:  LDR             R0, [R4]
3857F6:  MOV             R11, #0x42A00000
3857FE:  ADDS            R1, R0, #1
385800:  STR.W           R11, [R4,#(dword_82076C - 0x820738)]
385804:  RSB.W           R0, R0, R0,LSL#3
385808:  STR             R1, [R4]
38580A:  ADD.W           R6, R5, R0,LSL#3
38580E:  LDR.W           R0, [R5,R0,LSL#3]
385812:  LDR             R1, [R0,#0x1C]
385814:  MOV             R0, R6
385816:  BLX             R1
385818:  LDR             R0, =(_ZN14CTempColModels18ms_colModelBumper1E_ptr - 0x385824)
38581A:  MOVS            R2, #0; bool
38581C:  STR.W           R6, [R10,#(dword_91E294 - 0x91DCB8)]
385820:  ADD             R0, PC; _ZN14CTempColModels18ms_colModelBumper1E_ptr
385822:  LDR             R1, [R0]; CColModel *
385824:  MOV             R0, R6; this
385826:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
38582A:  MOV             R0, R6; this
38582C:  MOV             R1, R9; CTxdStore *
38582E:  MOV             R2, R8; char *
385830:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
385834:  STR.W           R11, [R6,#0x30]
385838:  LDR             R0, [R4]
38583A:  ADDS            R1, R0, #1
38583C:  STR             R1, [R4]
38583E:  RSB.W           R0, R0, R0,LSL#3
385842:  ADD.W           R6, R5, R0,LSL#3
385846:  LDR.W           R0, [R5,R0,LSL#3]
38584A:  LDR             R1, [R0,#0x1C]
38584C:  MOV             R0, R6
38584E:  BLX             R1
385850:  LDR             R0, =(_ZN14CTempColModels17ms_colModelPanel1E_ptr - 0x38585C)
385852:  MOVS            R2, #0; bool
385854:  STR.W           R6, [R10,#(dword_91E298 - 0x91DCB8)]
385858:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelPanel1E_ptr
38585A:  LDR             R1, [R0]; CColModel *
38585C:  MOV             R0, R6; this
38585E:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
385862:  MOV             R0, R6; this
385864:  MOV             R1, R9; CTxdStore *
385866:  MOV             R2, R8; char *
385868:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
38586C:  STR.W           R11, [R6,#0x30]
385870:  LDR             R0, [R4]
385872:  ADDS            R1, R0, #1
385874:  STR             R1, [R4]
385876:  RSB.W           R0, R0, R0,LSL#3
38587A:  ADD.W           R6, R5, R0,LSL#3
38587E:  LDR.W           R0, [R5,R0,LSL#3]
385882:  LDR             R1, [R0,#0x1C]
385884:  MOV             R0, R6
385886:  BLX             R1
385888:  LDR             R0, =(_ZN14CTempColModels18ms_colModelBonnet1E_ptr - 0x385894)
38588A:  MOVS            R2, #0; bool
38588C:  STR.W           R6, [R10,#(dword_91E29C - 0x91DCB8)]
385890:  ADD             R0, PC; _ZN14CTempColModels18ms_colModelBonnet1E_ptr
385892:  LDR             R1, [R0]; CColModel *
385894:  MOV             R0, R6; this
385896:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
38589A:  MOV             R0, R6; this
38589C:  MOV             R1, R9; CTxdStore *
38589E:  MOV             R2, R8; char *
3858A0:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
3858A4:  STR.W           R11, [R6,#0x30]
3858A8:  LDR             R0, [R4]
3858AA:  ADDS            R1, R0, #1
3858AC:  STR             R1, [R4]
3858AE:  RSB.W           R0, R0, R0,LSL#3
3858B2:  ADD.W           R6, R5, R0,LSL#3
3858B6:  LDR.W           R0, [R5,R0,LSL#3]
3858BA:  LDR             R1, [R0,#0x1C]
3858BC:  MOV             R0, R6
3858BE:  BLX             R1
3858C0:  LDR             R0, =(_ZN14CTempColModels16ms_colModelBoot1E_ptr - 0x3858CC)
3858C2:  MOVS            R2, #0; bool
3858C4:  STR.W           R6, [R10,#(dword_91E2A0 - 0x91DCB8)]
3858C8:  ADD             R0, PC; _ZN14CTempColModels16ms_colModelBoot1E_ptr
3858CA:  LDR             R1, [R0]; CColModel *
3858CC:  MOV             R0, R6; this
3858CE:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
3858D2:  MOV             R0, R6; this
3858D4:  MOV             R1, R9; CTxdStore *
3858D6:  MOV             R2, R8; char *
3858D8:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
3858DC:  STR.W           R11, [R6,#0x30]
3858E0:  LDR             R0, [R4]
3858E2:  ADDS            R1, R0, #1
3858E4:  STR             R1, [R4]
3858E6:  RSB.W           R0, R0, R0,LSL#3
3858EA:  ADD.W           R6, R5, R0,LSL#3
3858EE:  LDR.W           R0, [R5,R0,LSL#3]
3858F2:  LDR             R1, [R0,#0x1C]
3858F4:  MOV             R0, R6
3858F6:  BLX             R1
3858F8:  LDR             R0, =(_ZN14CTempColModels17ms_colModelWheel1E_ptr - 0x385904)
3858FA:  MOVS            R2, #0; bool
3858FC:  STR.W           R6, [R10,#(dword_91E2A4 - 0x91DCB8)]
385900:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelWheel1E_ptr
385902:  LDR             R1, [R0]; CColModel *
385904:  MOV             R0, R6; this
385906:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
38590A:  MOV             R0, R6; this
38590C:  MOV             R1, R9; CTxdStore *
38590E:  MOV             R2, R8; char *
385910:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
385914:  STR.W           R11, [R6,#0x30]
385918:  LDR             R0, [R4]
38591A:  ADDS            R1, R0, #1
38591C:  STR             R1, [R4]
38591E:  RSB.W           R0, R0, R0,LSL#3
385922:  ADD.W           R6, R5, R0,LSL#3
385926:  LDR.W           R0, [R5,R0,LSL#3]
38592A:  LDR             R1, [R0,#0x1C]
38592C:  MOV             R0, R6
38592E:  BLX             R1
385930:  LDR             R0, =(_ZN14CTempColModels20ms_colModelBodyPart1E_ptr - 0x38593C)
385932:  MOVS            R2, #0; bool
385934:  STR.W           R6, [R10,#(dword_91E2A8 - 0x91DCB8)]
385938:  ADD             R0, PC; _ZN14CTempColModels20ms_colModelBodyPart1E_ptr
38593A:  LDR             R1, [R0]; CColModel *
38593C:  MOV             R0, R6; this
38593E:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
385942:  MOV             R0, R6; this
385944:  MOV             R1, R9; CTxdStore *
385946:  MOV             R2, R8; char *
385948:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
38594C:  STR.W           R11, [R6,#0x30]
385950:  LDR             R0, [R4]
385952:  ADDS            R1, R0, #1
385954:  STR             R1, [R4]
385956:  RSB.W           R0, R0, R0,LSL#3
38595A:  LDR.W           R1, [R5,R0,LSL#3]
38595E:  ADD.W           R5, R5, R0,LSL#3
385962:  MOV             R0, R5
385964:  LDR             R1, [R1,#0x1C]
385966:  BLX             R1
385968:  LDR             R0, =(_ZN14CTempColModels20ms_colModelBodyPart2E_ptr - 0x385974)
38596A:  MOVS            R2, #0; bool
38596C:  STR.W           R5, [R10,#(dword_91E2AC - 0x91DCB8)]
385970:  ADD             R0, PC; _ZN14CTempColModels20ms_colModelBodyPart2E_ptr
385972:  LDR             R1, [R0]; CColModel *
385974:  MOV             R0, R5; this
385976:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
38597A:  MOV             R0, R5; this
38597C:  MOV             R1, R9; CTxdStore *
38597E:  MOV             R2, R8; char *
385980:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
385984:  STR.W           R11, [R5,#0x30]
385988:  ADD             SP, SP, #4
38598A:  POP.W           {R8-R11}
38598E:  POP             {R4-R7,PC}
