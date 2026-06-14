; =========================================================
; Game Engine Function: _ZN6CStats4LoadEv
; Address            : 0x48E054 - 0x48E0C4
; =========================================================

48E054:  PUSH            {R4,R5,R7,LR}
48E056:  ADD             R7, SP, #8
48E058:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x48E062)
48E05A:  MOV.W           R1, #(elf_hash_bucket+0x4C); void *
48E05E:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
48E060:  LDR             R0, [R0]; this
48E062:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E066:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x48E070)
48E068:  MOV.W           R1, #(elf_hash_bucket+0x280); void *
48E06C:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
48E06E:  LDR             R0, [R0]; this
48E070:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E074:  LDR             R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x48E07C)
48E076:  MOVS            R1, #dword_80; void *
48E078:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
48E07A:  LDR             R0, [R0]; this
48E07C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E080:  LDR             R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x48E088)
48E082:  MOVS            R1, #byte_8; void *
48E084:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
48E086:  LDR             R0, [R0]; this
48E088:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E08C:  LDR             R0, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x48E094)
48E08E:  MOVS            R1, #dword_38; void *
48E090:  ADD             R0, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
48E092:  LDR             R0, [R0]; this
48E094:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E098:  LDR             R0, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x48E0A2)
48E09A:  MOV.W           R1, #(elf_hash_bucket+0x94); void *
48E09E:  ADD             R0, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
48E0A0:  LDR             R0, [R0]; this
48E0A2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E0A6:  LDR             R0, =(_ZN6CStats11StatMessageE_ptr - 0x48E0AE)
48E0A8:  MOVS            R4, #0
48E0AA:  ADD             R0, PC; _ZN6CStats11StatMessageE_ptr
48E0AC:  LDR             R5, [R0]; CStats::StatMessage ...
48E0AE:  ADDS            R0, R5, R4
48E0B0:  MOVS            R1, #(stderr+1); void *
48E0B2:  ADDS            R0, #2; this
48E0B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E0B8:  ADDS            R4, #0x10
48E0BA:  CMP.W           R4, #0x800
48E0BE:  BNE             loc_48E0AE
48E0C0:  MOVS            R0, #1
48E0C2:  POP             {R4,R5,R7,PC}
