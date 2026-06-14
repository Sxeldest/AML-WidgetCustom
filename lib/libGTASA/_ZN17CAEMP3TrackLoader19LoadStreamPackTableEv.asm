; =========================================================
; Game Engine Function: _ZN17CAEMP3TrackLoader19LoadStreamPackTableEv
; Address            : 0x27F194 - 0x27F278
; =========================================================

27F194:  PUSH            {R4-R7,LR}
27F196:  ADD             R7, SP, #0xC
27F198:  PUSH.W          {R8-R10}
27F19C:  SUB             SP, SP, #8
27F19E:  ADD             R1, SP, #0x20+var_1C
27F1A0:  ADR             R2, aAudioConfigStr; "AUDIO\\CONFIG\\STRMPAKS.DAT"
27F1A2:  MOV             R4, R0
27F1A4:  MOVS            R5, #0
27F1A6:  MOVS            R0, #0
27F1A8:  MOVS            R3, #0
27F1AA:  STR             R5, [SP,#0x20+var_1C]
27F1AC:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
27F1B0:  CMP             R0, #0
27F1B2:  BNE             loc_27F26E
27F1B4:  LDR             R0, [SP,#0x20+var_1C]; this
27F1B6:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
27F1BA:  MOV             R5, R0
27F1BC:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
27F1C0:  MOV             R1, R0; ptr
27F1C2:  MOV             R2, R5; n
27F1C4:  STR             R1, [R4,#0x10]
27F1C6:  LDR             R0, [SP,#0x20+var_1C]; this
27F1C8:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27F1CC:  LDR             R0, [SP,#0x20+var_1C]; this
27F1CE:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
27F1D2:  LDRD.W          R1, R6, [R4,#0x18]
27F1D6:  ADD.W           R0, R6, R5,LSR#4
27F1DA:  MOV.W           R9, R5,LSR#4
27F1DE:  CMP             R1, R0
27F1E0:  STR.W           R9, [R4,#8]
27F1E4:  BCS             loc_27F228
27F1E6:  MOVW            R1, #0xAAAB
27F1EA:  LSLS            R0, R0, #2
27F1EC:  MOVT            R1, #0xAAAA
27F1F0:  UMULL.W         R0, R1, R0, R1
27F1F4:  MOVS            R0, #3
27F1F6:  ADD.W           R10, R0, R1,LSR#1
27F1FA:  MOV.W           R0, R10,LSL#2; byte_count
27F1FE:  BLX             malloc
27F202:  LDR.W           R8, [R4,#0x20]
27F206:  MOV             R5, R0
27F208:  CMP.W           R8, #0
27F20C:  BEQ             loc_27F220
27F20E:  LSLS            R2, R6, #2; size_t
27F210:  MOV             R0, R5; void *
27F212:  MOV             R1, R8; void *
27F214:  BLX             memcpy_0
27F218:  MOV             R0, R8; p
27F21A:  BLX             free
27F21E:  LDR             R6, [R4,#0x1C]
27F220:  STR             R5, [R4,#0x20]
27F222:  STR.W           R10, [R4,#0x18]
27F226:  B               loc_27F22A
27F228:  LDR             R5, [R4,#0x20]
27F22A:  ADD.W           R0, R5, R6,LSL#2
27F22E:  MOV.W           R1, R9,LSL#2
27F232:  BLX             j___aeabi_memclr8_0
27F236:  LDRD.W          R0, R1, [R4,#0x18]
27F23A:  ADD.W           R6, R1, R9
27F23E:  STR             R6, [R4,#0x1C]
27F240:  CMP             R0, R6
27F242:  BEQ             loc_27F26C
27F244:  MOV.W           R9, R6,LSL#2
27F248:  MOV             R0, R9; byte_count
27F24A:  BLX             malloc
27F24E:  LDR             R5, [R4,#0x20]
27F250:  MOV             R8, R0
27F252:  CMP             R5, #0
27F254:  BEQ             loc_27F266
27F256:  MOV             R0, R8; void *
27F258:  MOV             R1, R5; void *
27F25A:  MOV             R2, R9; size_t
27F25C:  BLX             memcpy_0
27F260:  MOV             R0, R5; p
27F262:  BLX             free
27F266:  STR.W           R8, [R4,#0x20]
27F26A:  STR             R6, [R4,#0x18]
27F26C:  MOVS            R5, #1
27F26E:  MOV             R0, R5
27F270:  ADD             SP, SP, #8
27F272:  POP.W           {R8-R10}
27F276:  POP             {R4-R7,PC}
