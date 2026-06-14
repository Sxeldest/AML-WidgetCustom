; =========================================================
; Game Engine Function: _Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType
; Address            : 0x266AE0 - 0x266DE4
; =========================================================

266AE0:  PUSH            {R4-R7,LR}
266AE2:  ADD             R7, SP, #0xC
266AE4:  PUSH.W          {R8-R11}
266AE8:  SUB             SP, SP, #0x14
266AEA:  MOV             R6, R0
266AEC:  MOVS            R0, #0x20 ; ' '; unsigned int
266AEE:  MOV             R9, R3
266AF0:  MOV             R5, R2
266AF2:  STR             R1, [SP,#0x30+var_28]
266AF4:  BLX             _Znwj; operator new(uint)
266AF8:  MOVS            R4, #0
266AFA:  MOV.W           R1, #0xFFFFFFFF
266AFE:  STR             R4, [R0,#0xC]
266B00:  MOVS            R2, #2; size_t
266B02:  STRH            R4, [R0,#8]
266B04:  STRD.W          R4, R4, [R0]
266B08:  STRD.W          R4, R1, [R0,#0x14]
266B0C:  ADR             R1, dword_266DE4; char *
266B0E:  STR             R0, [SP,#0x30+var_30]
266B10:  STR             R4, [R0,#0x1C]
266B12:  MOV             R0, R5; char *
266B14:  BLX             strncmp
266B18:  CMP             R0, #0
266B1A:  ADR             R1, dword_266DE8; char *
266B1C:  IT EQ
266B1E:  ADDEQ           R5, #2
266B20:  MOVS            R2, #2; size_t
266B22:  MOV             R0, R5; char *
266B24:  BLX             strncmp
266B28:  LDR             R1, =(BasePath_ptr - 0x266B38)
266B2A:  CMP             R0, #0
266B2C:  SUB.W           R0, R9, #1
266B30:  IT EQ
266B32:  ADDEQ           R5, #2
266B34:  ADD             R1, PC; BasePath_ptr
266B36:  CMP             R0, #2
266B38:  IT CC
266B3A:  MOVCC           R4, #1
266B3C:  CMP             R6, #1
266B3E:  LDR             R1, [R1]; BasePath
266B40:  IT NE
266B42:  MOVNE           R6, #0
266B44:  ORR.W           R11, R6, R4
266B48:  LDR.W           R8, [R1]
266B4C:  CMP.W           R8, #0
266B50:  BNE             loc_266B66
266B52:  LDR             R0, =(byte_61CD7E - 0x266B58)
266B54:  ADD             R0, PC; byte_61CD7E ; char *
266B56:  BLX             j_strdup
266B5A:  MOV             R8, R0
266B5C:  LDR             R0, =(BasePath_ptr - 0x266B62)
266B5E:  ADD             R0, PC; BasePath_ptr
266B60:  LDR             R0, [R0]; BasePath
266B62:  STR.W           R8, [R0]
266B66:  MOV             R0, R5; char *
266B68:  BLX             strlen
266B6C:  MOV             R6, R0
266B6E:  MOV             R0, R8; char *
266B70:  BLX             strlen
266B74:  MOV             R10, R0
266B76:  LDR             R0, =(StorageRootBuffer_ptr - 0x266B80)
266B78:  ADD.W           R4, R6, R10
266B7C:  ADD             R0, PC; StorageRootBuffer_ptr
266B7E:  LDR             R0, [R0]; StorageRootBuffer ; char *
266B80:  BLX             strlen
266B84:  ADD             R0, R4
266B86:  ADDS            R0, #0xA; byte_count
266B88:  BLX             malloc
266B8C:  MOV             R6, R0
266B8E:  CMP.W           R11, #1
266B92:  STR.W           R11, [SP,#0x30+var_2C]
266B96:  BNE             loc_266BD6
266B98:  LDR             R0, =(StorageRootBuffer_ptr - 0x266BA0)
266B9A:  MOV             R4, R9
266B9C:  ADD             R0, PC; StorageRootBuffer_ptr
266B9E:  LDR.W           R9, [R0]; StorageRootBuffer
266BA2:  MOV             R0, R9; char *
266BA4:  BLX             strlen
266BA8:  LDR             R1, =(aSS_6 - 0x266BB4); "%s/%s"
266BAA:  MOV             R11, R0
266BAC:  MOV             R2, R9
266BAE:  MOV             R0, R6
266BB0:  ADD             R1, PC; "%s/%s"
266BB2:  MOV             R3, R8
266BB4:  MOV             R9, R4
266BB6:  BL              sub_5E6BC0
266BBA:  MOV             R0, R6; path
266BBC:  MOVW            R1, #0x1FF; mode
266BC0:  BLX             mkdir
266BC4:  MOV             R0, R6; dest
266BC6:  MOV             R1, R5; src
266BC8:  BLX             strcat
266BCC:  ADD.W           R0, R10, R11
266BD0:  ADD.W           R10, R0, #1
266BD4:  B               loc_266BE6
266BD6:  MOV             R0, R6; char *
266BD8:  MOV             R1, R8; char *
266BDA:  BLX             strcpy
266BDE:  MOV             R0, R6; dest
266BE0:  MOV             R1, R5; src
266BE2:  BLX             strcat
266BE6:  MOV             R0, R6; char *
266BE8:  LDR.W           R11, [SP,#0x30+var_30]
266BEC:  BLX             strlen
266BF0:  ADD             R0, R6
266BF2:  LDRB.W          R1, [R0,#-1]!
266BF6:  CMP             R1, #0x20 ; ' '
266BF8:  BNE             loc_266C0A
266BFA:  MOVS            R1, #0
266BFC:  MOV             R2, R0
266BFE:  LDRB.W          R3, [R2,#-1]!
266C02:  STRB            R1, [R0]
266C04:  CMP             R3, #0x20 ; ' '
266C06:  MOV             R0, R2
266C08:  BEQ             loc_266BFE
266C0A:  MOV             R0, R6; s
266C0C:  MOVS            R1, #0x5C ; '\'; c
266C0E:  BLX             strchr
266C12:  CBZ             R0, loc_266C24
266C14:  MOVS            R4, #0x2F ; '/'
266C16:  STRB            R4, [R0]
266C18:  MOV             R0, R6; s
266C1A:  MOVS            R1, #0x5C ; '\'; c
266C1C:  BLX             strchr
266C20:  CMP             R0, #0
266C22:  BNE             loc_266C16
266C24:  LDR             R4, [SP,#0x30+var_2C]
266C26:  CMP.W           R9, #3; switch 4 cases
266C2A:  BHI             def_266C2C; jumptable 00266C2C default case
266C2C:  TBB.W           [PC,R9]; switch jump
266C30:  DCB 2; jump table for switch statement
266C31:  DCB 0xE
266C32:  DCB 0x15
266C33:  DCB 2
266C34:  LDRB            R0, [R5]; jumptable 00266C2C cases 0,3
266C36:  MOVS            R1, #0
266C38:  CMP             R0, #0x2F ; '/'
266C3A:  IT NE
266C3C:  MOVNE           R1, #1
266C3E:  ORRS.W          R0, R4, R1
266C42:  BEQ             loc_266C7E
266C44:  LDR.W           R0, [R11]
266C48:  CBNZ            R0, def_266C2C; jumptable 00266C2C default case
266C4A:  B               loc_266C90
266C4C:  ADR             R1, dword_266E0C; jumptable 00266C2C case 1
266C4E:  MOV             R0, R6; filename
266C50:  BLX             fopen
266C54:  STR.W           R0, [R11,#4]
266C58:  B               def_266C2C; jumptable 00266C2C default case
266C5A:  ADR             R1, dword_266E04; jumptable 00266C2C case 2
266C5C:  MOV             R0, R6; filename
266C5E:  BLX             fopen
266C62:  CMP             R0, #0
266C64:  STR.W           R0, [R11,#4]
266C68:  BNE             def_266C2C; jumptable 00266C2C default case
266C6A:  ADR             R1, dword_266E08; modes
266C6C:  MOV             R0, R6; filename
266C6E:  BLX             fopen
266C72:  STR.W           R0, [R11,#4]
266C76:  MOVS            R0, #1
266C78:  STRB.W          R0, [R11,#9]
266C7C:  B               def_266C2C; jumptable 00266C2C default case
266C7E:  MOVS            R0, #0; char *
266C80:  MOV             R1, R5; char *
266C82:  MOVS            R2, #0; bool
266C84:  MOVS            R3, #1; bool
266C86:  BLX             j__Z7NvFOpenPKcS0_bb; NvFOpen(char const*,char const*,bool,bool)
266C8A:  STR.W           R0, [R11]
266C8E:  CBNZ            R0, def_266C2C; jumptable 00266C2C default case
266C90:  LDR             R0, =(BasePath_ptr - 0x266C9E)
266C92:  ADD.W           R1, R6, R10; char *
266C96:  MOV             R2, R4; bool
266C98:  MOVS            R3, #1; bool
266C9A:  ADD             R0, PC; BasePath_ptr
266C9C:  LDR             R0, [R0]; BasePath
266C9E:  LDR             R0, [R0]; char *
266CA0:  BLX             j__Z7NvFOpenPKcS0_bb; NvFOpen(char const*,char const*,bool,bool)
266CA4:  STR.W           R0, [R11]
266CA8:  MOV             R0, R6; jumptable 00266C2C default case
266CAA:  BLX             free
266CAE:  CMP             R4, #0
266CB0:  ITT EQ
266CB2:  LDREQ.W         R0, [R11]
266CB6:  CMPEQ           R0, #0
266CB8:  BEQ             loc_266D10
266CBA:  CMP.W           R9, #3
266CBE:  BNE             loc_266CF4
266CC0:  LDR.W           R0, [R11]
266CC4:  CBZ             R0, loc_266CFA
266CC6:  LDR             R0, [R0]
266CC8:  CMP             R0, #1
266CCA:  BNE             loc_266CF4
266CCC:  LDR             R0, =(fileMutex_ptr - 0x266CD2)
266CCE:  ADD             R0, PC; fileMutex_ptr
266CD0:  LDR             R4, [R0]; fileMutex
266CD2:  LDR             R0, [R4]; mutex
266CD4:  BLX             pthread_mutex_lock
266CD8:  LDR             R0, =(_ZN11AndroidFile14firstAsyncFileE_ptr - 0x266CDE)
266CDA:  ADD             R0, PC; _ZN11AndroidFile14firstAsyncFileE_ptr
266CDC:  LDR             R1, [R0]; AndroidFile::firstAsyncFile ...
266CDE:  MOVS            R0, #1
266CE0:  STRB.W          R0, [R11,#8]
266CE4:  LDR             R0, [R1]; AndroidFile::firstAsyncFile
266CE6:  STR.W           R0, [R11,#0x14]
266CEA:  LDR             R0, [R4]; mutex
266CEC:  STR.W           R11, [R1]; AndroidFile::firstAsyncFile
266CF0:  BLX             pthread_mutex_unlock
266CF4:  LDR.W           R0, [R11]
266CF8:  CBNZ            R0, loc_266D00
266CFA:  LDR.W           R0, [R11,#4]
266CFE:  CBZ             R0, loc_266D74
266D00:  LDR             R0, [SP,#0x30+var_28]
266D02:  STR.W           R11, [R0]
266D06:  MOVS            R0, #0
266D08:  ADD             SP, SP, #0x14
266D0A:  POP.W           {R8-R11}
266D0E:  POP             {R4-R7,PC}
266D10:  ADD             R1, SP, #0x30+var_24; char *
266D12:  MOV             R0, R5; this
266D14:  BLX             j__ZN7ZIPFile15FindFromStorageEPKcPPS_; ZIPFile::FindFromStorage(char const*,ZIPFile**)
266D18:  MOV             R8, R0
266D1A:  ADDS.W          R0, R8, #1
266D1E:  BEQ             loc_266CBA
266D20:  LDR.W           R10, [SP,#0x30+var_24]
266D24:  ADD             R5, SP, #0x30+var_20
266D26:  MOVS            R4, #0x15
266D28:  ADD.W           R6, R10, #0x10
266D2C:  MOVS            R0, #0
266D2E:  MOV             R1, R5
266D30:  MOV             R2, R6
266D32:  MOV             R3, R9
266D34:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
266D38:  CBZ             R0, loc_266D46
266D3A:  MOVS            R0, #0x1E; useconds
266D3C:  BLX             usleep
266D40:  SUBS            R4, #1
266D42:  CMP             R4, #1
266D44:  BGT             loc_266D2C
266D46:  LDR.W           R0, [R10,#0xC]
266D4A:  ADD.W           R1, R8, R8,LSL#1
266D4E:  LDR             R5, [SP,#0x30+var_20]
266D50:  LDR.W           R6, [R0,R1,LSL#2]
266D54:  ADD.W           R0, R0, R1,LSL#2
266D58:  LDR             R4, [R0,#4]
266D5A:  MOV             R0, R5; this
266D5C:  MOV             R1, R6; offset
266D5E:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
266D62:  LDR             R0, [R5,#0x1C]
266D64:  CMP             R5, #0
266D66:  ADD             R0, R6
266D68:  STRD.W          R4, R0, [R5,#0x18]
266D6C:  BEQ             loc_266CBA
266D6E:  LDR             R0, [SP,#0x30+var_28]
266D70:  STR             R5, [R0]
266D72:  B               loc_266D06
266D74:  LDR             R1, [SP,#0x30+var_28]
266D76:  MOVS            R0, #0
266D78:  STR             R0, [R1]
266D7A:  LDRB.W          R0, [R11,#8]
266D7E:  CBZ             R0, loc_266DDA
266D80:  LDR.W           R0, [R11,#0xC]
266D84:  CMP             R0, #0
266D86:  ITT NE
266D88:  MOVNE           R0, R11; this
266D8A:  BLXNE           j__ZN11AndroidFile10AsyncFlushEv; AndroidFile::AsyncFlush(void)
266D8E:  LDR             R0, =(fileMutex_ptr - 0x266D94)
266D90:  ADD             R0, PC; fileMutex_ptr
266D92:  LDR             R0, [R0]; fileMutex
266D94:  LDR             R0, [R0]; mutex
266D96:  BLX             pthread_mutex_lock
266D9A:  LDR             R0, =(_ZN11AndroidFile14firstAsyncFileE_ptr - 0x266DA0)
266D9C:  ADD             R0, PC; _ZN11AndroidFile14firstAsyncFileE_ptr
266D9E:  LDR             R0, [R0]; AndroidFile::firstAsyncFile ...
266DA0:  LDR             R0, [R0]; AndroidFile::firstAsyncFile
266DA2:  CMP             R0, R11
266DA4:  BEQ             loc_266DB4
266DA6:  LDR             R1, [R0,#0x14]
266DA8:  CMP             R1, R11
266DAA:  BEQ             loc_266DC2
266DAC:  CMP             R1, #0
266DAE:  MOV             R0, R1
266DB0:  BNE             loc_266DA6
266DB2:  B               loc_266DC8
266DB4:  LDR             R0, =(_ZN11AndroidFile14firstAsyncFileE_ptr - 0x266DBE)
266DB6:  LDR.W           R1, [R11,#0x14]
266DBA:  ADD             R0, PC; _ZN11AndroidFile14firstAsyncFileE_ptr
266DBC:  LDR             R0, [R0]; AndroidFile::firstAsyncFile ...
266DBE:  STR             R1, [R0]; AndroidFile::firstAsyncFile
266DC0:  B               loc_266DC8
266DC2:  LDR.W           R1, [R11,#0x14]
266DC6:  STR             R1, [R0,#0x14]
266DC8:  LDR             R0, =(fileMutex_ptr - 0x266DD4)
266DCA:  MOVS            R1, #0
266DCC:  STR.W           R1, [R11,#0x14]
266DD0:  ADD             R0, PC; fileMutex_ptr
266DD2:  LDR             R0, [R0]; fileMutex
266DD4:  LDR             R0, [R0]; mutex
266DD6:  BLX             pthread_mutex_unlock
266DDA:  MOV             R0, R11; void *
266DDC:  BLX             _ZdlPv; operator delete(void *)
266DE0:  MOVS            R0, #1
266DE2:  B               loc_266D08
