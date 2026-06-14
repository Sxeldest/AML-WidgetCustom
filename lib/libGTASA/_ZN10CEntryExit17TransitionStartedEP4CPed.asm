; =========================================================
; Game Engine Function: _ZN10CEntryExit17TransitionStartedEP4CPed
; Address            : 0x305C90 - 0x306034
; =========================================================

305C90:  PUSH            {R4-R7,LR}
305C92:  ADD             R7, SP, #0xC
305C94:  PUSH.W          {R8-R10}
305C98:  VPUSH           {D8-D13}
305C9C:  SUB             SP, SP, #0x48
305C9E:  MOV             R5, R0
305CA0:  MOV             R4, R1
305CA2:  LDRB.W          R0, [R5,#0x31]
305CA6:  LSLS            R0, R0, #0x19
305CA8:  MOV.W           R0, #0
305CAC:  BPL             loc_305D14
305CAE:  LDR             R1, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305CB4)
305CB0:  ADD             R1, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
305CB2:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState ...
305CB4:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState
305CB6:  CBNZ            R1, loc_305D14
305CB8:  LDRB.W          R0, [R5,#0x34]; this
305CBC:  LDRB.W          R1, [R5,#0x35]; unsigned __int8
305CC0:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
305CC4:  CMP             R0, #1
305CC6:  BNE             loc_305D12
305CC8:  LDRB.W          R0, [R4,#0x485]
305CCC:  LSLS            R0, R0, #0x1F
305CCE:  BNE             loc_305CE8
305CD0:  LDRB.W          R0, [R5,#0x31]
305CD4:  LSLS            R0, R0, #0x1C
305CD6:  BMI             loc_305D12
305CD8:  LDR             R0, [R5,#0x38]
305CDA:  CBZ             R0, loc_305D20
305CDC:  LDR             R1, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305CE2)
305CDE:  ADD             R1, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305CE0:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint ...
305CE2:  STR             R0, [R1]; CEntryExit::ms_spawnPoint
305CE4:  ADDS            R0, #0x38 ; '8'
305CE6:  B               loc_305D26
305CE8:  LDR.W           R1, [R4,#0x590]
305CEC:  LDR.W           R0, [R1,#0x5A0]
305CF0:  CMP             R0, #9
305CF2:  IT NE
305CF4:  CMPNE           R0, #0
305CF6:  BNE             loc_305D12
305CF8:  LDR.W           R1, [R1,#0x388]
305CFC:  LDRB.W          R1, [R1,#0xCC]
305D00:  LSLS            R1, R1, #0x1C
305D02:  BMI             loc_305D12
305D04:  LDRH            R1, [R5,#0x30]
305D06:  TST.W           R1, #0x20
305D0A:  IT EQ
305D0C:  CMPEQ           R0, #0
305D0E:  BNE.W           loc_305FAC
305D12:  MOVS            R0, #0
305D14:  ADD             SP, SP, #0x48 ; 'H'
305D16:  VPOP            {D8-D13}
305D1A:  POP.W           {R8-R10}
305D1E:  POP             {R4-R7,PC}
305D20:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305D26)
305D22:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305D24:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305D26:  STR             R5, [R0]; CEntryExit::ms_spawnPoint
305D28:  VMOV.F32        S8, #0.5
305D2C:  VLDR            S0, [R5,#8]
305D30:  VLDR            S4, [R5,#0x10]
305D34:  VLDR            S2, [R5,#0xC]
305D38:  VLDR            S6, [R5,#0x14]
305D3C:  VADD.F32        S0, S0, S4
305D40:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305D4C)
305D42:  VADD.F32        S2, S6, S2
305D46:  LDR             R1, [R5,#0x18]
305D48:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305D4A:  STR             R1, [SP,#0x90+var_4C]
305D4C:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305D4E:  VMOV            S20, R1
305D52:  VMUL.F32        S18, S0, S8
305D56:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305D58:  VMUL.F32        S16, S2, S8
305D5C:  VSTR            S16, [SP,#0x90+var_50]
305D60:  VSTR            S18, [SP,#0x90+var_54]
305D64:  VLDR            S0, [R0,#0x20]
305D68:  VLDR            S2, [R0,#0x24]
305D6C:  VLDR            S4, [R0,#0x28]
305D70:  VSUB.F32        S22, S0, S18
305D74:  VSUB.F32        S24, S2, S16
305D78:  MOV             R0, R4; this
305D7A:  VSUB.F32        S26, S4, S20
305D7E:  VSTR            S24, [SP,#0x90+var_5C]
305D82:  VSTR            S22, [SP,#0x90+var_60]
305D86:  VSTR            S26, [SP,#0x90+var_58]
305D8A:  BLX             j__ZN10CPlayerPed21CanPlayerStartMissionEv; CPlayerPed::CanPlayerStartMission(void)
305D8E:  MOV             R1, R0
305D90:  MOVS            R0, #0
305D92:  CMP             R1, #0
305D94:  BEQ             loc_305D14
305D96:  VMUL.F32        S0, S24, S24
305D9A:  LDR             R1, =(_ZN10CEntryExit8ms_pDoorE_ptr - 0x305DAA)
305D9C:  VMUL.F32        S2, S22, S22
305DA0:  LDRH            R2, [R5,#0x30]
305DA2:  VMUL.F32        S4, S26, S26
305DA6:  ADD             R1, PC; _ZN10CEntryExit8ms_pDoorE_ptr
305DA8:  ADDW            R9, R4, #0x484
305DAC:  ORR.W           R2, R2, #0x2000
305DB0:  LDR             R1, [R1]; CEntryExit::ms_pDoor ...
305DB2:  STRH            R2, [R5,#0x30]
305DB4:  STR             R0, [R1]; CEntryExit::ms_pDoor
305DB6:  VADD.F32        S0, S2, S0
305DBA:  LDR.W           R1, [R9,#8]
305DBE:  LDR.W           R0, [R9]
305DC2:  BIC.W           R1, R1, #0x4000000
305DC6:  STR.W           R1, [R9,#8]
305DCA:  TST.W           R0, #0x100
305DCE:  ITTT EQ
305DD0:  LDRHEQ          R0, [R5,#0x30]
305DD2:  MOVWEQ          R1, #0x202
305DD6:  ANDSEQ.W        R0, R0, R1
305DDA:  VADD.F32        S0, S0, S4
305DDE:  VSQRT.F32       S0, S0
305DE2:  BNE.W           loc_305F40
305DE6:  VMOV.F32        S2, #10.0
305DEA:  LDR             R0, =(_ZN10CEntryExit11ms_bWarpingE_ptr - 0x305DF6)
305DEC:  MOVS            R1, #0
305DEE:  MOV.W           R10, #0
305DF2:  ADD             R0, PC; _ZN10CEntryExit11ms_bWarpingE_ptr
305DF4:  LDR             R0, [R0]; CEntryExit::ms_bWarping ...
305DF6:  VCMPE.F32       S0, S2
305DFA:  VMRS            APSR_nzcv, FPSCR
305DFE:  IT GT
305E00:  MOVGT           R1, #1
305E02:  STRB            R1, [R0]; CEntryExit::ms_bWarping
305E04:  ADD             R0, SP, #0x90+var_60; this
305E06:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
305E0A:  MOVS            R1, #0
305E0C:  MOV             R0, R5; this
305E0E:  MOVT            R1, #0x4120; CEntryExit *
305E12:  BLX             j__ZN17CEntryExitManager15FindNearestDoorERK10CEntryExitf; CEntryExitManager::FindNearestDoor(CEntryExit const&,float)
305E16:  MOV             R6, R0
305E18:  CMP             R6, #0
305E1A:  BEQ.W           loc_305FBA
305E1E:  MOVS            R0, #dword_38; this
305E20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
305E24:  MOV             R1, R6; CObject *
305E26:  MOV             R5, R0
305E28:  BLX             j__ZN27CTaskComplexGotoDoorAndOpenC2EP7CObject; CTaskComplexGotoDoorAndOpen::CTaskComplexGotoDoorAndOpen(CObject *)
305E2C:  MOV             R8, SP
305E2E:  MOVS            R1, #3; int
305E30:  MOV             R0, R8; this
305E32:  MOV             R2, R5; CTask *
305E34:  MOVS            R3, #0; bool
305E36:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
305E3A:  LDR.W           R0, [R4,#0x440]
305E3E:  MOV             R1, R8; CEvent *
305E40:  MOVS            R2, #0; bool
305E42:  ADDS            R0, #0x68 ; 'h'; this
305E44:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
305E48:  LDR             R0, =(_ZN10CEntryExit8ms_pDoorE_ptr - 0x305E52)
305E4A:  VLDR            S0, [SP,#0x90+var_54]
305E4E:  ADD             R0, PC; _ZN10CEntryExit8ms_pDoorE_ptr
305E50:  VLDR            S2, [SP,#0x90+var_50]
305E54:  LDR             R0, [R0]; CEntryExit::ms_pDoor ...
305E56:  STR             R6, [R0]; CEntryExit::ms_pDoor
305E58:  LDR             R0, [R6,#0x14]
305E5A:  ADD.W           R1, R0, #0x30 ; '0'
305E5E:  CMP             R0, #0
305E60:  IT EQ
305E62:  ADDEQ           R1, R6, #4
305E64:  ADD             R0, SP, #0x90+var_60; this
305E66:  VLDR            S4, [R1]
305E6A:  VLDR            S6, [R1,#4]
305E6E:  VSUB.F32        S0, S4, S0
305E72:  STR.W           R10, [SP,#0x90+var_58]
305E76:  VSUB.F32        S2, S6, S2
305E7A:  VSTR            S0, [SP,#0x90+var_60]
305E7E:  VSTR            S2, [SP,#0x90+var_5C]
305E82:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
305E86:  MOV             R0, R8; this
305E88:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
305E8C:  VMOV.F32        S2, #3.0
305E90:  VLDR            S4, [SP,#0x90+var_60]
305E94:  VLDR            S12, [SP,#0x90+var_54]
305E98:  VLDR            S8, [SP,#0x90+var_58]
305E9C:  VADD.F32        S0, S4, S12
305EA0:  VLDR            S5, =-2229.0
305EA4:  VLDR            S6, [SP,#0x90+var_5C]
305EA8:  VLDR            S1, [SP,#0x90+var_4C]
305EAC:  VLDR            S14, [SP,#0x90+var_50]
305EB0:  VMUL.F32        S10, S8, S2
305EB4:  VMUL.F32        S3, S6, S2
305EB8:  VMUL.F32        S2, S4, S2
305EBC:  VADD.F32        S5, S0, S5
305EC0:  VMOV.F32        S4, #1.0
305EC4:  VSUB.F32        S10, S1, S10
305EC8:  VSUB.F32        S3, S14, S3
305ECC:  VSUB.F32        S12, S12, S2
305ED0:  VADD.F32        S2, S6, S14
305ED4:  VADD.F32        S6, S8, S1
305ED8:  VABS.F32        S8, S5
305EDC:  VADD.F32        S10, S10, S4
305EE0:  VSTR            S3, [SP,#0x90+var_68]
305EE4:  VSTR            S12, [SP,#0x90+var_6C]
305EE8:  VSTR            S2, [SP,#0x90+var_74]
305EEC:  VSTR            S0, [SP,#0x90+var_78]
305EF0:  VCMPE.F32       S8, S4
305EF4:  VSTR            S6, [SP,#0x90+var_70]
305EF8:  VMRS            APSR_nzcv, FPSCR
305EFC:  VSTR            S10, [SP,#0x90+var_64]
305F00:  BGE             loc_305F1A
305F02:  VMOV.F32        S4, #-0.5
305F06:  VMOV.F32        S6, #1.875
305F0A:  VADD.F32        S2, S2, S4
305F0E:  VADD.F32        S0, S0, S6
305F12:  VSTR            S2, [SP,#0x90+var_74]
305F16:  VSTR            S0, [SP,#0x90+var_78]
305F1A:  LDR             R0, =(TheCamera_ptr - 0x305F28)
305F1C:  MOVS            R1, #0
305F1E:  STRD.W          R1, R1, [SP,#0x90+var_90]
305F22:  MOV             R2, SP; CVector *
305F24:  ADD             R0, PC; TheCamera_ptr
305F26:  STR             R1, [SP,#0x90+var_88]
305F28:  ADD             R1, SP, #0x90+var_6C; CVector *
305F2A:  LDR             R5, [R0]; TheCamera
305F2C:  MOV             R0, R5; this
305F2E:  BLX             j__ZN7CCamera26SetCamPositionForFixedModeERK7CVectorS2_; CCamera::SetCamPositionForFixedMode(CVector const&,CVector const&)
305F32:  ADD             R1, SP, #0x90+var_78; CVector *
305F34:  MOV             R0, R5; this
305F36:  MOVS            R2, #2; __int16
305F38:  MOVS            R3, #1; int
305F3A:  BLX             j__ZN7CCamera19TakeControlNoEntityERK7CVectorsi; CCamera::TakeControlNoEntity(CVector const&,short,int)
305F3E:  B               loc_305F58
305F40:  VMOV.F32        S2, #10.0
305F44:  VCMPE.F32       S0, S2
305F48:  VMRS            APSR_nzcv, FPSCR
305F4C:  BLE             loc_305F58
305F4E:  LDR             R0, =(_ZN10CEntryExit11ms_bWarpingE_ptr - 0x305F56)
305F50:  MOVS            R1, #1; int
305F52:  ADD             R0, PC; _ZN10CEntryExit11ms_bWarpingE_ptr
305F54:  LDR             R0, [R0]; CEntryExit::ms_bWarping ...
305F56:  STRB            R1, [R0]; CEntryExit::ms_bWarping
305F58:  MOVS            R0, #0; this
305F5A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
305F5E:  LDRH.W          R1, [R0,#0x110]
305F62:  ORR.W           R1, R1, #8; unsigned int
305F66:  STRH.W          R1, [R0,#0x110]
305F6A:  LDRB.W          R0, [R9,#1]
305F6E:  LSLS            R0, R0, #0x1F
305F70:  BNE             loc_305FCC
305F72:  MOVS            R0, #byte_8; this
305F74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
305F78:  MOV             R5, R0
305F7A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
305F7E:  LDR             R0, =(_ZTV26CTaskSimpleUninterruptable_ptr - 0x305F8A)
305F80:  MOV             R6, SP
305F82:  MOVS            R1, #3; int
305F84:  MOV             R2, R5; CTask *
305F86:  ADD             R0, PC; _ZTV26CTaskSimpleUninterruptable_ptr
305F88:  MOVS            R3, #0; bool
305F8A:  LDR             R0, [R0]; `vtable for'CTaskSimpleUninterruptable ...
305F8C:  ADDS            R0, #8
305F8E:  STR             R0, [R5]
305F90:  MOV             R0, R6; this
305F92:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
305F96:  LDR.W           R0, [R4,#0x440]
305F9A:  MOV             R1, R6; CEvent *
305F9C:  MOVS            R2, #0; bool
305F9E:  ADDS            R0, #0x68 ; 'h'; this
305FA0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
305FA4:  MOV             R0, R6; this
305FA6:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
305FAA:  B               loc_305FCC
305FAC:  LSLS            R1, R1, #0x19
305FAE:  BMI.W           loc_305CD8
305FB2:  CMP             R0, #9
305FB4:  BEQ.W           loc_305D12
305FB8:  B               loc_305CD8
305FBA:  LDR             R0, =(_ZN10CEntryExit11ms_bWarpingE_ptr - 0x305FC0)
305FBC:  ADD             R0, PC; _ZN10CEntryExit11ms_bWarpingE_ptr
305FBE:  LDR             R0, [R0]; CEntryExit::ms_bWarping ...
305FC0:  LDRB            R0, [R0]; CEntryExit::ms_bWarping
305FC2:  CBZ             R0, loc_305FD0
305FC4:  LDRH            R0, [R5,#0x30]
305FC6:  ORR.W           R0, R0, #2
305FCA:  STRH            R0, [R5,#0x30]
305FCC:  MOVS            R0, #1
305FCE:  B               loc_305D14
305FD0:  MOVS            R0, #dword_38; this
305FD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
305FD6:  VMOV.F32        S0, #4.0
305FDA:  VLDR            S2, [SP,#0x90+var_60]
305FDE:  VLDR            S4, [SP,#0x90+var_5C]
305FE2:  ADD             R1, SP, #0x90+var_54; CVector *
305FE4:  VLDR            S6, [SP,#0x90+var_58]
305FE8:  MOV             R2, SP; CVector *
305FEA:  MOV             R5, R0
305FEC:  VMUL.F32        S2, S2, S0
305FF0:  VMUL.F32        S4, S4, S0
305FF4:  VMUL.F32        S0, S6, S0
305FF8:  VADD.F32        S2, S2, S18
305FFC:  VADD.F32        S4, S4, S16
306000:  VADD.F32        S0, S0, S20
306004:  VSTR            S2, [SP,#0x90+var_90]
306008:  VSTR            S4, [SP,#0x90+var_8C]
30600C:  VSTR            S0, [SP,#0x90+var_88]
306010:  BLX             j__ZN27CTaskComplexGotoDoorAndOpenC2ERK7CVectorS2_; CTaskComplexGotoDoorAndOpen::CTaskComplexGotoDoorAndOpen(CVector const&,CVector const&)
306014:  MOV             R6, SP
306016:  MOVS            R1, #3; int
306018:  MOV             R0, R6; this
30601A:  MOV             R2, R5; CTask *
30601C:  MOVS            R3, #0; bool
30601E:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
306022:  LDR.W           R0, [R4,#0x440]
306026:  MOV             R1, R6; CEvent *
306028:  MOVS            R2, #0; bool
30602A:  ADDS            R0, #0x68 ; 'h'; this
30602C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
306030:  MOV             R0, R6
306032:  B               loc_305E88
