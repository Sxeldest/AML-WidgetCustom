; =========================================================
; Game Engine Function: _ZN10CDirectory12WriteDirFileEPKc
; Address            : 0x3EAC74 - 0x3EACAC
; =========================================================

3EAC74:  PUSH            {R4-R7,LR}
3EAC76:  ADD             R7, SP, #0xC
3EAC78:  PUSH.W          {R11}
3EAC7C:  MOV             R4, R0
3EAC7E:  MOV             R0, R1; this
3EAC80:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
3EAC84:  MOV             R5, R0
3EAC86:  LDR             R0, [R4,#8]
3EAC88:  LDR             R1, [R4]; unsigned int
3EAC8A:  LSLS            R2, R0, #5; char *
3EAC8C:  MOV             R0, R5; this
3EAC8E:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
3EAC92:  MOV             R6, R0
3EAC94:  MOV             R0, R5; this
3EAC96:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
3EAC9A:  LDR             R1, [R4,#8]
3EAC9C:  MOVS            R0, #0
3EAC9E:  CMP.W           R6, R1,LSL#5
3EACA2:  IT EQ
3EACA4:  MOVEQ           R0, #1
3EACA6:  POP.W           {R11}
3EACAA:  POP             {R4-R7,PC}
