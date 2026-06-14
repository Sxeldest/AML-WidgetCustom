; =========================================================
; Game Engine Function: _ZN15CTouchInterface19UnloadAllTextureDBsEv
; Address            : 0x2B284C - 0x2B286A
; =========================================================

2B284C:  PUSH            {R7,LR}
2B284E:  MOV             R7, SP
2B2850:  LDR             R0, =(aMobile_1 - 0x2B2856); "mobile"
2B2852:  ADD             R0, PC; "mobile"
2B2854:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2B2858:  BLX             j__ZN22TextureDatabaseRuntime10UnregisterEPS_; TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
2B285C:  ADR             R0, off_2B2870; this
2B285E:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2B2862:  POP.W           {R7,LR}
2B2866:  B.W             j_j__ZN22TextureDatabaseRuntime10UnregisterEPS_; j_TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
