; =========================================================
; Game Engine Function: _ZN8CGridRef4InitEv
; Address            : 0x5AD928 - 0x5AD9E0
; =========================================================

5AD928:  PUSH            {R4-R7,LR}
5AD92A:  ADD             R7, SP, #0xC
5AD92C:  PUSH.W          {R8-R11}
5AD930:  SUB             SP, SP, #0x34
5AD932:  LDR             R0, =(__stack_chk_guard_ptr - 0x5AD938)
5AD934:  ADD             R0, PC; __stack_chk_guard_ptr
5AD936:  LDR             R0, [R0]; __stack_chk_guard
5AD938:  LDR             R1, [R0]
5AD93A:  LDR             R0, =(byte_61CD7E - 0x5AD944)
5AD93C:  STR             R1, [SP,#0x50+var_20]
5AD93E:  MOVS            R1, #0; char *
5AD940:  ADD             R0, PC; byte_61CD7E ; this
5AD942:  STRB.W          R1, [R7,#var_41]
5AD946:  STR             R1, [SP,#0x50+var_48]
5AD948:  BLX.W           j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
5AD94C:  ADR             R0, aDataGridrefDat; "DATA\\GRIDREF.DAT"
5AD94E:  ADR             R1, aRb_20; "rb"
5AD950:  BLX.W           j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
5AD954:  MOV             R4, R0
5AD956:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5AD95A:  CMP             R0, #0
5AD95C:  BEQ             loc_5AD9C0
5AD95E:  LDR             R1, =(RwEngineInstance_ptr - 0x5AD96E)
5AD960:  ADD.W           R11, SP, #0x50+var_40
5AD964:  LDR             R2, =(GridRefList_ptr - 0x5AD974)
5AD966:  ADD.W           R10, SP, #0x50+var_48
5AD96A:  ADD             R1, PC; RwEngineInstance_ptr
5AD96C:  MOVW            R8, #0x5160
5AD970:  ADD             R2, PC; GridRefList_ptr
5AD972:  LDR             R6, [R1]; RwEngineInstance
5AD974:  LDR             R5, [R2]; GridRefList
5AD976:  LDRB            R1, [R0]
5AD978:  CMP             R1, #0
5AD97A:  IT NE
5AD97C:  CMPNE           R1, #0x23 ; '#'
5AD97E:  BEQ             loc_5AD9B6
5AD980:  ADR             R1, aCDS; "%c%d %s"
5AD982:  SUB.W           R2, R7, #-var_41
5AD986:  MOV             R3, R10
5AD988:  STR.W           R11, [SP,#0x50+var_50]
5AD98C:  BLX.W           sscanf
5AD990:  LDRB.W          R0, [R7,#var_41]
5AD994:  LDR             R1, [R6]
5AD996:  LDR             R2, [SP,#0x50+var_48]
5AD998:  ADD.W           R0, R0, R0,LSL#2
5AD99C:  LDR.W           R1, [R1,#0x120]
5AD9A0:  ADD.W           R0, R5, R0,LSL#6
5AD9A4:  ADD.W           R9, R0, R2,LSL#5
5AD9A8:  MOV             R0, R11
5AD9AA:  BLX             R1
5AD9AC:  MOV             R1, R0; char *
5AD9AE:  SUB.W           R0, R9, R8; char *
5AD9B2:  BLX.W           strcpy
5AD9B6:  MOV             R0, R4; this
5AD9B8:  BLX.W           j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
5AD9BC:  CMP             R0, #0
5AD9BE:  BNE             loc_5AD976
5AD9C0:  MOV             R0, R4; this
5AD9C2:  BLX.W           j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
5AD9C6:  LDR             R0, =(__stack_chk_guard_ptr - 0x5AD9CE)
5AD9C8:  LDR             R1, [SP,#0x50+var_20]
5AD9CA:  ADD             R0, PC; __stack_chk_guard_ptr
5AD9CC:  LDR             R0, [R0]; __stack_chk_guard
5AD9CE:  LDR             R0, [R0]
5AD9D0:  SUBS            R0, R0, R1
5AD9D2:  ITTT EQ
5AD9D4:  ADDEQ           SP, SP, #0x34 ; '4'
5AD9D6:  POPEQ.W         {R8-R11}
5AD9DA:  POPEQ           {R4-R7,PC}
5AD9DC:  BLX.W           __stack_chk_fail
