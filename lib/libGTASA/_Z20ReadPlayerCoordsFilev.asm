; =========================================================
; Game Engine Function: _Z20ReadPlayerCoordsFilev
; Address            : 0x472E2C - 0x472E92
; =========================================================

472E2C:  PUSH            {R4,R5,R7,LR}
472E2E:  ADD             R7, SP, #8
472E30:  SUB             SP, SP, #0x10
472E32:  ADR             R0, aPlayercoordsTx; "playercoords.txt"
472E34:  ADR             R1, aR_7; "r"
472E36:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
472E3A:  MOV             R4, R0
472E3C:  CBZ             R4, loc_472E8E
472E3E:  MOV             R0, R4; this
472E40:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
472E44:  ADD             R2, SP, #0x18+var_14
472E46:  ADD.W           R1, R2, #8
472E4A:  STR             R1, [SP,#0x18+var_18]
472E4C:  ADDS            R3, R2, #4
472E4E:  ADR             R1, aFFF_0; "%f%f%f"
472E50:  BLX             sscanf
472E54:  CMP             R0, #3
472E56:  BNE             loc_472E88
472E58:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x472E5E)
472E5A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
472E5C:  LDR             R0, [R0]; CWorld::Players ...
472E5E:  LDR             R5, [R0]; CWorld::Players
472E60:  CBZ             R5, loc_472E88
472E62:  ADD             R0, SP, #0x18+var_14; this
472E64:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
472E68:  LDRD.W          R2, R1, [SP,#0x18+var_14]
472E6C:  LDR             R3, [R5,#0x14]
472E6E:  LDR             R0, [SP,#0x18+var_C]
472E70:  CBZ             R3, loc_472E7E
472E72:  STR             R2, [R3,#0x30]
472E74:  LDR             R2, [R5,#0x14]
472E76:  STR             R1, [R2,#0x34]
472E78:  LDR             R1, [R5,#0x14]
472E7A:  ADDS            R1, #0x38 ; '8'
472E7C:  B               loc_472E86
472E7E:  STRD.W          R2, R1, [R5,#4]
472E82:  ADD.W           R1, R5, #0xC; unsigned int
472E86:  STR             R0, [R1]
472E88:  MOV             R0, R4; this
472E8A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
472E8E:  ADD             SP, SP, #0x10
472E90:  POP             {R4,R5,R7,PC}
