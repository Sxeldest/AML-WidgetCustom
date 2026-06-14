; =========================================================
; Game Engine Function: _ZN8CFileMgr6SetDirEPKc
; Address            : 0x3F0C04 - 0x3F0C58
; =========================================================

3F0C04:  PUSH            {R4,R6,R7,LR}
3F0C06:  ADD             R7, SP, #8
3F0C08:  LDR             R1, =(_ZN8CFileMgr10ms_dirNameE_ptr - 0x3F0C14)
3F0C0A:  MOV             R4, R0
3F0C0C:  LDR             R0, =(_ZN8CFileMgr12fileDataAreaE_ptr - 0x3F0C16)
3F0C0E:  LDR             R2, =(_ZN8CFileMgr14ms_rootDirNameE_ptr - 0x3F0C18)
3F0C10:  ADD             R1, PC; _ZN8CFileMgr10ms_dirNameE_ptr
3F0C12:  ADD             R0, PC; _ZN8CFileMgr12fileDataAreaE_ptr
3F0C14:  ADD             R2, PC; _ZN8CFileMgr14ms_rootDirNameE_ptr
3F0C16:  LDR             R3, [R0]; CFileMgr::fileDataArea ...
3F0C18:  LDR             R0, [R1]; char *
3F0C1A:  LDR             R1, [R2]; char *
3F0C1C:  MOVS            R2, #0
3F0C1E:  STR             R2, [R3]; CFileMgr::fileDataArea
3F0C20:  BLX             strcpy
3F0C24:  LDRB            R0, [R4]
3F0C26:  CBZ             R0, locret_3F0C56
3F0C28:  LDR             R0, =(_ZN8CFileMgr10ms_dirNameE_ptr - 0x3F0C30)
3F0C2A:  MOV             R1, R4; src
3F0C2C:  ADD             R0, PC; _ZN8CFileMgr10ms_dirNameE_ptr
3F0C2E:  LDR             R0, [R0]; dest
3F0C30:  BLX             strcat
3F0C34:  MOV             R0, R4; char *
3F0C36:  BLX             strlen
3F0C3A:  ADD             R0, R4
3F0C3C:  LDRB.W          R0, [R0,#-1]
3F0C40:  CMP             R0, #0x5C ; '\'
3F0C42:  IT EQ
3F0C44:  POPEQ           {R4,R6,R7,PC}
3F0C46:  LDR             R0, =(_ZN8CFileMgr10ms_dirNameE_ptr - 0x3F0C4C)
3F0C48:  ADD             R0, PC; _ZN8CFileMgr10ms_dirNameE_ptr
3F0C4A:  LDR             R4, [R0]; CFileMgr::ms_dirName ...
3F0C4C:  MOV             R0, R4; char *
3F0C4E:  BLX             strlen
3F0C52:  MOVS            R1, #0x5C ; '\'
3F0C54:  STRH            R1, [R4,R0]
3F0C56:  POP             {R4,R6,R7,PC}
