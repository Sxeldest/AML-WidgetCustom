; =========================================================
; Game Engine Function: _ZN10MobileMenu6UnloadEv
; Address            : 0x29B0BC - 0x29B12C
; =========================================================

29B0BC:  PUSH            {R4,R6,R7,LR}
29B0BE:  ADD             R7, SP, #8
29B0C0:  MOV             R4, R0
29B0C2:  LDR             R0, =(aMenu_1 - 0x29B0C8); "menu"
29B0C4:  ADD             R0, PC; "menu"
29B0C6:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
29B0CA:  BLX             j__ZN22TextureDatabaseRuntime10UnregisterEPS_; TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
29B0CE:  LDR             R0, [R4,#0x30]
29B0D0:  CBZ             R0, loc_29B0DA
29B0D2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B0D6:  MOVS            R0, #0
29B0D8:  STR             R0, [R4,#0x30]
29B0DA:  LDR             R0, [R4,#0x34]
29B0DC:  CBZ             R0, loc_29B0E6
29B0DE:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B0E2:  MOVS            R0, #0
29B0E4:  STR             R0, [R4,#0x34]
29B0E6:  LDR             R0, [R4,#0x38]
29B0E8:  CBZ             R0, loc_29B0F2
29B0EA:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B0EE:  MOVS            R0, #0
29B0F0:  STR             R0, [R4,#0x38]
29B0F2:  LDR             R0, [R4,#0x3C]
29B0F4:  CBZ             R0, loc_29B0FE
29B0F6:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B0FA:  MOVS            R0, #0
29B0FC:  STR             R0, [R4,#0x3C]
29B0FE:  LDR             R0, [R4,#0x40]
29B100:  CBZ             R0, loc_29B10A
29B102:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B106:  MOVS            R0, #0
29B108:  STR             R0, [R4,#0x40]
29B10A:  LDR             R0, [R4,#0x44]
29B10C:  CBZ             R0, loc_29B116
29B10E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29B112:  MOVS            R0, #0
29B114:  STR             R0, [R4,#0x44]
29B116:  MOVW            R0, #0xD70A
29B11A:  MOVS            R1, #1; float
29B11C:  MOVT            R0, #0x3C23; this
29B120:  BLX             j__ZN22TextureDatabaseRuntime15UpdateStreamingEfb; TextureDatabaseRuntime::UpdateStreaming(float,bool)
29B124:  POP.W           {R4,R6,R7,LR}
29B128:  B.W             j_j__ZN6CTimer12EndUserPauseEv; j_CTimer::EndUserPause(void)
