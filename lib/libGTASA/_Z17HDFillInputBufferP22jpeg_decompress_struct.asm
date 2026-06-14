; =========================================================
; Game Engine Function: _Z17HDFillInputBufferP22jpeg_decompress_struct
; Address            : 0x4820DC - 0x48210C
; =========================================================

4820DC:  PUSH            {R4,R6,R7,LR}
4820DE:  ADD             R7, SP, #8
4820E0:  MOV             R4, R0
4820E2:  LDR             R0, =(dword_9EC2B4 - 0x4820EE)
4820E4:  LDR             R1, =(unk_9BA2B0 - 0x4820F0)
4820E6:  MOV.W           R2, #stru_31FF8.st_size; char *
4820EA:  ADD             R0, PC; dword_9EC2B4
4820EC:  ADD             R1, PC; unk_9BA2B0 ; unsigned int
4820EE:  LDR             R0, [R0]; this
4820F0:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
4820F4:  CMP             R0, #1
4820F6:  BLT             loc_482108
4820F8:  LDR             R1, [R4,#0x18]
4820FA:  LDR             R2, =(unk_9BA2B0 - 0x482100)
4820FC:  ADD             R2, PC; unk_9BA2B0
4820FE:  STR             R2, [R1]
482100:  LDR             R1, [R4,#0x18]
482102:  STR             R0, [R1,#4]
482104:  MOVS            R0, #1
482106:  POP             {R4,R6,R7,PC}
482108:  MOVS            R0, #0
48210A:  POP             {R4,R6,R7,PC}
