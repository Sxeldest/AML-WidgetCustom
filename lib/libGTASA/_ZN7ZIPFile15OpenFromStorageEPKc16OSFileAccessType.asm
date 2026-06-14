; =========================================================
; Game Engine Function: _ZN7ZIPFile15OpenFromStorageEPKc16OSFileAccessType
; Address            : 0x267038 - 0x2670AC
; =========================================================

267038:  PUSH            {R4-R7,LR}
26703A:  ADD             R7, SP, #0xC
26703C:  PUSH.W          {R8-R10}
267040:  SUB             SP, SP, #8
267042:  MOV             R4, R1
267044:  MOV             R1, SP; char *
267046:  BLX             j__ZN7ZIPFile15FindFromStorageEPKcPPS_; ZIPFile::FindFromStorage(char const*,ZIPFile**)
26704A:  MOV             R8, R0
26704C:  ADDS.W          R0, R8, #1
267050:  BEQ             loc_2670A0
267052:  LDR.W           R9, [SP,#0x20+var_20]
267056:  ADD.W           R10, SP, #0x20+var_1C
26705A:  MOVS            R5, #0x15
26705C:  ADD.W           R6, R9, #0x10
267060:  MOVS            R0, #0
267062:  MOV             R1, R10
267064:  MOV             R2, R6
267066:  MOV             R3, R4
267068:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
26706C:  CBZ             R0, loc_26707A
26706E:  MOVS            R0, #0x1E; useconds
267070:  BLX             usleep
267074:  SUBS            R5, #1
267076:  CMP             R5, #1
267078:  BGT             loc_267060
26707A:  LDR.W           R0, [R9,#0xC]
26707E:  ADD.W           R1, R8, R8,LSL#1
267082:  LDR             R4, [SP,#0x20+var_1C]
267084:  LDR.W           R5, [R0,R1,LSL#2]
267088:  ADD.W           R0, R0, R1,LSL#2
26708C:  LDR             R6, [R0,#4]
26708E:  MOV             R0, R4; this
267090:  MOV             R1, R5; offset
267092:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
267096:  LDR             R0, [R4,#0x1C]
267098:  ADD             R0, R5
26709A:  STRD.W          R6, R0, [R4,#0x18]
26709E:  B               loc_2670A2
2670A0:  MOVS            R4, #0
2670A2:  MOV             R0, R4
2670A4:  ADD             SP, SP, #8
2670A6:  POP.W           {R8-R10}
2670AA:  POP             {R4-R7,PC}
