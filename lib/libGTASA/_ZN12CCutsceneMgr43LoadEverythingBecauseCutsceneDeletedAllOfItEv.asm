; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr43LoadEverythingBecauseCutsceneDeletedAllOfItEv
; Address            : 0x38FEC8 - 0x38FF9A
; =========================================================

38FEC8:  PUSH            {R4-R7,LR}
38FECA:  ADD             R7, SP, #0xC
38FECC:  PUSH.W          {R8-R11}
38FED0:  SUB             SP, SP, #4
38FED2:  LDR             R0, =(byte_942E54 - 0x38FEDA)
38FED4:  MOVS            R1, #0
38FED6:  ADD             R0, PC; byte_942E54 ; this
38FED8:  STRB            R1, [R0]
38FEDA:  BLX             j__ZN10CStreaming15LoadInitialPedsEv; CStreaming::LoadInitialPeds(void)
38FEDE:  BLX             j__ZN10CStreaming18LoadInitialWeaponsEv; CStreaming::LoadInitialWeapons(void)
38FEE2:  MOV.W           R0, #0xFFFFFFFF; int
38FEE6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
38FEEA:  MOV             R9, R0
38FEEC:  LDR             R0, =(dword_942E58 - 0x38FEF2)
38FEEE:  ADD             R0, PC; dword_942E58
38FEF0:  LDR             R0, [R0]
38FEF2:  CMP             R0, #1
38FEF4:  BLT             loc_38FF8A
38FEF6:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x38FF02)
38FEF8:  MOVS            R6, #0
38FEFA:  LDR.W           R10, =(unk_942E5C - 0x38FF08)
38FEFE:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
38FF00:  LDR.W           R11, =(dword_942E58 - 0x38FF0C)
38FF04:  ADD             R10, PC; unk_942E5C
38FF06:  LDR             R4, [R0]; CStreaming::ms_aInfoForModel ...
38FF08:  ADD             R11, PC; dword_942E58
38FF0A:  LDR.W           R0, [R10,R6,LSL#2]
38FF0E:  MOVS            R1, #1
38FF10:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
38FF14:  LDR             R5, [R0,#0xC]
38FF16:  MOVS            R1, #2; int
38FF18:  ADD.W           R0, R5, R5,LSL#2
38FF1C:  ADD.W           R0, R4, R0,LSL#2
38FF20:  LDRB.W          R8, [R0,#6]
38FF24:  MOV             R0, R5; this
38FF26:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
38FF2A:  MOVS            R0, #0; this
38FF2C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
38FF30:  LDR.W           R0, [R10,R6,LSL#2]
38FF34:  MOVS            R1, #1
38FF36:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
38FF3A:  LDR             R0, [R0,#0x10]
38FF3C:  ADDS            R0, #1
38FF3E:  BEQ             loc_38FF5C
38FF40:  LDR             R0, =(unk_942E5C - 0x38FF48)
38FF42:  MOVS            R1, #1
38FF44:  ADD             R0, PC; unk_942E5C
38FF46:  LDR.W           R0, [R0,R6,LSL#2]
38FF4A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
38FF4E:  LDR             R0, [R0,#0x10]; this
38FF50:  MOVS            R1, #0; int
38FF52:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
38FF56:  MOVS            R0, #0; this
38FF58:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
38FF5C:  MOVS.W          R0, R8,LSL#30
38FF60:  ITT PL
38FF62:  MOVPL           R0, R5; this
38FF64:  BLXPL           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
38FF68:  LDR             R0, =(unk_942E90 - 0x38FF70)
38FF6A:  MOVS            R3, #1
38FF6C:  ADD             R0, PC; unk_942E90
38FF6E:  LDR.W           R2, [R0,R6,LSL#2]
38FF72:  LDR             R0, =(unk_942E5C - 0x38FF78)
38FF74:  ADD             R0, PC; unk_942E5C
38FF76:  LDR.W           R1, [R0,R6,LSL#2]
38FF7A:  MOV             R0, R9
38FF7C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
38FF80:  LDR.W           R0, [R11]
38FF84:  ADDS            R6, #1
38FF86:  CMP             R6, R0
38FF88:  BLT             loc_38FF0A
38FF8A:  LDR             R0, =(dword_942E58 - 0x38FF92)
38FF8C:  MOVS            R1, #0
38FF8E:  ADD             R0, PC; dword_942E58
38FF90:  STR             R1, [R0]
38FF92:  ADD             SP, SP, #4
38FF94:  POP.W           {R8-R11}
38FF98:  POP             {R4-R7,PC}
