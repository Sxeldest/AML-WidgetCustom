; =========================================================
; Game Engine Function: _ZN7ZIPFile4OpenEi16OSFileAccessTypePj
; Address            : 0x26FDA4 - 0x26FE1C
; =========================================================

26FDA4:  PUSH            {R4-R7,LR}
26FDA6:  ADD             R7, SP, #0xC
26FDA8:  PUSH.W          {R8-R11}
26FDAC:  SUB             SP, SP, #4
26FDAE:  MOV             R10, R0
26FDB0:  ADD.W           R6, R10, #0x10
26FDB4:  MOV             R8, R3
26FDB6:  MOV             R4, R2
26FDB8:  MOV             R9, R1
26FDBA:  MOVS            R5, #0x15
26FDBC:  MOV             R11, SP
26FDBE:  MOVS            R0, #0
26FDC0:  MOV             R1, R11
26FDC2:  MOV             R2, R6
26FDC4:  MOV             R3, R4
26FDC6:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
26FDCA:  CBZ             R0, loc_26FDD8
26FDCC:  MOVS            R0, #0x1E; useconds
26FDCE:  BLX             usleep
26FDD2:  SUBS            R5, #1
26FDD4:  CMP             R5, #1
26FDD6:  BGT             loc_26FDBE
26FDD8:  LDR.W           R0, [R10,#0xC]
26FDDC:  ADD.W           R6, R9, R9,LSL#1
26FDE0:  LDR             R4, [SP,#0x20+var_20]
26FDE2:  LDR.W           R5, [R0,R6,LSL#2]
26FDE6:  ADD.W           R0, R0, R6,LSL#2
26FDEA:  LDR.W           R9, [R0,#4]
26FDEE:  MOV             R0, R4; this
26FDF0:  MOV             R1, R5; offset
26FDF2:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
26FDF6:  LDR             R0, [R4,#0x1C]
26FDF8:  CMP.W           R8, #0
26FDFC:  ADD             R0, R5
26FDFE:  STRD.W          R9, R0, [R4,#0x18]
26FE02:  ITTTT NE
26FE04:  LDRNE.W         R0, [R10,#0xC]
26FE08:  ADDNE.W         R0, R0, R6,LSL#2
26FE0C:  LDRNE           R0, [R0,#4]
26FE0E:  STRNE.W         R0, [R8]
26FE12:  MOV             R0, R4
26FE14:  ADD             SP, SP, #4
26FE16:  POP.W           {R8-R11}
26FE1A:  POP             {R4-R7,PC}
