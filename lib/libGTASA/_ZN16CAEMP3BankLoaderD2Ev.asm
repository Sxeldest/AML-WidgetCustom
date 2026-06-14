; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoaderD2Ev
; Address            : 0x27DB3C - 0x27DC50
; =========================================================

27DB3C:  PUSH            {R4-R7,LR}; Alternative name is 'CAEMP3BankLoader::~CAEMP3BankLoader()'
27DB3E:  ADD             R7, SP, #0xC
27DB40:  PUSH.W          {R8,R9,R11}
27DB44:  LDR             R1, =(loaderSemaphore_ptr - 0x27DB4E)
27DB46:  MOV             R9, R0
27DB48:  LDR             R0, =(_ZTV16CAEMP3BankLoader_ptr - 0x27DB52)
27DB4A:  ADD             R1, PC; loaderSemaphore_ptr
27DB4C:  LDR             R2, =(killLoaderThread_ptr - 0x27DB56)
27DB4E:  ADD             R0, PC; _ZTV16CAEMP3BankLoader_ptr
27DB50:  LDR             R4, [R1]; loaderSemaphore
27DB52:  ADD             R2, PC; killLoaderThread_ptr
27DB54:  LDR             R0, [R0]; `vtable for'CAEMP3BankLoader ...
27DB56:  LDR             R1, [R2]; killLoaderThread
27DB58:  MOVS            R2, #1
27DB5A:  ADDS            R0, #8
27DB5C:  STR.W           R0, [R9]
27DB60:  LDR             R0, [R4]; sem
27DB62:  STRB            R2, [R1]
27DB64:  BLX             j__Z16OS_SemaphorePostPv; OS_SemaphorePost(void *)
27DB68:  LDR             R0, =(loaderThread_ptr - 0x27DB6E)
27DB6A:  ADD             R0, PC; loaderThread_ptr
27DB6C:  LDR             R6, [R0]; loaderThread
27DB6E:  LDR             R0, [R6]; void *
27DB70:  BLX             j__Z13OS_ThreadWaitPv; OS_ThreadWait(void *)
27DB74:  LDR             R0, [R6]; void *
27DB76:  BLX             j__Z14OS_ThreadClosePv; OS_ThreadClose(void *)
27DB7A:  LDR             R0, [R4]; sem
27DB7C:  MOVS            R5, #0
27DB7E:  STR             R5, [R6]
27DB80:  BLX             j__Z18OS_SemaphoreDeletePv; OS_SemaphoreDelete(void *)
27DB84:  STR             R5, [R4]
27DB86:  B               loc_27DB90
27DB88:  MOV.W           R0, #0x3E8; useconds
27DB8C:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
27DB90:  LDRB.W          R0, [R9,#0x19]
27DB94:  CMP             R0, #0
27DB96:  BNE             loc_27DB88
27DB98:  LDR             R0, =(loaderMutex_ptr - 0x27DB9E)
27DB9A:  ADD             R0, PC; loaderMutex_ptr
27DB9C:  LDR             R4, [R0]; loaderMutex
27DB9E:  LDR             R0, [R4]; void *
27DBA0:  BLX             j__Z14OS_MutexDeletePv; OS_MutexDelete(void *)
27DBA4:  LDR             R0, =(soundInfoFile_ptr - 0x27DBAC)
27DBA6:  STR             R5, [R4]
27DBA8:  ADD             R0, PC; soundInfoFile_ptr
27DBAA:  LDR             R6, [R0]; soundInfoFile
27DBAC:  LDR             R0, [R6]; this
27DBAE:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27DBB2:  STR             R5, [R6]
27DBB4:  LDR.W           R1, [R9,#0x20]
27DBB8:  CBZ             R1, loc_27DBD8
27DBBA:  MOVS            R5, #0
27DBBC:  LDR.W           R0, [R9,#0x24]
27DBC0:  LDR.W           R0, [R0,R5,LSL#2]; this
27DBC4:  CBZ             R0, loc_27DBD2
27DBC6:  BLX             j__ZN7ZIPFileD2Ev; ZIPFile::~ZIPFile()
27DBCA:  BLX             _ZdlPv; operator delete(void *)
27DBCE:  LDR.W           R1, [R9,#0x20]
27DBD2:  ADDS            R5, #1
27DBD4:  CMP             R5, R1
27DBD6:  BCC             loc_27DBBC
27DBD8:  LDR.W           R0, [R9,#0x2C]
27DBDC:  CBZ             R0, loc_27DC0C
27DBDE:  MOV.W           R8, #0
27DBE2:  MOVS            R6, #0
27DBE4:  MOVS            R5, #0
27DBE6:  LDR.W           R0, [R9,#0x30]
27DBEA:  ADDS            R4, R0, R6
27DBEC:  LDR             R0, [R4,#0xC]; p
27DBEE:  STR.W           R8, [R4,#8]
27DBF2:  CBZ             R0, loc_27DBFC
27DBF4:  BLX             free
27DBF8:  STR.W           R8, [R4,#0xC]
27DBFC:  STR.W           R8, [R4,#4]
27DC00:  ADDS            R6, #0x14
27DC02:  LDR.W           R0, [R9,#0x2C]
27DC06:  ADDS            R5, #1
27DC08:  CMP             R5, R0
27DC0A:  BCC             loc_27DBE6
27DC0C:  LDR.W           R0, [R9,#0x30]; p
27DC10:  MOVS            R4, #0
27DC12:  STR.W           R4, [R9,#0x2C]
27DC16:  CBZ             R0, loc_27DC20
27DC18:  BLX             free
27DC1C:  STR.W           R4, [R9,#0x30]
27DC20:  LDR.W           R0, [R9,#0x24]; p
27DC24:  STR.W           R4, [R9,#0x20]
27DC28:  CMP             R0, #0
27DC2A:  STR.W           R4, [R9,#0x28]
27DC2E:  BEQ             loc_27DC3A
27DC30:  BLX             free
27DC34:  MOVS            R0, #0
27DC36:  STR.W           R0, [R9,#0x24]
27DC3A:  MOVS            R0, #0
27DC3C:  STR.W           R0, [R9,#0x1C]
27DC40:  ADD.W           R0, R9, #4; this
27DC44:  BLX             j__ZN13CAEBankLoaderD2Ev; CAEBankLoader::~CAEBankLoader()
27DC48:  MOV             R0, R9
27DC4A:  POP.W           {R8,R9,R11}
27DC4E:  POP             {R4-R7,PC}
