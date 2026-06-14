; =========================================================
; Game Engine Function: _ZN11CRoadBlocks4InitEv
; Address            : 0x324F20 - 0x324FB2
; =========================================================

324F20:  PUSH            {R4,R5,R7,LR}
324F22:  ADD             R7, SP, #8
324F24:  LDR             R0, =(_ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr - 0x324F2E)
324F26:  MOVS            R5, #0
324F28:  LDR             R1, =(_ZN11CRoadBlocks7InOrOutE_ptr - 0x324F30)
324F2A:  ADD             R0, PC; _ZN11CRoadBlocks26bGenerateDynamicRoadBlocksE_ptr
324F2C:  ADD             R1, PC; _ZN11CRoadBlocks7InOrOutE_ptr
324F2E:  LDR             R2, [R0]; CRoadBlocks::bGenerateDynamicRoadBlocks ...
324F30:  LDR             R0, [R1]; CRoadBlocks::InOrOut ...
324F32:  MOVW            R1, #0x145
324F36:  STRB            R5, [R2]; CRoadBlocks::bGenerateDynamicRoadBlocks
324F38:  MOVS            R2, #1
324F3A:  BLX             j___aeabi_memset8
324F3E:  ADR             R0, aDataPathsRoadb; "data\\paths\\roadblox.dat"
324F40:  ADR             R1, aRb_5; "rb"
324F42:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
324F46:  MOV             R4, R0
324F48:  LDR             R0, =(_ZN11CRoadBlocks13NumRoadBlocksE_ptr - 0x324F50)
324F4A:  MOVS            R2, #4; n
324F4C:  ADD             R0, PC; _ZN11CRoadBlocks13NumRoadBlocksE_ptr
324F4E:  LDR             R1, [R0]; ptr
324F50:  MOV             R0, R4; this
324F52:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
324F56:  LDR             R0, =(_ZN11CRoadBlocks14RoadBlockNodesE_ptr - 0x324F60)
324F58:  MOVW            R2, #0x514; n
324F5C:  ADD             R0, PC; _ZN11CRoadBlocks14RoadBlockNodesE_ptr
324F5E:  LDR             R1, [R0]; ptr
324F60:  MOV             R0, R4; this
324F62:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
324F66:  MOV             R0, R4; this
324F68:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
324F6C:  LDR             R0, =(_ZN11CRoadBlocks17aScriptRoadBlocksE_ptr - 0x324F72)
324F6E:  ADD             R0, PC; _ZN11CRoadBlocks17aScriptRoadBlocksE_ptr
324F70:  LDR             R0, [R0]; CRoadBlocks::aScriptRoadBlocks ...
324F72:  STRB.W          R5, [R0,#(byte_7B75E0 - 0x7B75AC)]
324F76:  STRB            R5, [R0,#(byte_7B75C4 - 0x7B75AC)]
324F78:  STRB.W          R5, [R0,#(byte_7B75FC - 0x7B75AC)]
324F7C:  STRB.W          R5, [R0,#(byte_7B7618 - 0x7B75AC)]
324F80:  STRB.W          R5, [R0,#(byte_7B7634 - 0x7B75AC)]
324F84:  STRB.W          R5, [R0,#(byte_7B7650 - 0x7B75AC)]
324F88:  STRB.W          R5, [R0,#(byte_7B766C - 0x7B75AC)]
324F8C:  STRB.W          R5, [R0,#(byte_7B7688 - 0x7B75AC)]
324F90:  STRB.W          R5, [R0,#(byte_7B76A4 - 0x7B75AC)]
324F94:  STRB.W          R5, [R0,#(byte_7B76C0 - 0x7B75AC)]
324F98:  STRB.W          R5, [R0,#(byte_7B76DC - 0x7B75AC)]
324F9C:  STRB.W          R5, [R0,#(byte_7B76F8 - 0x7B75AC)]
324FA0:  STRB.W          R5, [R0,#(byte_7B7714 - 0x7B75AC)]
324FA4:  STRB.W          R5, [R0,#(byte_7B7730 - 0x7B75AC)]
324FA8:  STRB.W          R5, [R0,#(byte_7B774C - 0x7B75AC)]
324FAC:  STRB.W          R5, [R0,#(dword_7B7768 - 0x7B75AC)]
324FB0:  POP             {R4,R5,R7,PC}
