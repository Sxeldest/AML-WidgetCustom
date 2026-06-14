; =========================================================
; Game Engine Function: _Z17LoadMissionScripti
; Address            : 0x34E158 - 0x34E20E
; =========================================================

34E158:  PUSH            {R4,R5,R7,LR}
34E15A:  ADD             R7, SP, #8
34E15C:  MOV             R4, R0
34E15E:  LDR             R0, =(_ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr - 0x34E164)
34E160:  ADD             R0, PC; _ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr
34E162:  LDR             R0, [R0]; CTheScripts::NumberOfExclusiveMissionScripts ...
34E164:  LDRSH.W         R0, [R0]; CTheScripts::NumberOfExclusiveMissionScripts
34E168:  CMP             R0, #1
34E16A:  BLT             loc_34E17C
34E16C:  MOVW            R0, #0xFFFD
34E170:  CMP             R4, R0
34E172:  IT LT
34E174:  POPLT           {R4,R5,R7,PC}
34E176:  MOVW            R0, #(elf_hash_bucket+0xFF03); this
34E17A:  SUBS            R4, R0, R4
34E17C:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
34E180:  LDR             R0, =(_ZN11CTheScripts16MultiScriptArrayE_ptr - 0x34E186)
34E182:  ADD             R0, PC; _ZN11CTheScripts16MultiScriptArrayE_ptr
34E184:  LDR             R0, [R0]; CTheScripts::MultiScriptArray ...
34E186:  LDR.W           R4, [R0,R4,LSL#2]
34E18A:  ADR             R0, dword_34E218; this
34E18C:  BLX             j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
34E190:  LDR             R0, =(byte_61CD7E - 0x34E196)
34E192:  ADD             R0, PC; byte_61CD7E ; this
34E194:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
34E198:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x34E19E)
34E19A:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
34E19C:  LDR             R0, [R0]; CGame::bMissionPackGame ...
34E19E:  LDRB            R0, [R0]; this
34E1A0:  CBZ             R0, loc_34E1AA
34E1A2:  POP.W           {R4,R5,R7,LR}
34E1A6:  B.W             sub_19F7CC
34E1AA:  LDR             R0, =(aDataScriptMain - 0x34E1B2); "data\\script\\mainV1.scm"
34E1AC:  ADR             R1, dword_34E228; char *
34E1AE:  ADD             R0, PC; "data\\script\\mainV1.scm"
34E1B0:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
34E1B4:  MOV             R1, R4; unsigned int
34E1B6:  MOVS            R2, #0; int
34E1B8:  MOV             R5, R0
34E1BA:  BLX             j__ZN8CFileMgr4SeekEjii; CFileMgr::Seek(uint,int,int)
34E1BE:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34E1CC)
34E1C0:  MOV             R2, #(elf_hash_chain+0xC20); char *
34E1C8:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34E1CA:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
34E1CC:  ADD.W           R0, R0, #0x41000
34E1D0:  ADD.W           R4, R0, #0xEB0
34E1D4:  MOV             R0, R5; this
34E1D6:  MOV             R1, R4; unsigned int
34E1D8:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
34E1DC:  MOV             R0, R5; this
34E1DE:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
34E1E2:  BLX             j__ZN11CTheScripts39WipeLocalVariableMemoryForMissionScriptEv; CTheScripts::WipeLocalVariableMemoryForMissionScript(void)
34E1E6:  MOV             R0, R4; this
34E1E8:  BLX             j__ZN11CTheScripts14StartNewScriptEPh; CTheScripts::StartNewScript(uchar *)
34E1EC:  LDR             R1, =(_ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr - 0x34E1F8)
34E1EE:  MOVS            R2, #1
34E1F0:  STRB.W          R2, [R0,#0xE6]
34E1F4:  ADD             R1, PC; _ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr
34E1F6:  STRB.W          R2, [R0,#0xFC]
34E1FA:  STR             R4, [R0,#0x10]
34E1FC:  MOVS            R0, #0; this
34E1FE:  LDR             R1, [R1]; bool
34E200:  STRB            R2, [R1]; CTheScripts::bAlreadyRunningAMissionScript
34E202:  BLX             j__ZN10CGameLogic9ClearSkipEb; CGameLogic::ClearSkip(bool)
34E206:  POP.W           {R4,R5,R7,LR}
34E20A:  B.W             sub_19F7CC
