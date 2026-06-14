; =========================================================
; Game Engine Function: _ZN15CTouchInterface13LoadTextureDBEv
; Address            : 0x2AFB78 - 0x2AFB8E
; =========================================================

2AFB78:  PUSH            {R4,R6,R7,LR}
2AFB7A:  ADD             R7, SP, #8
2AFB7C:  LDR             R0, =(aMobile_1 - 0x2AFB82); "mobile"
2AFB7E:  ADD             R0, PC; "mobile"
2AFB80:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2AFB84:  MOV             R4, R0
2AFB86:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
2AFB8A:  MOV             R0, R4
2AFB8C:  POP             {R4,R6,R7,PC}
