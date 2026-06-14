; =========================================================
; Game Engine Function: _ZN5CText15ReadChunkHeaderEP11ChunkHeaderjPjh
; Address            : 0x54D7AC - 0x54D7C4
; =========================================================

54D7AC:  PUSH            {R4,R6,R7,LR}
54D7AE:  ADD             R7, SP, #8
54D7B0:  MOV             R0, R2; this
54D7B2:  MOVS            R2, #byte_8; char *
54D7B4:  MOV             R4, R3
54D7B6:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
54D7BA:  LDR             R0, [R4]
54D7BC:  ADDS            R0, #8
54D7BE:  STR             R0, [R4]
54D7C0:  MOVS            R0, #1
54D7C2:  POP             {R4,R6,R7,PC}
