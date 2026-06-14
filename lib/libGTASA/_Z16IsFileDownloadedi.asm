; =========================================================
; Game Engine Function: _Z16IsFileDownloadedi
; Address            : 0x296974 - 0x2969BC
; =========================================================

296974:  PUSH            {R4,R5,R7,LR}
296976:  ADD             R7, SP, #8
296978:  SUB             SP, SP, #8
29697A:  MOV             R4, R0
29697C:  LDR             R0, =(AmazonDownloadFilenames_ptr - 0x296986)
29697E:  LSLS            R1, R4, #4
296980:  MOVS            R3, #0
296982:  ADD             R0, PC; AmazonDownloadFilenames_ptr
296984:  LDR             R0, [R0]; AmazonDownloadFilenames
296986:  LDR             R2, [R0,R1]
296988:  ADD             R1, SP, #0x10+var_C
29698A:  MOVS            R0, #0
29698C:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
296990:  CBNZ            R0, loc_2969B6
296992:  LDR             R0, [SP,#0x10+var_C]; this
296994:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
296998:  MOV             R5, R0
29699A:  LDR             R0, [SP,#0x10+var_C]; this
29699C:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
2969A0:  LDR             R0, =(AmazonDownloadFilenames_ptr - 0x2969A6)
2969A2:  ADD             R0, PC; AmazonDownloadFilenames_ptr
2969A4:  LDR             R0, [R0]; AmazonDownloadFilenames
2969A6:  ADD.W           R0, R0, R4,LSL#4
2969AA:  LDR             R0, [R0,#4]
2969AC:  CMP             R5, R0
2969AE:  BNE             loc_2969B6
2969B0:  MOVS            R0, #1
2969B2:  ADD             SP, SP, #8
2969B4:  POP             {R4,R5,R7,PC}
2969B6:  MOVS            R0, #0
2969B8:  ADD             SP, SP, #8
2969BA:  POP             {R4,R5,R7,PC}
