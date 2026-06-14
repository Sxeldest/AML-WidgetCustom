; =========================================================
; Game Engine Function: _Z14WriteCloudInfov
; Address            : 0x2870C4 - 0x2870F8
; =========================================================

2870C4:  PUSH            {R7,LR}
2870C6:  MOV             R7, SP
2870C8:  SUB             SP, SP, #8
2870CA:  LDR             R2, =(aGtacloudsaveSe - 0x2870D6); "gtacloudsave.set"
2870CC:  ADD             R1, SP, #0x10+var_C
2870CE:  MOVS            R0, #1
2870D0:  MOVS            R3, #1
2870D2:  ADD             R2, PC; "gtacloudsave.set"
2870D4:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
2870D8:  CBZ             R0, loc_2870DE
2870DA:  ADD             SP, SP, #8
2870DC:  POP             {R7,PC}
2870DE:  LDR             R1, =(myCloudSaves_ptr - 0x2870EA)
2870E0:  MOV.W           R2, #0x182; int
2870E4:  LDR             R0, [SP,#0x10+var_C]; void *
2870E6:  ADD             R1, PC; myCloudSaves_ptr
2870E8:  LDR             R1, [R1]; myCloudSaves ; ptr
2870EA:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
2870EE:  LDR             R0, [SP,#0x10+var_C]; this
2870F0:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
2870F4:  ADD             SP, SP, #8
2870F6:  POP             {R7,PC}
