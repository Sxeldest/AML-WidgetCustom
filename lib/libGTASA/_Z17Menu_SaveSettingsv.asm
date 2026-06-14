; =========================================================
; Game Engine Function: _Z17Menu_SaveSettingsv
; Address            : 0x2A8DE4 - 0x2A8E70
; =========================================================

2A8DE4:  PUSH            {R4,R6,R7,LR}
2A8DE6:  ADD             R7, SP, #8
2A8DE8:  SUB             SP, SP, #8
2A8DEA:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
2A8DEE:  LDR             R0, =(aGtaSaSet - 0x2A8DF6); "gta_sa.set"
2A8DF0:  ADR             R1, off_2A8E74; char *
2A8DF2:  ADD             R0, PC; "gta_sa.set"
2A8DF4:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
2A8DF8:  MOV             R4, R0
2A8DFA:  CBZ             R4, loc_2A8E64
2A8DFC:  LDR             R1, =(asc_60CC64 - 0x2A8E06); "\b"
2A8DFE:  MOV             R0, R4; this
2A8E00:  MOVS            R2, #byte_4; char *
2A8E02:  ADD             R1, PC; "\b"
2A8E04:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2A8E08:  LDR             R0, =(_ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x2A8E10)
2A8E0A:  MOVS            R2, #byte_4; char *
2A8E0C:  ADD             R0, PC; _ZN7CCamera20m_fMouseAccelHorzntlE_ptr
2A8E0E:  LDR             R1, [R0]; unsigned int
2A8E10:  MOV             R0, R4; this
2A8E12:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2A8E16:  LDR             R0, =(MousePointerStateHelper_ptr - 0x2A8E1E)
2A8E18:  MOVS            R2, #(stderr+1); char *
2A8E1A:  ADD             R0, PC; MousePointerStateHelper_ptr
2A8E1C:  LDR             R0, [R0]; MousePointerStateHelper
2A8E1E:  ADDS            R1, R0, #1; unsigned int
2A8E20:  MOV             R0, R4; this
2A8E22:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2A8E26:  LDR             R0, =(_ZN8CVehicle22m_bEnableMouseSteeringE_ptr - 0x2A8E2E)
2A8E28:  MOVS            R2, #(stderr+1); char *
2A8E2A:  ADD             R0, PC; _ZN8CVehicle22m_bEnableMouseSteeringE_ptr
2A8E2C:  LDR             R1, [R0]; unsigned int
2A8E2E:  MOV             R0, R4; this
2A8E30:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2A8E34:  LDR             R0, =(_ZN8CVehicle20m_bEnableMouseFlyingE_ptr - 0x2A8E3C)
2A8E36:  MOVS            R2, #(stderr+1); char *
2A8E38:  ADD             R0, PC; _ZN8CVehicle20m_bEnableMouseFlyingE_ptr
2A8E3A:  LDR             R1, [R0]; unsigned int
2A8E3C:  MOV             R0, R4; this
2A8E3E:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2A8E42:  LDR             R0, =(g_fx_ptr - 0x2A8E48)
2A8E44:  ADD             R0, PC; g_fx_ptr
2A8E46:  LDR             R0, [R0]; g_fx ; this
2A8E48:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
2A8E4C:  ADD             R1, SP, #0x10+var_C; unsigned int
2A8E4E:  STR             R0, [SP,#0x10+var_C]
2A8E50:  MOV             R0, R4; this
2A8E52:  MOVS            R2, #byte_4; char *
2A8E54:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2A8E58:  MOV             R0, R4; this
2A8E5A:  BLX             j__ZN14MobileSettings10SaveToFileEj; MobileSettings::SaveToFile(uint)
2A8E5E:  MOV             R0, R4; this
2A8E60:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
2A8E64:  LDR             R0, =(byte_61CD7E - 0x2A8E6A)
2A8E66:  ADD             R0, PC; byte_61CD7E ; this
2A8E68:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
2A8E6C:  ADD             SP, SP, #8
2A8E6E:  POP             {R4,R6,R7,PC}
