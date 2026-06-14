; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo13FindTextureCBEPKc
; Address            : 0x386DE8 - 0x386E02
; =========================================================

386DE8:  PUSH            {R4,R6,R7,LR}
386DEA:  ADD             R7, SP, #8
386DEC:  MOV             R4, R0
386DEE:  ADR             R0, off_386E04; this
386DF0:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
386DF4:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
386DF8:  MOV             R0, R4; this
386DFA:  POP.W           {R4,R6,R7,LR}
386DFE:  B.W             sub_19CE54
