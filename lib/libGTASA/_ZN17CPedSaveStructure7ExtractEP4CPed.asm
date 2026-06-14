; =========================================================
; Game Engine Function: _ZN17CPedSaveStructure7ExtractEP4CPed
; Address            : 0x4847C0 - 0x4848EE
; =========================================================

4847C0:  PUSH            {R4-R7,LR}
4847C2:  ADD             R7, SP, #0xC
4847C4:  PUSH.W          {R8}
4847C8:  MOV             R4, R1
4847CA:  MOV             R8, R0
4847CC:  LDRD.W          R2, R1, [R8]
4847D0:  LDR             R3, [R4,#0x14]
4847D2:  LDR.W           R0, [R8,#8]
4847D6:  CBZ             R3, loc_4847E4
4847D8:  STR             R2, [R3,#0x30]
4847DA:  LDR             R2, [R4,#0x14]
4847DC:  STR             R1, [R2,#0x34]
4847DE:  LDR             R1, [R4,#0x14]
4847E0:  ADDS            R1, #0x38 ; '8'
4847E2:  B               loc_4847EC
4847E4:  STRD.W          R2, R1, [R4,#4]
4847E8:  ADD.W           R1, R4, #0xC
4847EC:  STR             R0, [R1]
4847EE:  LDR.W           R0, [R8,#0xC]
4847F2:  STR.W           R0, [R4,#0x560]
4847F6:  LDR.W           R0, [R8,#0xC]
4847FA:  STR.W           R0, [R4,#0x55C]
4847FE:  LDR.W           R0, [R8,#0x10]
484802:  STR.W           R0, [R4,#0x544]
484806:  LDR.W           R0, [R8,#0x14]
48480A:  STR.W           R0, [R4,#0x54C]
48480E:  LDRB.W          R0, [R8,#0x185]
484812:  STRB.W          R0, [R4,#0x71C]
484816:  MOV             R0, R4; this
484818:  LDRB.W          R1, [R8,#0x184]; unsigned __int8
48481C:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
484820:  LDR             R0, =(IsMissionSave_ptr - 0x48482C)
484822:  MOVS            R6, #0
484824:  LDRB.W          R1, [R8,#0x18C]
484828:  ADD             R0, PC; IsMissionSave_ptr
48482A:  STRB.W          R1, [R4,#0x735]
48482E:  LDRB.W          R1, [R8,#0x18D]
484832:  LDR             R0, [R0]; IsMissionSave
484834:  STRB.W          R1, [R4,#0x736]
484838:  LDRB            R1, [R0]
48483A:  ADDW            R0, R4, #0x484
48483E:  CMP             R1, #0
484840:  ITTT NE
484842:  ADDNE.W         R1, R8, #0x190
484846:  VLD1NE.32       {D16-D17}, [R1]
48484A:  VST1NE.32       {D16-D17}, [R0]
48484E:  LDR             R1, [R0,#0xC]
484850:  BIC.W           R1, R1, #2
484854:  STR             R1, [R0,#0xC]
484856:  ADD.W           R5, R8, R6
48485A:  LDR             R0, [R5,#0x18]
48485C:  CBZ             R0, loc_4848A4
48485E:  MOVS            R1, #1
484860:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
484864:  LDR             R0, [R0,#0xC]; this
484866:  ADDS            R1, R0, #1
484868:  BEQ             loc_484876
48486A:  MOVS            R1, #8; int
48486C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
484870:  MOVS            R0, #0; this
484872:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
484876:  LDR             R0, [R5,#0x18]
484878:  MOVS            R1, #1
48487A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
48487E:  LDR             R0, [R0,#0x10]; this
484880:  ADDS            R1, R0, #1
484882:  BEQ             loc_484890
484884:  MOVS            R1, #8; int
484886:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
48488A:  MOVS            R0, #0; this
48488C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
484890:  LDR             R1, [R5,#0x18]
484892:  MOV             R0, R4
484894:  LDR             R2, [R5,#0x24]
484896:  MOVS            R3, #0
484898:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
48489C:  ADDS            R1, R4, R6
48489E:  LDR             R0, [R5,#0x20]
4848A0:  STR.W           R0, [R1,#0x5AC]
4848A4:  ADDS            R6, #0x1C
4848A6:  CMP.W           R6, #0x16C
4848AA:  BNE             loc_484856
4848AC:  LDRSB.W         R1, [R8,#0x185]; int
4848B0:  MOV             R0, R4; this
4848B2:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4848B6:  LDRB.W          R0, [R8,#0x186]
4848BA:  STRB.W          R0, [R4,#0x33]
4848BE:  LDR.W           R0, [R8,#0x188]
4848C2:  ADDS            R1, R0, #1
4848C4:  BEQ             loc_4848E2
4848C6:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x4848CC)
4848C8:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
4848CA:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
4848CC:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
4848CE:  LDR             R2, [R1,#4]
4848D0:  LDRSB           R2, [R2,R0]
4848D2:  CMP             R2, #0
4848D4:  BLT             loc_4848E2
4848D6:  LDR             R1, [R1]
4848D8:  RSB.W           R0, R0, R0,LSL#4
4848DC:  ADD.W           R0, R1, R0,LSL#2
4848E0:  B               loc_4848E4
4848E2:  MOVS            R0, #0
4848E4:  STR.W           R0, [R4,#0x794]
4848E8:  POP.W           {R8}
4848EC:  POP             {R4-R7,PC}
