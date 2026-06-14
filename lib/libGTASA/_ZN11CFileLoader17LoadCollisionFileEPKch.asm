; =========================================================
; Game Engine Function: _ZN11CFileLoader17LoadCollisionFileEPKch
; Address            : 0x466F00 - 0x467048
; =========================================================

466F00:  PUSH            {R4-R7,LR}
466F02:  ADD             R7, SP, #0xC
466F04:  PUSH.W          {R8-R11}
466F08:  SUB             SP, SP, #0x2C; char *
466F0A:  STR             R1, [SP,#0x48+var_44]
466F0C:  LDR             R1, =(__stack_chk_guard_ptr - 0x466F12)
466F0E:  ADD             R1, PC; __stack_chk_guard_ptr
466F10:  LDR             R1, [R1]; __stack_chk_guard
466F12:  LDR             R1, [R1]
466F14:  STR             R1, [SP,#0x48+var_20]
466F16:  ADR             R1, dword_46704C; char *
466F18:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
466F1C:  ADD             R1, SP, #0x48+ptr; ptr
466F1E:  MOVS            R2, #8; n
466F20:  MOV             R5, R0
466F22:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
466F26:  CMP             R0, #0
466F28:  BNE             loc_467028
466F2A:  LDR.W           R11, =(unk_9B2280 - 0x466F3A)
466F2E:  MOVW            R8, #0x4F43
466F32:  ADD             R6, SP, #0x48+var_38
466F34:  ADD             R4, SP, #0x48+ptr
466F36:  ADD             R11, PC; unk_9B2280
466F38:  MOVT            R8, #0x324C
466F3C:  LDR             R0, [SP,#0x48+ptr]
466F3E:  CMP             R0, R8
466F40:  BEQ             loc_466F66
466F42:  MOV             R1, #0x334C4F43
466F4A:  CMP             R0, R1
466F4C:  BEQ             loc_466F60
466F4E:  MOV             R1, #0x4C4C4F43
466F56:  CMP             R0, R1
466F58:  IT EQ
466F5A:  MOVEQ.W         R9, #0
466F5E:  B               loc_466F6A
466F60:  MOV.W           R9, #2
466F64:  B               loc_466F6A
466F66:  MOV.W           R9, #1
466F6A:  MOV             R0, R5; this
466F6C:  MOV             R1, R6; unsigned int
466F6E:  MOVS            R2, #off_18; char *
466F70:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
466F74:  LDR             R0, [SP,#0x48+var_3C]
466F76:  MOV             R1, R11; unsigned int
466F78:  SUB.W           R2, R0, #0x18; char *
466F7C:  MOV             R0, R5; this
466F7E:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
466F82:  MOV             R0, R6; this
466F84:  MOVS            R1, #0; char *
466F86:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
466F8A:  MOV             R10, R0
466F8C:  CMP.W           R10, #0
466F90:  BEQ             loc_467018
466F92:  LDRB.W          R0, [R10,#0x28]
466F96:  LSLS            R0, R0, #0x18
466F98:  BPL             loc_467018
466F9A:  LDR.W           R11, [R10,#0x2C]
466F9E:  CMP.W           R11, #0
466FA2:  BEQ             loc_466FC4
466FA4:  CMP.W           R9, #2
466FA8:  BEQ             loc_466FE4
466FAA:  CMP.W           R9, #1
466FAE:  BEQ             loc_466FF8
466FB0:  CMP.W           R9, #0
466FB4:  BNE             loc_46700A
466FB6:  LDR             R0, =(unk_9B2280 - 0x466FC0)
466FB8:  MOV             R1, R11; unsigned __int8 *
466FBA:  MOV             R2, R6; CColModel *
466FBC:  ADD             R0, PC; unk_9B2280 ; this
466FBE:  BLX             j__ZN11CFileLoader18LoadCollisionModelEPhR9CColModelPKc; CFileLoader::LoadCollisionModel(uchar *,CColModel &,char const*)
466FC2:  B               loc_46700A
466FC4:  MOVS            R0, #word_30; this
466FC6:  BLX             j__ZN9CColModelnwEj; CColModel::operator new(uint)
466FCA:  MOV             R4, R0
466FCC:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
466FD0:  MOV             R0, R10; this
466FD2:  MOV             R1, R4; CColModel *
466FD4:  MOVS            R2, #1; bool
466FD6:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
466FDA:  MOV.W           R11, #0
466FDE:  CMP.W           R9, #2
466FE2:  BNE             loc_466FAA
466FE4:  LDR             R0, [SP,#0x48+var_3C]
466FE6:  MOV             R2, R11; unsigned int
466FE8:  MOV             R3, R6; CColModel *
466FEA:  SUB.W           R1, R0, #0x18; unsigned __int8 *
466FEE:  LDR             R0, =(unk_9B2280 - 0x466FF4)
466FF0:  ADD             R0, PC; unk_9B2280 ; this
466FF2:  BLX             j__ZN11CFileLoader22LoadCollisionModelVer3EPhjR9CColModelPKc; CFileLoader::LoadCollisionModelVer3(uchar *,uint,CColModel &,char const*)
466FF6:  B               loc_46700A
466FF8:  LDR             R0, [SP,#0x48+var_3C]
466FFA:  MOV             R2, R11; unsigned int
466FFC:  MOV             R3, R6; CColModel *
466FFE:  SUB.W           R1, R0, #0x18; unsigned __int8 *
467002:  LDR             R0, =(unk_9B2280 - 0x467008)
467004:  ADD             R0, PC; unk_9B2280 ; this
467006:  BLX             j__ZN11CFileLoader22LoadCollisionModelVer2EPhjR9CColModelPKc; CFileLoader::LoadCollisionModelVer2(uchar *,uint,CColModel &,char const*)
46700A:  LDR             R0, [SP,#0x48+var_44]
46700C:  ADD             R4, SP, #0x48+ptr
46700E:  STRB.W          R0, [R11,#0x28]
467012:  LDR.W           R11, =(unk_9B2280 - 0x46701A)
467016:  ADD             R11, PC; unk_9B2280
467018:  MOV             R0, R5; this
46701A:  MOV             R1, R4; ptr
46701C:  MOVS            R2, #8; n
46701E:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
467022:  CMP             R0, #0
467024:  BEQ.W           loc_466F3C
467028:  MOV             R0, R5; this
46702A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
46702E:  LDR             R0, =(__stack_chk_guard_ptr - 0x467036)
467030:  LDR             R1, [SP,#0x48+var_20]
467032:  ADD             R0, PC; __stack_chk_guard_ptr
467034:  LDR             R0, [R0]; __stack_chk_guard
467036:  LDR             R0, [R0]
467038:  SUBS            R0, R0, R1
46703A:  ITTT EQ
46703C:  ADDEQ           SP, SP, #0x2C ; ','
46703E:  POPEQ.W         {R8-R11}
467042:  POPEQ           {R4-R7,PC}
467044:  BLX             __stack_chk_fail
