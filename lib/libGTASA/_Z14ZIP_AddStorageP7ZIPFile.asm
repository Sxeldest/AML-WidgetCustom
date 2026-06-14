; =========================================================
; Game Engine Function: _Z14ZIP_AddStorageP7ZIPFile
; Address            : 0x26FF70 - 0x27007A
; =========================================================

26FF70:  PUSH            {R4-R7,LR}
26FF72:  ADD             R7, SP, #0xC
26FF74:  PUSH.W          {R8-R10}
26FF78:  MOV             R8, R0
26FF7A:  LDR             R0, =(storageMutex_ptr - 0x26FF80)
26FF7C:  ADD             R0, PC; storageMutex_ptr
26FF7E:  LDR             R0, [R0]; storageMutex
26FF80:  LDR             R5, [R0]
26FF82:  CBNZ            R5, loc_26FFAC
26FF84:  MOVS            R0, #8; unsigned int
26FF86:  BLX             _Znwj; operator new(uint)
26FF8A:  MOV             R5, R0
26FF8C:  ADDS            R6, R5, #4
26FF8E:  MOV             R0, R6; attr
26FF90:  BLX             pthread_mutexattr_init
26FF94:  MOV             R0, R6
26FF96:  MOVS            R1, #1
26FF98:  BLX             pthread_mutexattr_settype
26FF9C:  MOV             R0, R5; mutex
26FF9E:  MOV             R1, R6; mutexattr
26FFA0:  BLX             pthread_mutex_init
26FFA4:  LDR             R0, =(storageMutex_ptr - 0x26FFAA)
26FFA6:  ADD             R0, PC; storageMutex_ptr
26FFA8:  LDR             R0, [R0]; storageMutex
26FFAA:  STR             R5, [R0]
26FFAC:  MOV             R0, R5; mutex
26FFAE:  BLX             pthread_mutex_lock
26FFB2:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26FFB8)
26FFB4:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26FFB6:  LDR             R0, [R0]; ZIPFile::storageFiles ...
26FFB8:  LDR.W           R10, [R0,#(dword_6D7168 - 0x6D7164)]
26FFBC:  CMP.W           R10, #0
26FFC0:  BEQ             loc_26FFE6
26FFC2:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26FFCE)
26FFC4:  ADD.W           R5, R8, #0x10
26FFC8:  MOVS            R4, #0
26FFCA:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26FFCC:  LDR             R0, [R0]; ZIPFile::storageFiles ...
26FFCE:  LDR             R6, [R0,#(dword_6D716C - 0x6D7164)]
26FFD0:  LDR.W           R0, [R6,R4,LSL#2]
26FFD4:  MOV             R1, R5; char *
26FFD6:  ADDS            R0, #0x10; char *
26FFD8:  BLX             strcasecmp
26FFDC:  CMP             R0, #0
26FFDE:  BEQ             loc_270064
26FFE0:  ADDS            R4, #1
26FFE2:  CMP             R4, R10
26FFE4:  BCC             loc_26FFD0
26FFE6:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26FFEC)
26FFE8:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26FFEA:  LDR             R0, [R0]; ZIPFile::storageFiles ...
26FFEC:  LDR             R1, [R0]; ZIPFile::storageFiles
26FFEE:  ADD.W           R0, R10, #1
26FFF2:  CMP             R1, R0
26FFF4:  BCS             loc_270048
26FFF6:  MOVW            R1, #0xAAAB
26FFFA:  LSLS            R0, R0, #2
26FFFC:  MOVT            R1, #0xAAAA
270000:  UMULL.W         R0, R1, R0, R1
270004:  MOVS            R0, #3
270006:  ADD.W           R9, R0, R1,LSR#1
27000A:  MOV.W           R0, R9,LSL#2; byte_count
27000E:  BLX             malloc
270012:  MOV             R5, R0
270014:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x27001A)
270016:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
270018:  LDR             R0, [R0]; ZIPFile::storageFiles ...
27001A:  LDR             R6, [R0,#(dword_6D716C - 0x6D7164)]
27001C:  CBZ             R6, loc_27003A
27001E:  MOV.W           R2, R10,LSL#2; size_t
270022:  MOV             R0, R5; void *
270024:  MOV             R1, R6; void *
270026:  BLX             memcpy_0
27002A:  MOV             R0, R6; p
27002C:  BLX             free
270030:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x270036)
270032:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
270034:  LDR             R0, [R0]; ZIPFile::storageFiles ...
270036:  LDR.W           R10, [R0,#(dword_6D7168 - 0x6D7164)]
27003A:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x270040)
27003C:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
27003E:  LDR             R0, [R0]; ZIPFile::storageFiles ...
270040:  STR             R5, [R0,#(dword_6D716C - 0x6D7164)]
270042:  STR.W           R9, [R0]; ZIPFile::storageFiles
270046:  B               loc_270050
270048:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x27004E)
27004A:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
27004C:  LDR             R0, [R0]; ZIPFile::storageFiles ...
27004E:  LDR             R5, [R0,#(dword_6D716C - 0x6D7164)]
270050:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x27005C)
270052:  MOVS            R4, #1
270054:  STR.W           R8, [R5,R10,LSL#2]
270058:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
27005A:  LDR             R0, [R0]; ZIPFile::storageFiles ...
27005C:  LDR             R1, [R0,#(dword_6D7168 - 0x6D7164)]
27005E:  ADDS            R1, #1
270060:  STR             R1, [R0,#(dword_6D7168 - 0x6D7164)]
270062:  B               loc_270066
270064:  MOVS            R4, #0
270066:  LDR             R0, =(storageMutex_ptr - 0x27006C)
270068:  ADD             R0, PC; storageMutex_ptr
27006A:  LDR             R0, [R0]; storageMutex
27006C:  LDR             R0, [R0]; mutex
27006E:  BLX             pthread_mutex_unlock
270072:  MOV             R0, R4
270074:  POP.W           {R8-R10}
270078:  POP             {R4-R7,PC}
