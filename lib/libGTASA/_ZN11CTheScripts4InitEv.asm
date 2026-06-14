; =========================================================
; Game Engine Function: _ZN11CTheScripts4InitEv
; Address            : 0x329EB0 - 0x32A9E0
; =========================================================

329EB0:  PUSH            {R4-R7,LR}
329EB2:  ADD             R7, SP, #0xC
329EB4:  PUSH.W          {R8-R11}
329EB8:  SUB             SP, SP, #4
329EBA:  VPUSH           {D8-D9}
329EBE:  SUB             SP, SP, #0x10
329EC0:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329ED0)
329EC4:  MOV             R1, #0x52C38
329ECC:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329ECE:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
329ED0:  BLX             j___aeabi_memclr8_1
329ED4:  LDR.W           R0, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329EE0)
329ED8:  MOV.W           R1, #0x1000
329EDC:  ADD             R0, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329EDE:  LDR             R0, [R0]; CTheScripts::LocalVariablesForCurrentMission ...
329EE0:  BLX             j___aeabi_memclr8_0
329EE4:  LDR.W           R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x329EF6)
329EE8:  MOVS            R4, #0
329EEA:  LDR.W           R1, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x329EFC)
329EEE:  VMOV.I32        Q4, #0
329EF2:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
329EF4:  MOV.W           R10, #0xFF
329EF8:  ADD             R1, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
329EFA:  MOV.W           R11, #0x1000000
329EFE:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
329F00:  MOVS            R5, #0
329F02:  LDR             R1, [R1]; CTheScripts::pIdleScripts ...
329F04:  MOV.W           R9, #0
329F08:  STR             R4, [R0]; CTheScripts::pActiveScripts
329F0A:  LDR.W           R0, =(_ZN11CTheScripts12ScriptsArrayE_ptr - 0x329F14)
329F0E:  STR             R4, [R1]; CTheScripts::pIdleScripts
329F10:  ADD             R0, PC; _ZN11CTheScripts12ScriptsArrayE_ptr
329F12:  LDR             R6, [R0]; CTheScripts::ScriptsArray ...
329F14:  ADD.W           R8, R6, R5
329F18:  MOVW            R0, #0x656D
329F1C:  MOVS            R1, #0xA8
329F1E:  STRB.W          R4, [R8,#0xE]
329F22:  STRH.W          R0, [R8,#0xC]
329F26:  MOV             R0, #0x616E6F6E
329F2E:  STR.W           R4, [R8,#0xEC]
329F32:  STR.W           R0, [R8,#8]
329F36:  ADD.W           R0, R8, #0x2A ; '*'
329F3A:  STR.W           R4, [R8,#0xE4]
329F3E:  STRB.W          R4, [R8,#0xE8]
329F42:  STRB.W          R10, [R8,#0xE9]
329F46:  VST1.16         {D8-D9}, [R0]
329F4A:  ADD.W           R0, R8, #0x20 ; ' '
329F4E:  VST1.32         {D8-D9}, [R0]
329F52:  ADD.W           R0, R8, #0x10
329F56:  VST1.32         {D8-D9}, [R0]
329F5A:  ADD.W           R0, R8, #0x3C ; '<'
329F5E:  BLX             j___aeabi_memclr8_0
329F62:  STR.W           R9, [R6,R5]
329F66:  CMP.W           R9, #0
329F6A:  ADD.W           R5, R5, #0x100
329F6E:  STRB.W          R4, [R8,#0xF4]
329F72:  STR.W           R11, [R8,#0xF0]
329F76:  STR.W           R4, [R8,#0xF8]
329F7A:  STRB.W          R4, [R8,#0xFC]
329F7E:  STR.W           R4, [R8,#4]
329F82:  IT NE
329F84:  STRNE.W         R8, [R9,#4]
329F88:  CMP.W           R5, #0x6000
329F8C:  MOV             R9, R8
329F8E:  BNE             loc_329F14
329F90:  LDR.W           R1, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x329F9C)
329F94:  LDR.W           R2, =(_ZN11CTheScripts12ScriptsArrayE_ptr - 0x329FA2)
329F98:  ADD             R1, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
329F9A:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x329FA6)
329F9E:  ADD             R2, PC; _ZN11CTheScripts12ScriptsArrayE_ptr
329FA0:  LDR             R1, [R1]; CTheScripts::pIdleScripts ...
329FA2:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
329FA4:  LDR             R2, [R2]; CTheScripts::ScriptsArray ...
329FA6:  LDR             R3, [R0]; CTheScripts::MissionCleanUp ...
329FA8:  MOVS            R0, #0
329FAA:  ADD             R2, R5
329FAC:  SUB.W           R2, R2, #0x100
329FB0:  STR             R2, [R1]; CTheScripts::pIdleScripts
329FB2:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x329FC0)
329FB6:  MOVS            R2, #0
329FB8:  STRB.W          R0, [R3,#(byte_811624 - 0x8113CC)]
329FBC:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
329FBE:  LDR             R1, [R1]; CTheScripts::MissionCleanUp ...
329FC0:  STRB.W          R0, [R1,R2,LSL#3]
329FC4:  ADD.W           R3, R1, R2,LSL#3
329FC8:  ADDS            R2, #1
329FCA:  CMP             R2, #0x4B ; 'K'
329FCC:  STR             R0, [R3,#4]
329FCE:  BNE             loc_329FC0
329FD0:  LDR.W           R0, =(_ZN11CTheScripts14UpsideDownCarsE_ptr - 0x329FE4)
329FD4:  VMOV.I64        Q8, #0xFFFFFFFF
329FD8:  MOVW            R3, #0x4000
329FDC:  MOV.W           R2, #0xFFFFFFFF
329FE0:  ADD             R0, PC; _ZN11CTheScripts14UpsideDownCarsE_ptr
329FE2:  MOVT            R3, #0xC59C
329FE6:  MOVS            R6, #0
329FE8:  LDR             R0, [R0]; CTheScripts::UpsideDownCars ...
329FEA:  ADD.W           R1, R0, #0x20 ; ' '
329FEE:  VST1.32         {D16-D17}, [R0]!
329FF2:  VST1.32         {D16-D17}, [R0]
329FF6:  MOVS            R0, #0
329FF8:  VST1.32         {D16-D17}, [R1]
329FFC:  LDR.W           R1, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x32A004)
32A000:  ADD             R1, PC; _ZN11CTheScripts9StuckCarsE_ptr
32A002:  LDR             R1, [R1]; CTheScripts::StuckCars ...
32A004:  STR             R2, [R1,R6]
32A006:  ADDS            R5, R1, R6
32A008:  ADDS            R6, #0x24 ; '$'
32A00A:  CMP.W           R6, #0x240
32A00E:  STRD.W          R3, R3, [R5,#4]
32A012:  STRD.W          R3, R2, [R5,#0xC]
32A016:  STR.W           R0, [R5,#0x1E]
32A01A:  STR.W           R0, [R5,#0x1A]
32A01E:  STRD.W          R0, R0, [R5,#0x14]
32A022:  BNE             loc_32A004
32A024:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x32A02C)
32A028:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
32A02A:  LDR             R0, [R0]; this
32A02C:  BLX             j__ZN17CScriptsForBrains4InitEv; CScriptsForBrains::Init(void)
32A030:  LDR.W           R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x32A038)
32A034:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
32A036:  LDR             R0, [R0]; this
32A038:  BLX             j__ZN22CScriptResourceManager10InitialiseEv; CScriptResourceManager::Initialise(void)
32A03C:  LDR.W           R1, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x32A04C)
32A040:  MOVS            R0, #0
32A042:  MOVW            R6, #0xFFFF
32A046:  MOVS            R2, #0
32A048:  ADD             R1, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
32A04A:  LDR             R1, [R1]; CTheScripts::EntitiesWaitingForScriptBrain ...
32A04C:  STR.W           R0, [R1,R2,LSL#3]
32A050:  ADD.W           R3, R1, R2,LSL#3
32A054:  ADDS            R2, #1
32A056:  CMP             R2, #0x96
32A058:  STRH            R6, [R3,#4]
32A05A:  BNE             loc_32A04C
32A05C:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x32A06C)
32A060:  MOV             R8, #0x41EB0
32A068:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
32A06A:  LDR             R0, [R0]; CGame::bMissionPackGame ...
32A06C:  LDRB            R0, [R0]; CGame::bMissionPackGame
32A06E:  CMP             R0, #0
32A070:  BEQ             loc_32A108
32A072:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x32A086)
32A076:  ADR.W           R9, aMpackMpackDScr; "MPACK//MPACK%d//SCR.SCM"
32A07A:  LDR.W           R1, =(gString_ptr - 0x32A088)
32A07E:  ADR.W           R11, aRb_6; "rb"
32A082:  ADD             R0, PC; FrontEndMenuManager_ptr
32A084:  ADD             R1, PC; gString_ptr
32A086:  LDR             R5, [R0]; FrontEndMenuManager
32A088:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x32A092)
32A08C:  LDR             R6, [R1]; gString
32A08E:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
32A090:  LDR.W           R10, [R0]; CGame::bMissionPackGame ...
32A094:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32A09C)
32A098:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32A09A:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
32A09C:  STR             R0, [SP,#0x40+var_38]
32A09E:  MOV             R0, R5; this
32A0A0:  BLX             j__ZN12CMenuManager25CheckMissionPackValidMenuEv; CMenuManager::CheckMissionPackValidMenu(void)
32A0A4:  CBZ             R0, loc_32A0F2
32A0A6:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
32A0AA:  LDRB.W          R2, [R10]; CGame::bMissionPackGame
32A0AE:  MOV             R0, R6
32A0B0:  MOV             R1, R9
32A0B2:  BL              sub_5E6BC0
32A0B6:  MOV             R0, R6; this
32A0B8:  MOV             R1, R11; char *
32A0BA:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
32A0BE:  MOV             R4, R0
32A0C0:  CMP             R4, #0
32A0C2:  BEQ             loc_32A09E
32A0C4:  LDR             R1, [SP,#0x40+var_38]; unsigned int
32A0C6:  MOV             R0, R4; this
32A0C8:  MOV             R2, R8; char *
32A0CA:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
32A0CE:  MOV             R8, R0
32A0D0:  MOV             R0, R4; this
32A0D2:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
32A0D6:  CMP.W           R8, #1
32A0DA:  MOV             R8, #0x41EB0
32A0E2:  BLT             loc_32A09E
32A0E4:  LDR.W           R0, =(TheText_ptr - 0x32A0EE)
32A0E8:  MOVS            R1, #0; unsigned __int8
32A0EA:  ADD             R0, PC; TheText_ptr
32A0EC:  LDR             R0, [R0]; TheText ; this
32A0EE:  BLX             j__ZN5CText4LoadEh; CText::Load(uchar)
32A0F2:  LDR.W           R0, =(byte_61CD7E - 0x32A0FA)
32A0F6:  ADD             R0, PC; byte_61CD7E ; this
32A0F8:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
32A0FC:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x32A104)
32A100:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
32A102:  LDR             R0, [R0]; CGame::bMissionPackGame ...
32A104:  LDRB            R0, [R0]; CGame::bMissionPackGame
32A106:  CBNZ            R0, loc_32A134
32A108:  ADR.W           R0, aDataScript; "data\\script"
32A10C:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
32A110:  ADR.W           R0, aMainv1Scm; "mainV1.scm"
32A114:  ADR.W           R1, aRb_6; "rb"
32A118:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
32A11C:  MOV             R4, R0
32A11E:  LDR.W           R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32A128)
32A122:  MOV             R2, R8; char *
32A124:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32A126:  LDR             R1, [R0]; unsigned int
32A128:  MOV             R0, R4; this
32A12A:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
32A12E:  MOV             R0, R4; this
32A130:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
32A134:  LDR.W           R0, =(byte_61CD7E - 0x32A13C)
32A138:  ADD             R0, PC; byte_61CD7E ; this
32A13A:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
32A13E:  LDR.W           R0, =(_ZN11CTheScripts21StoreVehicleWasRandomE_ptr - 0x32A152)
32A142:  VMOV.I32        Q8, #0
32A146:  LDR.W           R1, =(_ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x32A158)
32A14A:  LDR.W           R3, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x32A15E)
32A14E:  ADD             R0, PC; _ZN11CTheScripts21StoreVehicleWasRandomE_ptr
32A150:  LDR.W           R6, =(_ZN11CTheScripts17StoreVehicleIndexE_ptr - 0x32A164)
32A154:  ADD             R1, PC; _ZN11CTheScripts21LastMissionPassedTimeE_ptr
32A156:  LDR.W           R2, =(_ZN11CTheScripts15LastRandomPedIdE_ptr - 0x32A166)
32A15A:  ADD             R3, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
32A15C:  LDR.W           R5, =(_ZN11CTheScripts14OnAMissionFlagE_ptr - 0x32A16A)
32A160:  ADD             R6, PC; _ZN11CTheScripts17StoreVehicleIndexE_ptr
32A162:  ADD             R2, PC; _ZN11CTheScripts15LastRandomPedIdE_ptr
32A164:  LDR             R4, [R0]; CTheScripts::StoreVehicleWasRandom ...
32A166:  ADD             R5, PC; _ZN11CTheScripts14OnAMissionFlagE_ptr
32A168:  LDR             R0, [R3]; CTheScripts::UsedObjectArray ...
32A16A:  LDR             R3, [R6]; CTheScripts::StoreVehicleIndex ...
32A16C:  MOVS            R6, #1
32A16E:  LDR             R1, [R1]; CTheScripts::LastMissionPassedTime ...
32A170:  LDR             R2, [R2]; CTheScripts::LastRandomPedId ...
32A172:  LDR             R5, [R5]; CTheScripts::OnAMissionFlag ...
32A174:  STRB            R6, [R4]; CTheScripts::StoreVehicleWasRandom
32A176:  MOV.W           R6, #0xFFFFFFFF
32A17A:  STR             R6, [R3]; CTheScripts::StoreVehicleIndex
32A17C:  MOVS            R3, #0
32A17E:  STR             R6, [R1]; CTheScripts::LastMissionPassedTime
32A180:  MOVW            R1, #0x18B
32A184:  STR             R3, [R5]; CTheScripts::OnAMissionFlag
32A186:  STR             R6, [R2]; CTheScripts::LastRandomPedId
32A188:  ADD.W           R2, R0, #0xC
32A18C:  SUBS            R1, #1
32A18E:  VST1.32         {D16-D17}, [R2]
32A192:  VST1.32         {D16-D17}, [R0]
32A196:  ADD.W           R0, R0, #0x1C
32A19A:  BNE             loc_32A188
32A19C:  LDR.W           R0, =(_ZN11CTheScripts19NumberOfUsedObjectsE_ptr - 0x32A1A6)
32A1A0:  MOVS            R4, #0
32A1A2:  ADD             R0, PC; _ZN11CTheScripts19NumberOfUsedObjectsE_ptr
32A1A4:  LDR             R0, [R0]; this
32A1A6:  STRH            R4, [R0]; CTheScripts::NumberOfUsedObjects
32A1A8:  BLX             j__ZN11CTheScripts25ReadObjectNamesFromScriptEv; CTheScripts::ReadObjectNamesFromScript(void)
32A1AC:  BLX             j__ZN11CTheScripts19UpdateObjectIndicesEv; CTheScripts::UpdateObjectIndices(void)
32A1B0:  LDR.W           R1, =(_ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr - 0x32A1C4)
32A1B4:  MOV.W           R9, #1
32A1B8:  LDR.W           R0, =(_ZN11CTheScripts22bUsingAMultiScriptFileE_ptr - 0x32A1C6)
32A1BC:  LDR.W           R2, =(_ZN11CTheScripts16MultiScriptArrayE_ptr - 0x32A1C8)
32A1C0:  ADD             R1, PC; _ZN11CTheScripts29bAlreadyRunningAMissionScriptE_ptr
32A1C2:  ADD             R0, PC; _ZN11CTheScripts22bUsingAMultiScriptFileE_ptr
32A1C4:  ADD             R2, PC; _ZN11CTheScripts16MultiScriptArrayE_ptr
32A1C6:  LDR             R1, [R1]; CTheScripts::bAlreadyRunningAMissionScript ...
32A1C8:  LDR             R3, [R0]; CTheScripts::bUsingAMultiScriptFile ...
32A1CA:  LDR             R0, [R2]; CTheScripts::MultiScriptArray ...
32A1CC:  STRB            R4, [R1]; CTheScripts::bAlreadyRunningAMissionScript
32A1CE:  MOV.W           R1, #0x320
32A1D2:  STRB.W          R9, [R3]; CTheScripts::bUsingAMultiScriptFile
32A1D6:  BLX             j___aeabi_memclr8_0
32A1DA:  LDR.W           R0, =(_ZN11CTheScripts24LargestMissionScriptSizeE_ptr - 0x32A1EA)
32A1DE:  LDR.W           R1, =(_ZN11CTheScripts14MainScriptSizeE_ptr - 0x32A1F0)
32A1E2:  LDR.W           R2, =(_ZN11CTheScripts22NumberOfMissionScriptsE_ptr - 0x32A1F6)
32A1E6:  ADD             R0, PC; _ZN11CTheScripts24LargestMissionScriptSizeE_ptr
32A1E8:  LDR.W           R3, =(_ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr - 0x32A1F8)
32A1EC:  ADD             R1, PC; _ZN11CTheScripts14MainScriptSizeE_ptr
32A1EE:  LDR.W           R6, =(_ZN11CTheScripts42LargestNumberOfMissionScriptLocalVariablesE_ptr - 0x32A1FC)
32A1F2:  ADD             R2, PC; _ZN11CTheScripts22NumberOfMissionScriptsE_ptr
32A1F4:  ADD             R3, PC; _ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr
32A1F6:  LDR             R0, [R0]; this
32A1F8:  ADD             R6, PC; _ZN11CTheScripts42LargestNumberOfMissionScriptLocalVariablesE_ptr
32A1FA:  LDR             R1, [R1]; CTheScripts::MainScriptSize ...
32A1FC:  LDR             R2, [R2]; CTheScripts::NumberOfMissionScripts ...
32A1FE:  LDR             R3, [R3]; CTheScripts::NumberOfExclusiveMissionScripts ...
32A200:  LDR             R6, [R6]; CTheScripts::LargestNumberOfMissionScriptLocalVariables ...
32A202:  STR             R4, [R0]; CTheScripts::LargestMissionScriptSize
32A204:  STR             R4, [R1]; CTheScripts::MainScriptSize
32A206:  STRH            R4, [R2]; CTheScripts::NumberOfMissionScripts
32A208:  STRH            R4, [R3]; CTheScripts::NumberOfExclusiveMissionScripts
32A20A:  STR             R4, [R6]; CTheScripts::LargestNumberOfMissionScriptLocalVariables
32A20C:  BLX             j__ZN11CTheScripts36ReadMultiScriptFileOffsetsFromScriptEv; CTheScripts::ReadMultiScriptFileOffsetsFromScript(void)
32A210:  LDR.W           R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x32A218)
32A214:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
32A216:  LDR             R0, [R0]; CGame::bMissionPackGame ...
32A218:  LDRB            R0, [R0]; CGame::bMissionPackGame
32A21A:  CBNZ            R0, loc_32A228
32A21C:  LDR.W           R0, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x32A224)
32A220:  ADD             R0, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
32A222:  LDR             R0, [R0]; this
32A224:  BLX             j__ZN16CStreamedScripts22ReadStreamedScriptDataEv; CStreamedScripts::ReadStreamedScriptData(void)
32A228:  LDR.W           R0, =(_ZN11CTheScripts22ScriptPickupCycleIndexE_ptr - 0x32A23C)
32A22C:  VMOV.I32        Q4, #0
32A230:  LDR.W           R1, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x32A246)
32A234:  MOV.W           R10, #0xFF
32A238:  ADD             R0, PC; _ZN11CTheScripts22ScriptPickupCycleIndexE_ptr
32A23A:  LDR.W           R5, =(_ZN11CTheScripts19ForceRandomCarModelE_ptr - 0x32A24A)
32A23E:  LDR.W           R8, =(_ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr - 0x32A24C)
32A242:  ADD             R1, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
32A244:  LDR             R0, [R0]; CTheScripts::ScriptPickupCycleIndex ...
32A246:  ADD             R5, PC; _ZN11CTheScripts19ForceRandomCarModelE_ptr
32A248:  ADD             R8, PC; _ZN11CTheScripts31bDisplayNonMiniGameHelpMessagesE_ptr
32A24A:  LDR.W           LR, [R1]; CTheScripts::bScriptHasFadedOut ...
32A24E:  LDR             R1, [R5]; CTheScripts::ForceRandomCarModel ...
32A250:  STR             R4, [R0]; CTheScripts::ScriptPickupCycleIndex
32A252:  LDR.W           R0, =(_ZN11CTheScripts18FailCurrentMissionE_ptr - 0x32A25E)
32A256:  LDR.W           R5, [R8]; CTheScripts::bDisplayNonMiniGameHelpMessages ...
32A25A:  ADD             R0, PC; _ZN11CTheScripts18FailCurrentMissionE_ptr
32A25C:  LDR.W           R2, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x32A26A)
32A260:  LDR.W           R6, =(_ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr - 0x32A276)
32A264:  LDR             R0, [R0]; CTheScripts::FailCurrentMission ...
32A266:  ADD             R2, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
32A268:  STRB.W          R9, [R5]; CTheScripts::bDisplayNonMiniGameHelpMessages
32A26C:  MOV.W           R5, #0xFFFFFFFF
32A270:  STR             R5, [R1]; CTheScripts::ForceRandomCarModel
32A272:  ADD             R6, PC; _ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr
32A274:  STRB            R4, [R0]; CTheScripts::FailCurrentMission
32A276:  LDR.W           R0, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x32A282)
32A27A:  LDR.W           R3, =(_ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr - 0x32A288)
32A27E:  ADD             R0, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
32A280:  LDR.W           R12, [R6]; CTheScripts::bDrawOddJobTitleBeforeFade ...
32A284:  ADD             R3, PC; _ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr
32A286:  LDR             R2, [R2]; CTheScripts::bAddNextMessageToPreviousBriefs ...
32A288:  LDR             R0, [R0]; CTheScripts::bMiniGameInProgress ...
32A28A:  MOVS            R6, #1
32A28C:  LDR             R3, [R3]; CTheScripts::bDrawSubtitlesBeforeFade ...
32A28E:  STRB.W          R9, [R2]; CTheScripts::bAddNextMessageToPreviousBriefs
32A292:  STRB            R4, [R0]; CTheScripts::bMiniGameInProgress
32A294:  LDR.W           R0, =(_ZN11CTheScripts24bPlayerHasMetDebbieHarryE_ptr - 0x32A2A0)
32A298:  STRB.W          R9, [R12]; CTheScripts::bDrawOddJobTitleBeforeFade
32A29C:  ADD             R0, PC; _ZN11CTheScripts24bPlayerHasMetDebbieHarryE_ptr
32A29E:  STRB.W          R9, [R3]; CTheScripts::bDrawSubtitlesBeforeFade
32A2A2:  STRB.W          R4, [LR]; CTheScripts::bScriptHasFadedOut
32A2A6:  LDR             R0, [R0]; CTheScripts::bPlayerHasMetDebbieHarry ...
32A2A8:  STRB            R4, [R0]; CTheScripts::bPlayerHasMetDebbieHarry
32A2AA:  LDR.W           R0, =(_ZN11CTheScripts13RiotIntensityE_ptr - 0x32A2B2)
32A2AE:  ADD             R0, PC; _ZN11CTheScripts13RiotIntensityE_ptr
32A2B0:  LDR             R0, [R0]; CTheScripts::RiotIntensity ...
32A2B2:  STRB            R4, [R0]; CTheScripts::RiotIntensity
32A2B4:  LDR.W           R0, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x32A2BC)
32A2B8:  ADD             R0, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
32A2BA:  LDR             R0, [R0]; CTheScripts::bPlayerIsOffTheMap ...
32A2BC:  STRB            R4, [R0]; CTheScripts::bPlayerIsOffTheMap
32A2BE:  LDR.W           R0, =(_ZN11CTheScripts14RadarZoomValueE_ptr - 0x32A2C6)
32A2C2:  ADD             R0, PC; _ZN11CTheScripts14RadarZoomValueE_ptr
32A2C4:  LDR             R0, [R0]; CTheScripts::RadarZoomValue ...
32A2C6:  STRB            R4, [R0]; CTheScripts::RadarZoomValue
32A2C8:  LDR.W           R0, =(_ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr - 0x32A2D0)
32A2CC:  ADD             R0, PC; _ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr
32A2CE:  LDR             R0, [R0]; CTheScripts::RadarShowBlipOnAllLevels ...
32A2D0:  STRB            R4, [R0]; CTheScripts::RadarShowBlipOnAllLevels
32A2D2:  LDR.W           R0, =(_ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr - 0x32A2DA)
32A2D6:  ADD             R0, PC; _ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr
32A2D8:  LDR             R0, [R0]; CTheScripts::HideAllFrontEndMapBlips ...
32A2DA:  STRB            R4, [R0]; CTheScripts::HideAllFrontEndMapBlips
32A2DC:  LDR.W           R0, =(_ZN11CTheScripts11bDisplayHudE_ptr - 0x32A2E4)
32A2E0:  ADD             R0, PC; _ZN11CTheScripts11bDisplayHudE_ptr
32A2E2:  LDR             R0, [R0]; CTheScripts::bDisplayHud ...
32A2E4:  STRB.W          R9, [R0]; CTheScripts::bDisplayHud
32A2E8:  LDR.W           R0, =(_ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x32A2F0)
32A2EC:  ADD             R0, PC; _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr
32A2EE:  LDR             R0, [R0]; CTheScripts::fCameraHeadingWhenPlayerIsAttached ...
32A2F0:  STR             R4, [R0]; CTheScripts::fCameraHeadingWhenPlayerIsAttached
32A2F2:  LDR.W           R0, =(_ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x32A2FA)
32A2F6:  ADD             R0, PC; _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr
32A2F8:  LDR             R0, [R0]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached ...
32A2FA:  STR             R4, [R0]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached
32A2FC:  LDR.W           R0, =(_ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x32A304)
32A300:  ADD             R0, PC; _ZN11CTheScripts17bEnableCraneRaiseE_ptr
32A302:  LDR             R0, [R0]; CTheScripts::bEnableCraneRaise ...
32A304:  STRB.W          R9, [R0]; CTheScripts::bEnableCraneRaise
32A308:  LDR.W           R0, =(_ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x32A310)
32A30C:  ADD             R0, PC; _ZN11CTheScripts17bEnableCraneLowerE_ptr
32A30E:  LDR             R0, [R0]; CTheScripts::bEnableCraneLower ...
32A310:  STRB.W          R9, [R0]; CTheScripts::bEnableCraneLower
32A314:  LDR.W           R0, =(_ZN11CTheScripts19bEnableCraneReleaseE_ptr - 0x32A31C)
32A318:  ADD             R0, PC; _ZN11CTheScripts19bEnableCraneReleaseE_ptr
32A31A:  LDR             R0, [R0]; CTheScripts::bEnableCraneRelease ...
32A31C:  STRB.W          R9, [R0]; CTheScripts::bEnableCraneRelease
32A320:  LDR.W           R0, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x32A328)
32A324:  ADD             R0, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
32A326:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair ...
32A328:  STR             R4, [R0]; CTheScripts::bDrawCrossHair
32A32A:  LDR.W           R0, =(gAllowScriptedFixedCameraCollision_ptr - 0x32A332)
32A32E:  ADD             R0, PC; gAllowScriptedFixedCameraCollision_ptr
32A330:  LDR             R0, [R0]; gAllowScriptedFixedCameraCollision
32A332:  STRB            R4, [R0]
32A334:  LDR.W           R0, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x32A33C)
32A338:  ADD             R0, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
32A33A:  LDR             R0, [R0]; CTheScripts::ScriptSphereArray ...
32A33C:  ADDS            R1, R0, #4
32A33E:  VST1.32         {D8-D9}, [R1]
32A342:  ADD.W           R1, R0, #0x1C
32A346:  VST1.32         {D8-D9}, [R1]
32A34A:  ADD.W           R1, R0, #0x34 ; '4'
32A34E:  VST1.32         {D8-D9}, [R1]
32A352:  ADD.W           R1, R0, #0x4C ; 'L'
32A356:  STRB            R4, [R0]; CTheScripts::ScriptSphereArray
32A358:  STRH.W          R9, [R0,#(word_815BD2 - 0x815BD0)]
32A35C:  STR             R4, [R0,#(dword_815BE4 - 0x815BD0)]
32A35E:  STRB            R4, [R0,#(byte_815BE8 - 0x815BD0)]
32A360:  STRH.W          R9, [R0,#(word_815BEA - 0x815BD0)]
32A364:  STR             R4, [R0,#(dword_815BFC - 0x815BD0)]
32A366:  STR             R4, [R0,#(dword_815C14 - 0x815BD0)]
32A368:  STRB.W          R4, [R0,#(byte_815C00 - 0x815BD0)]
32A36C:  STRH.W          R9, [R0,#(word_815C02 - 0x815BD0)]
32A370:  VST1.32         {D8-D9}, [R1]
32A374:  ADD.W           R1, R0, #0x64 ; 'd'
32A378:  STRH.W          R9, [R0,#(word_815C1A - 0x815BD0)]
32A37C:  STRB.W          R4, [R0,#(byte_815C18 - 0x815BD0)]
32A380:  STR             R4, [R0,#(dword_815C2C - 0x815BD0)]
32A382:  VST1.32         {D8-D9}, [R1]
32A386:  ADD.W           R1, R0, #0x7C ; '|'
32A38A:  STRH.W          R9, [R0,#(word_815C32 - 0x815BD0)]
32A38E:  STRB.W          R4, [R0,#(byte_815C30 - 0x815BD0)]
32A392:  STR             R4, [R0,#(dword_815C44 - 0x815BD0)]
32A394:  VST1.32         {D8-D9}, [R1]
32A398:  ADD.W           R1, R0, #0x94
32A39C:  STRH.W          R9, [R0,#(word_815C4A - 0x815BD0)]
32A3A0:  STRB.W          R4, [R0,#(byte_815C48 - 0x815BD0)]
32A3A4:  STR.W           R4, [R0,#(dword_815C5C - 0x815BD0)]
32A3A8:  VST1.32         {D8-D9}, [R1]
32A3AC:  ADD.W           R1, R0, #0xAC
32A3B0:  STRH.W          R9, [R0,#(word_815C62 - 0x815BD0)]
32A3B4:  STRB.W          R4, [R0,#(byte_815C60 - 0x815BD0)]
32A3B8:  STR.W           R4, [R0,#(dword_815C74 - 0x815BD0)]
32A3BC:  VST1.32         {D8-D9}, [R1]
32A3C0:  ADD.W           R1, R0, #0xC4
32A3C4:  STRH.W          R9, [R0,#(word_815C7A - 0x815BD0)]
32A3C8:  STRB.W          R4, [R0,#(byte_815C78 - 0x815BD0)]
32A3CC:  STR.W           R4, [R0,#(dword_815C8C - 0x815BD0)]
32A3D0:  VST1.32         {D8-D9}, [R1]
32A3D4:  ADD.W           R1, R0, #0xDC
32A3D8:  STRH.W          R9, [R0,#(word_815C92 - 0x815BD0)]
32A3DC:  STRB.W          R4, [R0,#(byte_815C90 - 0x815BD0)]
32A3E0:  STR.W           R4, [R0,#(dword_815CA4 - 0x815BD0)]
32A3E4:  VST1.32         {D8-D9}, [R1]
32A3E8:  ADD.W           R1, R0, #0xF4
32A3EC:  STRH.W          R9, [R0,#(word_815CAA - 0x815BD0)]
32A3F0:  STRB.W          R4, [R0,#(byte_815CA8 - 0x815BD0)]
32A3F4:  STR.W           R4, [R0,#(dword_815CBC - 0x815BD0)]
32A3F8:  VST1.32         {D8-D9}, [R1]
32A3FC:  ADD.W           R1, R0, #0x10C
32A400:  STRH.W          R9, [R0,#(word_815CC2 - 0x815BD0)]
32A404:  STRB.W          R4, [R0,#(byte_815CC0 - 0x815BD0)]
32A408:  STR.W           R4, [R0,#(dword_815CD4 - 0x815BD0)]
32A40C:  VST1.32         {D8-D9}, [R1]
32A410:  ADD.W           R1, R0, #0x124
32A414:  STRH.W          R9, [R0,#(word_815CDA - 0x815BD0)]
32A418:  STRB.W          R4, [R0,#(byte_815CD8 - 0x815BD0)]
32A41C:  STR.W           R4, [R0,#(dword_815CEC - 0x815BD0)]
32A420:  VST1.32         {D8-D9}, [R1]
32A424:  ADD.W           R1, R0, #0x13C
32A428:  STRH.W          R9, [R0,#(word_815CF2 - 0x815BD0)]
32A42C:  STRB.W          R4, [R0,#(byte_815CF0 - 0x815BD0)]
32A430:  STR.W           R4, [R0,#(dword_815D04 - 0x815BD0)]
32A434:  VST1.32         {D8-D9}, [R1]
32A438:  ADD.W           R1, R0, #0x154
32A43C:  STRH.W          R9, [R0,#(word_815D0A - 0x815BD0)]
32A440:  STRB.W          R4, [R0,#(byte_815D08 - 0x815BD0)]
32A444:  STR.W           R4, [R0,#(dword_815D1C - 0x815BD0)]
32A448:  VST1.32         {D8-D9}, [R1]
32A44C:  ADD.W           R1, R0, #0x16C
32A450:  STRH.W          R9, [R0,#(word_815D22 - 0x815BD0)]
32A454:  STRB.W          R4, [R0,#(byte_815D20 - 0x815BD0)]
32A458:  STR.W           R4, [R0,#(dword_815D34 - 0x815BD0)]
32A45C:  VST1.32         {D8-D9}, [R1]
32A460:  STRH.W          R9, [R0,#(word_815D3A - 0x815BD0)]
32A464:  MOV.W           R9, #0
32A468:  LDR.W           R1, =(RsGlobal_ptr - 0x32A478)
32A46C:  STRB.W          R4, [R0,#(byte_815D38 - 0x815BD0)]
32A470:  STR.W           R4, [R0,#(dword_815D4C - 0x815BD0)]
32A474:  ADD             R1, PC; RsGlobal_ptr
32A476:  LDR.W           R0, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x32A482)
32A47A:  LDR.W           R8, [R1]; RsGlobal
32A47E:  ADD             R0, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
32A480:  LDR             R5, [R0]; CTheScripts::IntroTextLines ...
32A482:  ADD             R0, SP, #0x40+var_34; this
32A484:  MOVW            R1, #0xC28F
32A488:  ADD.W           R11, R5, R9
32A48C:  MOVT            R1, #0x3EF5
32A490:  MOVS            R2, #0xE1; unsigned __int8
32A492:  STR.W           R1, [R5,R9]
32A496:  MOV             R1, #0x3F8F5C29
32A49E:  STR.W           R1, [R11,#4]
32A4A2:  MOVS            R1, #0xE1; unsigned __int8
32A4A4:  MOVS            R3, #0xE1; unsigned __int8
32A4A6:  STR.W           R10, [SP,#0x40+var_40]; unsigned __int8
32A4AA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
32A4AE:  LDRB.W          R1, [SP,#0x40+var_34]
32A4B2:  MOVS            R2, #0x80; unsigned __int8
32A4B4:  STRB.W          R1, [R11,#8]
32A4B8:  MOVS            R3, #0x80; unsigned __int8
32A4BA:  LDRB.W          R1, [SP,#0x40+var_33]
32A4BE:  STRB.W          R1, [R11,#9]
32A4C2:  LDRB.W          R1, [SP,#0x40+var_32]
32A4C6:  VLDR            S0, [R8,#4]
32A4CA:  STRB.W          R1, [R11,#0xA]
32A4CE:  LDRB.W          R1, [SP,#0x40+var_31]
32A4D2:  STRB.W          R1, [R11,#0xB]
32A4D6:  MOVS            R1, #0x80
32A4D8:  STR.W           R4, [R11,#0xC]
32A4DC:  STRB.W          R4, [R11,#0x24]
32A4E0:  VCVT.F32.S32    S0, S0
32A4E4:  STR             R1, [SP,#0x40+var_40]; unsigned __int8
32A4E6:  MOVS            R1, #0x80; unsigned __int8
32A4E8:  VSTR            S0, [R11,#0x10]
32A4EC:  VSTR            S0, [R11,#0x14]
32A4F0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
32A4F4:  LDRB.W          R1, [SP,#0x40+var_34]
32A4F8:  MOVS            R2, #0; unsigned __int8
32A4FA:  STRB.W          R1, [R11,#0x18]
32A4FE:  MOVS            R3, #0; unsigned __int8
32A500:  LDRB.W          R1, [SP,#0x40+var_33]
32A504:  STRB.W          R1, [R11,#0x19]
32A508:  LDRB.W          R1, [SP,#0x40+var_32]
32A50C:  STRB.W          R1, [R11,#0x1A]
32A510:  LDRB.W          R1, [SP,#0x40+var_31]
32A514:  STRB.W          R1, [R11,#0x1B]
32A518:  MOVS            R1, #0; unsigned __int8
32A51A:  STRB.W          R6, [R11,#0x1C]
32A51E:  STR.W           R10, [SP,#0x40+var_40]; unsigned __int8
32A522:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
32A526:  LDRB.W          R1, [SP,#0x40+var_34]
32A52A:  ADD.W           R9, R9, #0x44 ; 'D'
32A52E:  STRB.W          R1, [R11,#0x1D]
32A532:  CMP.W           R9, #0x1980
32A536:  LDRB.W          R1, [SP,#0x40+var_33]
32A53A:  STRB.W          R1, [R11,#0x1E]
32A53E:  LDRB.W          R1, [SP,#0x40+var_32]
32A542:  STRB.W          R1, [R11,#0x1F]
32A546:  LDRB.W          R1, [SP,#0x40+var_31]
32A54A:  STRB.W          R1, [R11,#0x20]
32A54E:  ADD.W           R1, R11, #0x2C ; ','
32A552:  VST1.32         {D8-D9}, [R1]
32A556:  MOV.W           R1, #2
32A55A:  STRB.W          R4, [R11,#0x23]
32A55E:  STRH.W          R1, [R11,#0x21]
32A562:  MOV.W           R1, #0xFFFFFFFF
32A566:  STR.W           R6, [R11,#0x28]
32A56A:  STRD.W          R1, R1, [R11,#0x3C]
32A56E:  BNE             loc_32A484
32A570:  LDR.W           R0, =(_ZN11CTheScripts15UseTextCommandsE_ptr - 0x32A584)
32A574:  MOV.W           R10, #0
32A578:  LDR.W           R6, =(_ZN11CTheScripts21bUseMessageFormattingE_ptr - 0x32A58E)
32A57C:  VMOV.I32        Q4, #0
32A580:  ADD             R0, PC; _ZN11CTheScripts15UseTextCommandsE_ptr
32A582:  LDR.W           R1, =(_ZN11CTheScripts13MessageCentreE_ptr - 0x32A592)
32A586:  LDR.W           R2, =(_ZN11CTheScripts12MessageWidthE_ptr - 0x32A598)
32A58A:  ADD             R6, PC; _ZN11CTheScripts21bUseMessageFormattingE_ptr
32A58C:  LDR             R0, [R0]; CTheScripts::UseTextCommands ...
32A58E:  ADD             R1, PC; _ZN11CTheScripts13MessageCentreE_ptr
32A590:  LDR.W           R3, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x32A5A4)
32A594:  ADD             R2, PC; _ZN11CTheScripts12MessageWidthE_ptr
32A596:  LDR             R6, [R6]; CTheScripts::bUseMessageFormatting ...
32A598:  MOV.W           R8, #0xFF
32A59C:  STRB.W          R10, [R0]; CTheScripts::UseTextCommands
32A5A0:  ADD             R3, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
32A5A2:  LDR.W           R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x32A5B4)
32A5A6:  MOV.W           R9, #3
32A5AA:  LDR             R1, [R1]; CTheScripts::MessageCentre ...
32A5AC:  MOVW            R11, #0xFFFF
32A5B0:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
32A5B2:  LDR             R2, [R2]; CTheScripts::MessageWidth ...
32A5B4:  LDR             R3, [R3]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
32A5B6:  LDR             R5, [R0]; CTheScripts::IntroRectangles ...
32A5B8:  ADD             R0, SP, #0x40+var_34; this
32A5BA:  STRB.W          R10, [R6]; CTheScripts::bUseMessageFormatting
32A5BE:  MOVS            R6, #0
32A5C0:  STRH.W          R10, [R3]; CTheScripts::NumberOfIntroTextLinesThisFrame
32A5C4:  STRH.W          R10, [R1]; CTheScripts::MessageCentre
32A5C8:  STRH.W          R10, [R2]; CTheScripts::MessageWidth
32A5CC:  ADDS            R4, R5, R6
32A5CE:  STR.W           R10, [R5,R6]
32A5D2:  ADD.W           R1, R4, #8
32A5D6:  STRB.W          R10, [R4,#4]
32A5DA:  MOVS            R2, #0xFF; unsigned __int8
32A5DC:  STRH.W          R11, [R4,#6]
32A5E0:  MOVS            R3, #0xFF; unsigned __int8
32A5E2:  STR.W           R10, [R4,#0x18]
32A5E6:  VST1.32         {D8-D9}, [R1]
32A5EA:  MOVS            R1, #0xFF; unsigned __int8
32A5EC:  STR.W           R8, [SP,#0x40+var_40]; unsigned __int8
32A5F0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
32A5F4:  LDRB.W          R1, [SP,#0x40+var_34]
32A5F8:  ADDS            R6, #0x3C ; '<'
32A5FA:  STRB            R1, [R4,#0x1C]
32A5FC:  CMP.W           R6, #0x1E00
32A600:  LDRB.W          R1, [SP,#0x40+var_33]
32A604:  STRB            R1, [R4,#0x1D]
32A606:  LDRB.W          R1, [SP,#0x40+var_32]
32A60A:  STRB            R1, [R4,#0x1E]
32A60C:  LDRB.W          R1, [SP,#0x40+var_31]
32A610:  STRB            R1, [R4,#0x1F]
32A612:  STR.W           R9, [R4,#0x38]
32A616:  STRB.W          R10, [R4,#0x20]
32A61A:  BNE             loc_32A5CC
32A61C:  LDR.W           R0, =(_ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x32A626)
32A620:  MOVS            R4, #0
32A622:  ADD             R0, PC; _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr
32A624:  LDR             R0, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame ...
32A626:  STRH            R4, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame
32A628:  LDR.W           R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x32A630)
32A62C:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
32A62E:  LDR             R5, [R0]; CTheScripts::ScriptSprites ...
32A630:  ADDS            R0, R5, R4; this
32A632:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
32A636:  ADDS            R4, #4
32A638:  CMP.W           R4, #0x200
32A63C:  BNE             loc_32A630
32A63E:  LDR.W           R0, =(aScript_0 - 0x32A646); "script"
32A642:  ADD             R0, PC; "script"
32A644:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
32A648:  ADDS            R1, R0, #1
32A64A:  BEQ             loc_32A668
32A64C:  LDR.W           R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x32A658)
32A650:  RSB.W           R2, R0, R0,LSL#3
32A654:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
32A656:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
32A658:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
32A65A:  LDR             R1, [R1]
32A65C:  LDR.W           R1, [R1,R2,LSL#3]; int
32A660:  CMP             R1, #0
32A662:  IT NE
32A664:  BLXNE           j__ZN9CTxdStore9RemoveTxdEi; CTxdStore::RemoveTxd(int)
32A668:  LDR.W           R1, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x32A678)
32A66C:  MOVS            R0, #0
32A66E:  MOV.W           R2, #0xFFFFFFFF
32A672:  MOVS            R3, #0
32A674:  ADD             R1, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
32A676:  LDR             R1, [R1]; CTheScripts::BuildingSwapArray ...
32A678:  STR             R0, [R1,R3]
32A67A:  ADDS            R6, R1, R3
32A67C:  ADDS            R3, #0xC
32A67E:  CMP.W           R3, #0x12C
32A682:  STRD.W          R2, R2, [R6,#4]
32A686:  BNE             loc_32A678
32A688:  LDR.W           R0, =(_ZN11CTheScripts24InvisibilitySettingArrayE_ptr - 0x32A694)
32A68C:  VMOV.I32        Q8, #0
32A690:  ADD             R0, PC; _ZN11CTheScripts24InvisibilitySettingArrayE_ptr
32A692:  LDR             R0, [R0]; CTheScripts::InvisibilitySettingArray ...
32A694:  ADD.W           R1, R0, #0x40 ; '@'
32A698:  VST1.32         {D16-D17}, [R1]
32A69C:  ADD.W           R1, R0, #0x30 ; '0'
32A6A0:  VST1.32         {D16-D17}, [R1]
32A6A4:  ADD.W           R1, R0, #0x20 ; ' '
32A6A8:  VST1.32         {D16-D17}, [R1]
32A6AC:  VST1.32         {D16-D17}, [R0]!; this
32A6B0:  VST1.32         {D16-D17}, [R0]
32A6B4:  BLX             j__ZN11CTheScripts27ClearAllSuppressedCarModelsEv; CTheScripts::ClearAllSuppressedCarModels(void)
32A6B8:  BLX             j__ZN11CTheScripts36ClearAllVehicleModelsBlockedByScriptEv; CTheScripts::ClearAllVehicleModelsBlockedByScript(void)
32A6BC:  BLX             j__ZN11CTheScripts30InitialiseAllConnectLodObjectsEv; CTheScripts::InitialiseAllConnectLodObjects(void)
32A6C0:  BLX             j__ZN11CTheScripts47InitialiseSpecialAnimGroupsAttachedToCharModelsEv; CTheScripts::InitialiseSpecialAnimGroupsAttachedToCharModels(void)
32A6C4:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x32A6D2)
32A6C8:  MOVS            R0, #0
32A6CA:  MOVS            R2, #1
32A6CC:  MOVS            R3, #0
32A6CE:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
32A6D0:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
32A6D2:  STRB.W          R0, [R1,R3,LSL#3]
32A6D6:  ADD.W           R6, R1, R3,LSL#3
32A6DA:  ADDS            R3, #1
32A6DC:  CMP             R3, #0x20 ; ' '
32A6DE:  STRH            R2, [R6,#2]
32A6E0:  STR             R0, [R6,#4]
32A6E2:  BNE             loc_32A6D2
32A6E4:  LDR.W           R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x32A6F8)
32A6E8:  VMOV.I32        Q8, #0
32A6EC:  LDR.W           R0, =(_ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr - 0x32A6FE)
32A6F0:  MOV.W           R4, #0x100
32A6F4:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
32A6F6:  LDR.W           R3, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x32A714)
32A6FA:  ADD             R0, PC; _ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr
32A6FC:  LDR.W           R5, =(_ZN11CTheScripts26NumberOfScriptSearchLightsE_ptr - 0x32A718)
32A700:  LDR             R6, [R1]; CTheScripts::ScriptSearchLightArray ...
32A702:  MOV.W           R1, #0x10000
32A706:  LDR.W           R12, [R0]; CTheScripts::NumberOfScriptCheckpoints ...
32A70A:  MOVS            R0, #(stderr+1); this
32A70C:  ADD.W           R2, R6, #0x48 ; 'H'
32A710:  ADD             R3, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
32A712:  STRH            R0, [R6,#(word_81A11C - 0x81A118)]
32A714:  ADD             R5, PC; _ZN11CTheScripts26NumberOfScriptSearchLightsE_ptr
32A716:  STR             R1, [R6]; CTheScripts::ScriptSearchLightArray
32A718:  MOVS            R1, #0
32A71A:  STRB.W          R1, [R6,#(byte_81A194 - 0x81A118)]
32A71E:  STRH.W          R0, [R6,#(word_81A198 - 0x81A118)]
32A722:  STRB.W          R1, [R6,#(byte_81A197 - 0x81A118)]
32A726:  STRH.W          R4, [R6,#(word_81A195 - 0x81A118)]
32A72A:  STRH.W          R0, [R6,#(word_81A214 - 0x81A118)]
32A72E:  STRB.W          R1, [R6,#(byte_81A213 - 0x81A118)]
32A732:  STRH.W          R4, [R6,#(word_81A211 - 0x81A118)]
32A736:  STRB.W          R1, [R6,#(byte_81A210 - 0x81A118)]
32A73A:  VST1.32         {D16-D17}, [R2]
32A73E:  ADD.W           R2, R6, #0x38 ; '8'
32A742:  VST1.32         {D16-D17}, [R2]
32A746:  ADD.W           R2, R6, #0x28 ; '('
32A74A:  VST1.32         {D16-D17}, [R2]
32A74E:  ADD.W           R2, R6, #0x18
32A752:  VST1.32         {D16-D17}, [R2]
32A756:  ADD.W           R2, R6, #8
32A75A:  VST1.32         {D16-D17}, [R2]
32A75E:  ADD.W           R2, R6, #0xC4
32A762:  VST1.32         {D16-D17}, [R2]
32A766:  ADD.W           R2, R6, #0xB4
32A76A:  VST1.32         {D16-D17}, [R2]
32A76E:  ADD.W           R2, R6, #0xA4
32A772:  VST1.32         {D16-D17}, [R2]
32A776:  ADD.W           R2, R6, #0x94
32A77A:  VST1.32         {D16-D17}, [R2]
32A77E:  ADD.W           R2, R6, #0x84
32A782:  VST1.32         {D16-D17}, [R2]
32A786:  ADD.W           R2, R6, #0x140
32A78A:  VST1.32         {D16-D17}, [R2]
32A78E:  ADD.W           R2, R6, #0x130
32A792:  VST1.32         {D16-D17}, [R2]
32A796:  ADD.W           R2, R6, #0x120
32A79A:  VST1.32         {D16-D17}, [R2]
32A79E:  ADD.W           R2, R6, #0x110
32A7A2:  VST1.32         {D16-D17}, [R2]
32A7A6:  ADD.W           R2, R6, #0x100
32A7AA:  VST1.32         {D16-D17}, [R2]
32A7AE:  ADD.W           R2, R6, #0x1BC
32A7B2:  VST1.32         {D16-D17}, [R2]
32A7B6:  ADD.W           R2, R6, #0x1AC
32A7BA:  VST1.32         {D16-D17}, [R2]
32A7BE:  ADD.W           R2, R6, #0x19C
32A7C2:  VST1.32         {D16-D17}, [R2]
32A7C6:  ADD.W           R2, R6, #0x18C
32A7CA:  VST1.32         {D16-D17}, [R2]
32A7CE:  ADD.W           R2, R6, #0x17C
32A7D2:  VST1.32         {D16-D17}, [R2]
32A7D6:  ADD.W           R2, R6, #0x238
32A7DA:  STRH.W          R0, [R6,#(word_81A290 - 0x81A118)]
32A7DE:  STRB.W          R1, [R6,#(byte_81A28F - 0x81A118)]
32A7E2:  STRH.W          R4, [R6,#(word_81A28D - 0x81A118)]
32A7E6:  STRB.W          R1, [R6,#(byte_81A28C - 0x81A118)]
32A7EA:  VST1.32         {D16-D17}, [R2]
32A7EE:  ADD.W           R2, R6, #0x228
32A7F2:  VST1.32         {D16-D17}, [R2]
32A7F6:  ADD.W           R2, R6, #0x218
32A7FA:  VST1.32         {D16-D17}, [R2]
32A7FE:  ADD.W           R2, R6, #0x208
32A802:  VST1.32         {D16-D17}, [R2]
32A806:  ADD.W           R2, R6, #0x1F8
32A80A:  VST1.32         {D16-D17}, [R2]
32A80E:  ADD.W           R2, R6, #0x2B4
32A812:  STRH.W          R0, [R6,#(word_81A30C - 0x81A118)]
32A816:  STRB.W          R1, [R6,#(byte_81A30B - 0x81A118)]
32A81A:  STRH.W          R4, [R6,#(word_81A309 - 0x81A118)]
32A81E:  STRB.W          R1, [R6,#(byte_81A308 - 0x81A118)]
32A822:  VST1.32         {D16-D17}, [R2]
32A826:  ADD.W           R2, R6, #0x2A4
32A82A:  VST1.32         {D16-D17}, [R2]
32A82E:  ADD.W           R2, R6, #0x294
32A832:  VST1.32         {D16-D17}, [R2]
32A836:  ADD.W           R2, R6, #0x284
32A83A:  VST1.32         {D16-D17}, [R2]
32A83E:  ADD.W           R2, R6, #0x274
32A842:  VST1.32         {D16-D17}, [R2]
32A846:  ADD.W           R2, R6, #0x330
32A84A:  STRH.W          R0, [R6,#(word_81A388 - 0x81A118)]
32A84E:  STRB.W          R1, [R6,#(byte_81A387 - 0x81A118)]
32A852:  STRH.W          R4, [R6,#(word_81A385 - 0x81A118)]
32A856:  STRB.W          R1, [R6,#(byte_81A384 - 0x81A118)]
32A85A:  VST1.32         {D16-D17}, [R2]
32A85E:  ADD.W           R2, R6, #0x320
32A862:  VST1.32         {D16-D17}, [R2]
32A866:  ADD.W           R2, R6, #0x310
32A86A:  VST1.32         {D16-D17}, [R2]
32A86E:  ADD.W           R2, R6, #0x300
32A872:  VST1.32         {D16-D17}, [R2]
32A876:  ADD.W           R2, R6, #0x2F0
32A87A:  VST1.32         {D16-D17}, [R2]
32A87E:  ADD.W           R2, R6, #0x3AC
32A882:  STRH.W          R0, [R6,#(word_81A404 - 0x81A118)]
32A886:  STRB.W          R1, [R6,#(byte_81A403 - 0x81A118)]
32A88A:  STRH.W          R4, [R6,#(word_81A401 - 0x81A118)]
32A88E:  STRB.W          R1, [R6,#(byte_81A400 - 0x81A118)]
32A892:  VST1.32         {D16-D17}, [R2]
32A896:  ADD.W           R2, R6, #0x39C
32A89A:  VST1.32         {D16-D17}, [R2]
32A89E:  ADD.W           R2, R6, #0x38C
32A8A2:  VST1.32         {D16-D17}, [R2]
32A8A6:  ADD.W           R2, R6, #0x37C
32A8AA:  VST1.32         {D16-D17}, [R2]
32A8AE:  ADD.W           R2, R6, #0x36C
32A8B2:  VST1.32         {D16-D17}, [R2]
32A8B6:  LDR             R2, =(_ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr - 0x32A8BE)
32A8B8:  LDR             R3, [R3]; CTheScripts::ScriptCheckpointArray ...
32A8BA:  ADD             R2, PC; _ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr
32A8BC:  LDR             R5, [R5]; CTheScripts::NumberOfScriptSearchLights ...
32A8BE:  STRH.W          R0, [R6,#(word_81A480 - 0x81A118)]
32A8C2:  LDR             R2, [R2]; CTheScripts::ScriptSequenceTaskArray ...
32A8C4:  STRB            R1, [R3]; CTheScripts::ScriptCheckpointArray
32A8C6:  STRH            R0, [R3,#(word_81A4FE - 0x81A4FC)]
32A8C8:  STR             R1, [R3,#(dword_81A500 - 0x81A4FC)]
32A8CA:  STRB            R1, [R3,#(byte_81A504 - 0x81A4FC)]
32A8CC:  STR             R1, [R3,#(dword_81A508 - 0x81A4FC)]
32A8CE:  STRH            R0, [R3,#(word_81A506 - 0x81A4FC)]
32A8D0:  STR             R1, [R3,#(dword_81A510 - 0x81A4FC)]
32A8D2:  STRH            R0, [R3,#(word_81A50E - 0x81A4FC)]
32A8D4:  STRB            R1, [R3,#(byte_81A50C - 0x81A4FC)]
32A8D6:  STR             R1, [R3,#(dword_81A518 - 0x81A4FC)]
32A8D8:  STRH            R0, [R3,#(word_81A516 - 0x81A4FC)]
32A8DA:  STRB            R1, [R3,#(byte_81A514 - 0x81A4FC)]
32A8DC:  STRH            R0, [R3,#(word_81A51E - 0x81A4FC)]
32A8DE:  STR             R1, [R3,#(dword_81A520 - 0x81A4FC)]
32A8E0:  STRB.W          R1, [R3,#(byte_81A51C - 0x81A4FC)]
32A8E4:  STR             R1, [R3,#(dword_81A528 - 0x81A4FC)]
32A8E6:  STRH            R0, [R3,#(word_81A526 - 0x81A4FC)]
32A8E8:  STRB.W          R1, [R3,#(byte_81A524 - 0x81A4FC)]
32A8EC:  STR             R1, [R3,#(dword_81A530 - 0x81A4FC)]
32A8EE:  STRH            R0, [R3,#(word_81A52E - 0x81A4FC)]
32A8F0:  STRB.W          R1, [R3,#(byte_81A52C - 0x81A4FC)]
32A8F4:  STR             R1, [R3,#(dword_81A538 - 0x81A4FC)]
32A8F6:  STRH            R0, [R3,#(word_81A536 - 0x81A4FC)]
32A8F8:  STRB.W          R1, [R3,#(byte_81A534 - 0x81A4FC)]
32A8FC:  STR             R1, [R3,#(dword_81A540 - 0x81A4FC)]
32A8FE:  STRH.W          R0, [R3,#(word_81A53E - 0x81A4FC)]
32A902:  STRB.W          R1, [R3,#(byte_81A53C - 0x81A4FC)]
32A906:  STR             R1, [R3,#(dword_81A548 - 0x81A4FC)]
32A908:  STRH.W          R0, [R3,#(word_81A546 - 0x81A4FC)]
32A90C:  STRB.W          R1, [R3,#(byte_81A544 - 0x81A4FC)]
32A910:  STR             R1, [R3,#(dword_81A550 - 0x81A4FC)]
32A912:  STRH.W          R0, [R3,#(word_81A54E - 0x81A4FC)]
32A916:  STRB.W          R1, [R3,#(byte_81A54C - 0x81A4FC)]
32A91A:  STR             R1, [R3,#(dword_81A558 - 0x81A4FC)]
32A91C:  STRH.W          R0, [R3,#(word_81A556 - 0x81A4FC)]
32A920:  STRB.W          R1, [R3,#(byte_81A554 - 0x81A4FC)]
32A924:  STR             R1, [R3,#(dword_81A560 - 0x81A4FC)]
32A926:  STRH.W          R0, [R3,#(word_81A55E - 0x81A4FC)]
32A92A:  STRB.W          R1, [R3,#(byte_81A55C - 0x81A4FC)]
32A92E:  STR             R1, [R3,#(dword_81A568 - 0x81A4FC)]
32A930:  STRH.W          R0, [R3,#(word_81A566 - 0x81A4FC)]
32A934:  STRB.W          R1, [R3,#(byte_81A564 - 0x81A4FC)]
32A938:  STR             R1, [R3,#(dword_81A570 - 0x81A4FC)]
32A93A:  STRH.W          R0, [R3,#(word_81A56E - 0x81A4FC)]
32A93E:  STRB.W          R1, [R3,#(byte_81A56C - 0x81A4FC)]
32A942:  STR             R1, [R3,#(dword_81A578 - 0x81A4FC)]
32A944:  STRH.W          R0, [R3,#(word_81A576 - 0x81A4FC)]
32A948:  STRB.W          R1, [R3,#(byte_81A574 - 0x81A4FC)]
32A94C:  STR.W           R1, [R3,#(dword_81A580 - 0x81A4FC)]
32A950:  STRH.W          R0, [R3,#(word_81A57E - 0x81A4FC)]
32A954:  STRB.W          R1, [R3,#(byte_81A57C - 0x81A4FC)]
32A958:  STR.W           R1, [R3,#(dword_81A588 - 0x81A4FC)]
32A95C:  STRH.W          R0, [R3,#(word_81A586 - 0x81A4FC)]
32A960:  STRB.W          R1, [R3,#(byte_81A584 - 0x81A4FC)]
32A964:  STR.W           R1, [R3,#(dword_81A590 - 0x81A4FC)]
32A968:  STRH.W          R0, [R3,#(word_81A58E - 0x81A4FC)]
32A96C:  STRB.W          R1, [R3,#(byte_81A58C - 0x81A4FC)]
32A970:  STR.W           R1, [R3,#(dword_81A598 - 0x81A4FC)]
32A974:  STRH.W          R0, [R3,#(word_81A596 - 0x81A4FC)]
32A978:  STRB.W          R1, [R3,#(byte_81A594 - 0x81A4FC)]
32A97C:  MOVS            R3, #0
32A97E:  STRB.W          R1, [R6,#(byte_81A47F - 0x81A118)]
32A982:  STRH.W          R4, [R6,#(word_81A47D - 0x81A118)]
32A986:  STRB.W          R1, [R6,#(byte_81A47C - 0x81A118)]
32A98A:  STRH            R1, [R5]; CTheScripts::NumberOfScriptSearchLights
32A98C:  STRH.W          R1, [R12]; CTheScripts::NumberOfScriptCheckpoints
32A990:  STRB.W          R1, [R2,R3,LSL#2]
32A994:  ADD.W           R6, R2, R3,LSL#2
32A998:  ADDS            R3, #1
32A99A:  CMP             R3, #0x40 ; '@'
32A99C:  STRH            R0, [R6,#2]
32A99E:  BNE             loc_32A990
32A9A0:  BLX             j__ZN18CScripted2dEffects4InitEv; CScripted2dEffects::Init(void)
32A9A4:  BLX             j__ZN14CTaskSequences4InitEv; CTaskSequences::Init(void)
32A9A8:  BLX             j__ZN10CPedGroups4InitEv; CPedGroups::Init(void)
32A9AC:  BLX             j__ZN24CInformFriendsEventQueue4InitEv; CInformFriendsEventQueue::Init(void)
32A9B0:  BLX             j__ZN22CInformGroupEventQueue4InitEv; CInformGroupEventQueue::Init(void)
32A9B4:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x32A9BA)
32A9B6:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
32A9B8:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
32A9BA:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
32A9BC:  CBNZ            R0, loc_32A9D2
32A9BE:  MOVW            R0, #0xF1C0; unsigned int
32A9C2:  BLX             _Znwj; operator new(uint)
32A9C6:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
32A9CA:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x32A9D0)
32A9CC:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
32A9CE:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
32A9D0:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
32A9D2:  ADD             SP, SP, #0x10
32A9D4:  VPOP            {D8-D9}
32A9D8:  ADD             SP, SP, #4
32A9DA:  POP.W           {R8-R11}
32A9DE:  POP             {R4-R7,PC}
