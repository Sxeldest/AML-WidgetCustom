; =========================================================
; Game Engine Function: _ZN6CStats4SaveEv
; Address            : 0x48DF00 - 0x48E036
; =========================================================

48DF00:  PUSH            {R4,R5,R7,LR}
48DF02:  ADD             R7, SP, #8
48DF04:  MOVS            R0, #dword_B0; this
48DF06:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
48DF0A:  MOV             R1, R0; unsigned __int16
48DF0C:  MOVS            R0, #(dword_B0+1); this
48DF0E:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
48DF12:  MOVS            R0, #0xB0
48DF14:  MOVS            R1, #0
48DF16:  MOVS            R5, #0
48DF18:  NOP
48DF1A:  NOP
48DF1C:  MOV.W           R0, #0x148; byte_count
48DF20:  BLX             malloc
48DF24:  MOV             R4, R0
48DF26:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x48DF30)
48DF28:  MOV.W           R2, #0x148; size_t
48DF2C:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
48DF2E:  LDR             R1, [R0]; void *
48DF30:  MOV             R0, R4; void *
48DF32:  BLX             memcpy_1
48DF36:  MOV             R0, R4; this
48DF38:  MOV.W           R1, #(elf_hash_bucket+0x4C); void *
48DF3C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DF40:  MOV             R0, R4; p
48DF42:  BLX             free
48DF46:  MOV.W           R0, #0x37C; byte_count
48DF4A:  BLX             malloc
48DF4E:  MOV             R4, R0
48DF50:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x48DF5A)
48DF52:  MOV.W           R2, #0x37C; size_t
48DF56:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
48DF58:  LDR             R1, [R0]; void *
48DF5A:  MOV             R0, R4; void *
48DF5C:  BLX             memcpy_1
48DF60:  MOV             R0, R4; this
48DF62:  MOV.W           R1, #(elf_hash_bucket+0x280); void *
48DF66:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DF6A:  MOV             R0, R4; p
48DF6C:  BLX             free
48DF70:  MOVS            R0, #0x80; byte_count
48DF72:  BLX             malloc
48DF76:  MOV             R4, R0
48DF78:  LDR             R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x48DF80)
48DF7A:  MOVS            R2, #0x80; size_t
48DF7C:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
48DF7E:  LDR             R1, [R0]; void *
48DF80:  MOV             R0, R4; void *
48DF82:  BLX             memcpy_1
48DF86:  MOV             R0, R4; this
48DF88:  MOVS            R1, #dword_80; void *
48DF8A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DF8E:  MOV             R0, R4; p
48DF90:  BLX             free
48DF94:  LDR             R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x48DF9C)
48DF96:  MOVS            R1, #byte_8; void *
48DF98:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
48DF9A:  LDR             R0, [R0]; this
48DF9C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DFA0:  BLX             j__ZN6CStats32PopulateFavoriteRadioStationListEv; CStats::PopulateFavoriteRadioStationList(void)
48DFA4:  MOVS            R0, #0x38 ; '8'; byte_count
48DFA6:  BLX             malloc
48DFAA:  MOV             R4, R0
48DFAC:  LDR             R0, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x48DFB2)
48DFAE:  ADD             R0, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
48DFB0:  LDR             R0, [R0]; CStats::FavoriteRadioStationList ...
48DFB2:  ADD.W           R2, R0, #0x20 ; ' '; int
48DFB6:  MOV             R1, R0
48DFB8:  VLDR            D20, [R0,#0x30]
48DFBC:  ADD.W           R0, R4, #0x30 ; '0'
48DFC0:  VLD1.32         {D18-D19}, [R2]
48DFC4:  VST1.8          {D20}, [R0]
48DFC8:  ADD.W           R0, R4, #0x20 ; ' '
48DFCC:  VLD1.32         {D16-D17}, [R1]!
48DFD0:  VST1.8          {D18-D19}, [R0]
48DFD4:  MOV             R0, R4
48DFD6:  VLD1.32         {D22-D23}, [R1]
48DFDA:  MOVS            R1, #dword_38; void *
48DFDC:  VST1.8          {D16-D17}, [R0]!
48DFE0:  VST1.8          {D22-D23}, [R0]
48DFE4:  MOV             R0, R4; this
48DFE6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DFEA:  MOV             R0, R4; p
48DFEC:  BLX             free
48DFF0:  MOV.W           R0, #0x190; byte_count
48DFF4:  BLX             malloc
48DFF8:  MOV             R4, R0
48DFFA:  LDR             R0, =(_ZN6CStats21TimesMissionAttemptedE_ptr - 0x48E004)
48DFFC:  MOV.W           R2, #0x190; size_t
48E000:  ADD             R0, PC; _ZN6CStats21TimesMissionAttemptedE_ptr
48E002:  LDR             R1, [R0]; void *
48E004:  MOV             R0, R4; void *
48E006:  BLX             memcpy_1
48E00A:  MOV             R0, R4; this
48E00C:  MOV.W           R1, #(elf_hash_bucket+0x94); void *
48E010:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E014:  MOV             R0, R4; p
48E016:  BLX             free
48E01A:  LDR             R0, =(_ZN6CStats11StatMessageE_ptr - 0x48E020)
48E01C:  ADD             R0, PC; _ZN6CStats11StatMessageE_ptr
48E01E:  LDR             R4, [R0]; CStats::StatMessage ...
48E020:  ADDS            R0, R4, R5
48E022:  MOVS            R1, #(stderr+1); void *
48E024:  ADDS            R0, #2; this
48E026:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E02A:  ADDS            R5, #0x10
48E02C:  CMP.W           R5, #0x800
48E030:  BNE             loc_48E020
48E032:  MOVS            R0, #1
48E034:  POP             {R4,R5,R7,PC}
