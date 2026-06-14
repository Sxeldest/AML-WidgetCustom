; =========================================================
; Game Engine Function: _ZN7ZIPFile15FindFromStorageEPKcPPS_
; Address            : 0x26AA08 - 0x26AAC0
; =========================================================

26AA08:  PUSH            {R4-R7,LR}
26AA0A:  ADD             R7, SP, #0xC
26AA0C:  PUSH.W          {R8-R10}
26AA10:  MOV             R9, R0
26AA12:  LDR             R0, =(storageMutex_ptr - 0x26AA1A)
26AA14:  MOV             R8, R1
26AA16:  ADD             R0, PC; storageMutex_ptr
26AA18:  LDR             R0, [R0]; storageMutex
26AA1A:  LDR             R6, [R0]
26AA1C:  CBNZ            R6, loc_26AA46
26AA1E:  MOVS            R0, #8; unsigned int
26AA20:  BLX             _Znwj; operator new(uint)
26AA24:  MOV             R6, R0
26AA26:  ADDS            R4, R6, #4
26AA28:  MOV             R0, R4; attr
26AA2A:  BLX             pthread_mutexattr_init
26AA2E:  MOV             R0, R4
26AA30:  MOVS            R1, #1
26AA32:  BLX             pthread_mutexattr_settype
26AA36:  MOV             R0, R6; mutex
26AA38:  MOV             R1, R4; mutexattr
26AA3A:  BLX             pthread_mutex_init
26AA3E:  LDR             R0, =(storageMutex_ptr - 0x26AA44)
26AA40:  ADD             R0, PC; storageMutex_ptr
26AA42:  LDR             R0, [R0]; storageMutex
26AA44:  STR             R6, [R0]
26AA46:  MOV             R0, R6; mutex
26AA48:  BLX             pthread_mutex_lock
26AA4C:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26AA52)
26AA4E:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26AA50:  LDR             R0, [R0]; ZIPFile::storageFiles ...
26AA52:  LDR             R0, [R0,#(dword_6D7168 - 0x6D7164)]
26AA54:  CBZ             R0, loc_26AA84
26AA56:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26AA5E)
26AA58:  MOVS            R4, #0
26AA5A:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26AA5C:  LDR.W           R10, [R0]; ZIPFile::storageFiles ...
26AA60:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26AA66)
26AA62:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26AA64:  LDR             R5, [R0]; ZIPFile::storageFiles ...
26AA66:  LDR.W           R0, [R10,#(dword_6D716C - 0x6D7164)]
26AA6A:  LDR.W           R0, [R0,R4,LSL#2]
26AA6E:  LDR             R1, [R0]
26AA70:  LDR             R2, [R1]
26AA72:  MOV             R1, R9
26AA74:  BLX             R2
26AA76:  MOV             R6, R0
26AA78:  ADDS            R0, R6, #1
26AA7A:  BNE             loc_26AA9C
26AA7C:  LDR             R0, [R5,#(dword_6D7168 - 0x6D7164)]
26AA7E:  ADDS            R4, #1
26AA80:  CMP             R4, R0
26AA82:  BCC             loc_26AA66
26AA84:  LDR             R0, =(storageMutex_ptr - 0x26AA8A)
26AA86:  ADD             R0, PC; storageMutex_ptr
26AA88:  LDR             R0, [R0]; storageMutex
26AA8A:  LDR             R0, [R0]; mutex
26AA8C:  BLX             pthread_mutex_unlock
26AA90:  MOVS            R0, #0
26AA92:  MOV.W           R6, #0xFFFFFFFF
26AA96:  STR.W           R0, [R8]
26AA9A:  B               loc_26AAB8
26AA9C:  LDR             R0, =(_ZN7ZIPFile12storageFilesE_ptr - 0x26AAA4)
26AA9E:  LDR             R1, =(storageMutex_ptr - 0x26AAA6)
26AAA0:  ADD             R0, PC; _ZN7ZIPFile12storageFilesE_ptr
26AAA2:  ADD             R1, PC; storageMutex_ptr
26AAA4:  LDR             R0, [R0]; ZIPFile::storageFiles ...
26AAA6:  LDR             R1, [R1]; storageMutex
26AAA8:  LDR             R0, [R0,#(dword_6D716C - 0x6D7164)]
26AAAA:  LDR.W           R0, [R0,R4,LSL#2]
26AAAE:  STR.W           R0, [R8]
26AAB2:  LDR             R0, [R1]; mutex
26AAB4:  BLX             pthread_mutex_unlock
26AAB8:  MOV             R0, R6
26AABA:  POP.W           {R8-R10}
26AABE:  POP             {R4-R7,PC}
