; =========================================================
; Game Engine Function: sub_2E1024
; Address            : 0x2E1024 - 0x2E10E4
; =========================================================

2E1024:  PUSH            {R4-R7,LR}
2E1026:  ADD             R7, SP, #0xC
2E1028:  PUSH.W          {R11}; char *
2E102C:  MOV             R5, R1
2E102E:  MOV             R4, R0
2E1030:  BLX             j__ZN10CMemoryMgr14LockScratchPadEv; CMemoryMgr::LockScratchPad(void)
2E1034:  LDR             R0, =(PC_Scratch_ptr - 0x2E103C)
2E1036:  MOV             R2, R5; size_t
2E1038:  ADD             R0, PC; PC_Scratch_ptr
2E103A:  LDR             R6, [R0]; PC_Scratch
2E103C:  MOV             R0, R4; int
2E103E:  MOV             R1, R6; void *
2E1040:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2E1044:  MOVS            R0, #word_30; this
2E1046:  BLX             j__ZN9CColModelnwEj; CColModel::operator new(uint)
2E104A:  MOV             R5, R0
2E104C:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
2E1050:  LDR             R0, [R6]
2E1052:  MOV             R1, #0x324C4F43
2E105A:  CMP             R0, R1
2E105C:  BEQ             loc_2E1080
2E105E:  MOV             R1, #0x334C4F43
2E1066:  CMP             R0, R1
2E1068:  BEQ             loc_2E1096
2E106A:  MOV             R1, #0x4C4C4F43
2E1072:  CMP             R0, R1
2E1074:  BNE             loc_2E10AC
2E1076:  LDR             R0, =(PC_Scratch_ptr - 0x2E107C)
2E1078:  ADD             R0, PC; PC_Scratch_ptr
2E107A:  LDR             R0, [R0]; PC_Scratch
2E107C:  ADDS            R0, #0x20 ; ' '
2E107E:  B               loc_2E10B2
2E1080:  LDR             R0, =(PC_Scratch_ptr - 0x2E108A)
2E1082:  MOV             R2, R5; unsigned int
2E1084:  MOVS            R3, #0; CColModel *
2E1086:  ADD             R0, PC; PC_Scratch_ptr
2E1088:  LDR             R0, [R0]; PC_Scratch
2E108A:  LDR             R1, [R0,#(dword_A887C4 - 0xA887C0)]
2E108C:  ADDS            R0, #0x20 ; ' '; this
2E108E:  SUBS            R1, #0x18; unsigned __int8 *
2E1090:  BLX             j__ZN11CFileLoader22LoadCollisionModelVer2EPhjR9CColModelPKc; CFileLoader::LoadCollisionModelVer2(uchar *,uint,CColModel &,char const*)
2E1094:  B               loc_2E10BA
2E1096:  LDR             R0, =(PC_Scratch_ptr - 0x2E10A0)
2E1098:  MOV             R2, R5; unsigned int
2E109A:  MOVS            R3, #0; CColModel *
2E109C:  ADD             R0, PC; PC_Scratch_ptr
2E109E:  LDR             R0, [R0]; PC_Scratch
2E10A0:  LDR             R1, [R0,#(dword_A887C4 - 0xA887C0)]
2E10A2:  ADDS            R0, #0x20 ; ' '; this
2E10A4:  SUBS            R1, #0x18; unsigned __int8 *
2E10A6:  BLX             j__ZN11CFileLoader22LoadCollisionModelVer3EPhjR9CColModelPKc; CFileLoader::LoadCollisionModelVer3(uchar *,uint,CColModel &,char const*)
2E10AA:  B               loc_2E10BA
2E10AC:  LDR             R0, =(PC_Scratch_ptr - 0x2E10B2)
2E10AE:  ADD             R0, PC; PC_Scratch_ptr
2E10B0:  LDR             R0, [R0]; PC_Scratch ; this
2E10B2:  MOV             R1, R5; unsigned __int8 *
2E10B4:  MOVS            R2, #0; CColModel *
2E10B6:  BLX             j__ZN11CFileLoader18LoadCollisionModelEPhR9CColModelPKc; CFileLoader::LoadCollisionModel(uchar *,CColModel &,char const*)
2E10BA:  MOV             R0, R5; this
2E10BC:  BLX             j__ZN9CColModel17MakeMultipleAllocEv; CColModel::MakeMultipleAlloc(void)
2E10C0:  LDR             R6, =(dword_7960FC - 0x2E10CA)
2E10C2:  MOV             R1, R5; CColModel *
2E10C4:  MOVS            R2, #1; bool
2E10C6:  ADD             R6, PC; dword_7960FC
2E10C8:  LDR             R0, [R6]; this
2E10CA:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
2E10CE:  LDR             R0, [R6]; this
2E10D0:  LDRH            R1, [R0,#0x28]
2E10D2:  ORR.W           R1, R1, #0x800
2E10D6:  STRH            R1, [R0,#0x28]
2E10D8:  BLX             j__ZN10CMemoryMgr17ReleaseScratchPadEv; CMemoryMgr::ReleaseScratchPad(void)
2E10DC:  MOV             R0, R4
2E10DE:  POP.W           {R11}
2E10E2:  POP             {R4-R7,PC}
