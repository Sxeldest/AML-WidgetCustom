; =========================================================
; Game Engine Function: _ZN15CTouchInterface17LoadAllTextureDBsEv
; Address            : 0x2B2824 - 0x2B2842
; =========================================================

2B2824:  PUSH            {R7,LR}
2B2826:  MOV             R7, SP
2B2828:  LDR             R0, =(aMobile_1 - 0x2B282E); "mobile"
2B282A:  ADD             R0, PC; "mobile"
2B282C:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2B2830:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
2B2834:  ADR             R0, off_2B2848; this
2B2836:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2B283A:  POP.W           {R7,LR}
2B283E:  B.W             j_j__ZN22TextureDatabaseRuntime8RegisterEPS_; j_TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
