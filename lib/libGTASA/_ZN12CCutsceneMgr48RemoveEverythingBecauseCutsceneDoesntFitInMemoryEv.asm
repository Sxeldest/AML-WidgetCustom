; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr48RemoveEverythingBecauseCutsceneDoesntFitInMemoryEv
; Address            : 0x38FFC0 - 0x3900B4
; =========================================================

38FFC0:  LDR             R0, =(byte_942E54 - 0x38FFC6)
38FFC2:  ADD             R0, PC; byte_942E54
38FFC4:  LDRB            R0, [R0]
38FFC6:  CMP             R0, #1
38FFC8:  ITT EQ
38FFCA:  MOVEQ           R0, #(stderr+1); this
38FFCC:  BEQ.W           sub_19FA1C
38FFD0:  PUSH            {R4,R5,R7,LR}
38FFD2:  ADD             R7, SP, #0x10+var_8
38FFD4:  SUB             SP, SP, #0x10
38FFD6:  ADD             R4, SP, #0x20+var_1C
38FFD8:  MOV.W           R1, #0xFFFFFFFF
38FFDC:  MOV             R0, R4; int
38FFDE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
38FFE2:  MOVS            R1, #0
38FFE4:  MOV             R0, R4; this
38FFE6:  MOVT            R1, #0x42F0; CVector *
38FFEA:  MOVS            R2, #1; float
38FFEC:  MOVS            R5, #1
38FFEE:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
38FFF2:  BLX             j__ZN9CColStore18RemoveAllCollisionEv; CColStore::RemoveAllCollision(void)
38FFF6:  LDR             R0, =(_ZN6CWorld20bProcessCutsceneOnlyE_ptr - 0x38FFFC)
38FFF8:  ADD             R0, PC; _ZN6CWorld20bProcessCutsceneOnlyE_ptr
38FFFA:  LDR             R0, [R0]; this
38FFFC:  STRB            R5, [R0]; CWorld::bProcessCutsceneOnly
38FFFE:  BLX             j__ZN10CStreaming24RemoveCurrentZonesModelsEv; CStreaming::RemoveCurrentZonesModels(void)
390002:  BLX             j__ZN10CStreaming19RemoveLoadedVehicleEv; CStreaming::RemoveLoadedVehicle(void)
390006:  CMP             R0, #0
390008:  BNE             loc_390002
39000A:  BLX             j__ZN6CRadar19RemoveRadarSectionsEv; CRadar::RemoveRadarSections(void)
39000E:  MOVS            R0, #byte_7; this
390010:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
390014:  MOVS            R0, #byte_7; this
390016:  BLX             j__ZN10CStreaming22SetModelTxdIsDeletableEi; CStreaming::SetModelTxdIsDeletable(int)
39001A:  MOV.W           R0, #(elf_hash_bucket+0x5E); this
39001E:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
390022:  MOV.W           R0, #(elf_hash_bucket+0x5E); this
390026:  BLX             j__ZN10CStreaming22SetModelTxdIsDeletableEi; CStreaming::SetModelTxdIsDeletable(int)
39002A:  MOV.W           R0, #(elf_hash_bucket+0x52); this
39002E:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
390032:  MOV.W           R0, #(elf_hash_bucket+0x52); this
390036:  BLX             j__ZN10CStreaming22SetModelTxdIsDeletableEi; CStreaming::SetModelTxdIsDeletable(int)
39003A:  MOVW            R0, #(elf_hash_bucket+0x5D); this
39003E:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
390042:  MOVW            R0, #(elf_hash_bucket+0x5D); this
390046:  BLX             j__ZN10CStreaming22SetModelTxdIsDeletableEi; CStreaming::SetModelTxdIsDeletable(int)
39004A:  MOV.W           R0, #0xFFFFFFFF; int
39004E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
390052:  MOVS            R2, #0
390054:  MOVS            R1, #0; int
390056:  MOVT            R2, #0xC47A; float
39005A:  MOV             R4, R0
39005C:  MOVS            R5, #0
39005E:  BLX             j__ZN4CPed17RemoveWeaponAnimsEif; CPed::RemoveWeaponAnims(int,float)
390062:  LDR             R0, =(dword_942E58 - 0x390072)
390064:  MOVS            R3, #0
390066:  LDR.W           R12, =(unk_942E5C - 0x390076)
39006A:  LDR.W           LR, =(dword_942E58 - 0x390078)
39006E:  ADD             R0, PC; dword_942E58
390070:  LDR             R2, =(unk_942E90 - 0x39007C)
390072:  ADD             R12, PC; unk_942E5C
390074:  ADD             LR, PC; dword_942E58
390076:  STR             R5, [R0]
390078:  ADD             R2, PC; unk_942E90
39007A:  ADDS            R0, R4, R5
39007C:  LDR.W           R1, [R0,#0x5A4]
390080:  CBZ             R1, loc_390094
390082:  STR.W           R1, [R12,R3,LSL#2]
390086:  LDR.W           R0, [R0,#0x5B0]
39008A:  STR.W           R0, [R2,R3,LSL#2]
39008E:  ADDS            R3, #1
390090:  STR.W           R3, [LR]
390094:  ADDS            R5, #0x1C
390096:  CMP.W           R5, #0x16C
39009A:  BNE             loc_39007A
39009C:  MOV             R0, R4; this
39009E:  BLX             j__ZN4CPed12ClearWeaponsEv; CPed::ClearWeapons(void)
3900A2:  LDR             R0, =(byte_942E54 - 0x3900AA)
3900A4:  MOVS            R1, #1; bool
3900A6:  ADD             R0, PC; byte_942E54
3900A8:  STRB            R1, [R0]
3900AA:  MOVS            R0, #(stderr+1); this
3900AC:  BLX             j__ZN5CGame19DrasticTidyUpMemoryEb; CGame::DrasticTidyUpMemory(bool)
3900B0:  ADD             SP, SP, #0x10
3900B2:  POP             {R4,R5,R7,PC}
