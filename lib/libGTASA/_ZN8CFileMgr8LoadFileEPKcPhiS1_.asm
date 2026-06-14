; =========================================================
; Game Engine Function: _ZN8CFileMgr8LoadFileEPKcPhiS1_
; Address            : 0x3F0D20 - 0x3F0DC4
; =========================================================

3F0D20:  PUSH            {R4-R7,LR}
3F0D22:  ADD             R7, SP, #0xC
3F0D24:  PUSH.W          {R8,R9,R11}
3F0D28:  SUB.W           SP, SP, #0x208
3F0D2C:  MOV             R6, R0
3F0D2E:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F0D38)
3F0D30:  MOV             R8, R1
3F0D32:  LDR             R1, =(_ZN8CFileMgr12fileDataAreaE_ptr - 0x3F0D3C)
3F0D34:  ADD             R0, PC; __stack_chk_guard_ptr
3F0D36:  MOV             R4, R2
3F0D38:  ADD             R1, PC; _ZN8CFileMgr12fileDataAreaE_ptr
3F0D3A:  LDR             R0, [R0]; __stack_chk_guard
3F0D3C:  LDR             R1, [R1]; CFileMgr::fileDataArea ...
3F0D3E:  LDR             R0, [R0]
3F0D40:  STR             R0, [SP,#0x220+var_1C]
3F0D42:  MOV             R0, R6; s
3F0D44:  LDR             R5, [R1]; CFileMgr::fileDataArea
3F0D46:  MOVS            R1, #0x3A ; ':'; c
3F0D48:  BLX             strchr
3F0D4C:  CBZ             R0, loc_3F0D56
3F0D4E:  MOV             R1, SP
3F0D50:  MOV             R0, R5
3F0D52:  MOV             R2, R6
3F0D54:  B               loc_3F0D74
3F0D56:  LDR             R0, =(_ZN8CFileMgr10ms_dirNameE_ptr - 0x3F0D60)
3F0D58:  ADD.W           R9, SP, #0x220+var_21C
3F0D5C:  ADD             R0, PC; _ZN8CFileMgr10ms_dirNameE_ptr
3F0D5E:  LDR             R1, [R0]; char *
3F0D60:  MOV             R0, R9; char *
3F0D62:  BLX             strcpy
3F0D66:  MOV             R0, R9; dest
3F0D68:  MOV             R1, R6; src
3F0D6A:  BLX             strcat
3F0D6E:  MOV             R1, SP
3F0D70:  MOV             R0, R5
3F0D72:  MOV             R2, R9
3F0D74:  MOVS            R3, #0
3F0D76:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
3F0D7A:  CBZ             R0, loc_3F0D82
3F0D7C:  MOV.W           R4, #0xFFFFFFFF
3F0D80:  B               loc_3F0DA6
3F0D82:  LDR             R0, [SP,#0x220+var_220]; this
3F0D84:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
3F0D88:  LDR             R1, [SP,#0x220+var_220]
3F0D8A:  CMP             R0, R4
3F0D8C:  IT CC
3F0D8E:  MOVCC           R4, R0
3F0D90:  MOV             R2, R4; n
3F0D92:  MOV             R0, R1; this
3F0D94:  MOV             R1, R8; ptr
3F0D96:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
3F0D9A:  MOVS            R0, #0
3F0D9C:  STRB.W          R0, [R8,R4]
3F0DA0:  LDR             R0, [SP,#0x220+var_220]; this
3F0DA2:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
3F0DA6:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F0DAE)
3F0DA8:  LDR             R1, [SP,#0x220+var_1C]
3F0DAA:  ADD             R0, PC; __stack_chk_guard_ptr
3F0DAC:  LDR             R0, [R0]; __stack_chk_guard
3F0DAE:  LDR             R0, [R0]
3F0DB0:  SUBS            R0, R0, R1
3F0DB2:  ITTTT EQ
3F0DB4:  MOVEQ           R0, R4
3F0DB6:  ADDEQ.W         SP, SP, #0x208
3F0DBA:  POPEQ.W         {R8,R9,R11}
3F0DBE:  POPEQ           {R4-R7,PC}
3F0DC0:  BLX             __stack_chk_fail
