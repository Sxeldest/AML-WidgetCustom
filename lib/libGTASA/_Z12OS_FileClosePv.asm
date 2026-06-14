; =========================================================
; Game Engine Function: _Z12OS_FileClosePv
; Address            : 0x26717C - 0x267226
; =========================================================

26717C:  PUSH            {R4,R5,R7,LR}
26717E:  ADD             R7, SP, #8
267180:  MOV             R4, R0
267182:  CBZ             R4, loc_26719A
267184:  LDRB            R0, [R4,#8]
267186:  CMP             R0, #0
267188:  ITT NE
26718A:  MOVNE           R0, R4; this
26718C:  BLXNE           j__ZN11AndroidFile10AsyncFlushEv; AndroidFile::AsyncFlush(void)
267190:  LDR             R0, [R4,#4]; stream
267192:  CBZ             R0, loc_26719E
267194:  BLX             fclose
267198:  B               loc_2671BA
26719A:  MOVS            R0, #1
26719C:  POP             {R4,R5,R7,PC}
26719E:  LDR             R5, [R4]
2671A0:  CBZ             R5, loc_2671BA
2671A2:  LDRD.W          R1, R0, [R5]; asset
2671A6:  CMP             R1, #1
2671A8:  BNE             loc_2671B0
2671AA:  BLX             fclose
2671AE:  B               loc_2671B4
2671B0:  BLX             AAsset_close
2671B4:  MOV             R0, R5; p
2671B6:  BLX             free
2671BA:  LDRB            R0, [R4,#8]
2671BC:  CBZ             R0, loc_26721C
2671BE:  LDR             R0, [R4,#0xC]
2671C0:  CMP             R0, #0
2671C2:  ITT NE
2671C4:  MOVNE           R0, R4; this
2671C6:  BLXNE           j__ZN11AndroidFile10AsyncFlushEv; AndroidFile::AsyncFlush(void)
2671CA:  LDR             R0, =(fileMutex_ptr - 0x2671D0)
2671CC:  ADD             R0, PC; fileMutex_ptr
2671CE:  LDR             R0, [R0]; fileMutex
2671D0:  LDR             R0, [R0]; mutex
2671D2:  BLX             pthread_mutex_lock
2671D6:  LDR             R0, =(_ZN11AndroidFile14firstAsyncFileE_ptr - 0x2671DC)
2671D8:  ADD             R0, PC; _ZN11AndroidFile14firstAsyncFileE_ptr
2671DA:  LDR             R0, [R0]; AndroidFile::firstAsyncFile ...
2671DC:  LDR             R0, [R0]; AndroidFile::firstAsyncFile
2671DE:  CMP             R0, R4
2671E0:  BEQ             loc_2671F4
2671E2:  LDR             R1, [R0,#0x14]
2671E4:  CMP             R1, R4
2671E6:  BEQ             loc_267204
2671E8:  CMP             R1, #0
2671EA:  MOV             R0, R1
2671EC:  BNE             loc_2671E2
2671EE:  ADD.W           R1, R4, #0x14
2671F2:  B               loc_26720C
2671F4:  LDR             R0, =(_ZN11AndroidFile14firstAsyncFileE_ptr - 0x267200)
2671F6:  MOV             R1, R4
2671F8:  LDR.W           R2, [R1,#0x14]!
2671FC:  ADD             R0, PC; _ZN11AndroidFile14firstAsyncFileE_ptr
2671FE:  LDR             R0, [R0]; AndroidFile::firstAsyncFile ...
267200:  STR             R2, [R0]; AndroidFile::firstAsyncFile
267202:  B               loc_26720C
267204:  MOV             R1, R4
267206:  LDR.W           R2, [R1,#0x14]!
26720A:  STR             R2, [R0,#0x14]
26720C:  LDR             R0, =(fileMutex_ptr - 0x267216)
26720E:  MOVS            R2, #0
267210:  STR             R2, [R1]
267212:  ADD             R0, PC; fileMutex_ptr
267214:  LDR             R0, [R0]; fileMutex
267216:  LDR             R0, [R0]; mutex
267218:  BLX             pthread_mutex_unlock
26721C:  MOV             R0, R4; void *
26721E:  BLX             _ZdlPv; operator delete(void *)
267222:  MOVS            R0, #0
267224:  POP             {R4,R5,R7,PC}
