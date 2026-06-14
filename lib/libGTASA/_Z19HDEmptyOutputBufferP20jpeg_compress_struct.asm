; =========================================================
; Game Engine Function: _Z19HDEmptyOutputBufferP20jpeg_compress_struct
; Address            : 0x482140 - 0x482172
; =========================================================

482140:  PUSH            {R4-R7,LR}
482142:  ADD             R7, SP, #0xC
482144:  PUSH.W          {R11}
482148:  MOV             R4, R0
48214A:  LDR             R0, =(dword_9EC2B4 - 0x482156)
48214C:  LDR             R5, =(unk_9BA2B0 - 0x48215C)
48214E:  MOV.W           R2, #stru_31FF8.st_size; char *
482152:  ADD             R0, PC; dword_9EC2B4
482154:  MOV.W           R6, #0x32000
482158:  ADD             R5, PC; unk_9BA2B0
48215A:  LDR             R0, [R0]; this
48215C:  MOV             R1, R5; unsigned int
48215E:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
482162:  LDR             R0, [R4,#0x18]
482164:  STR             R5, [R0]
482166:  LDR             R0, [R4,#0x18]
482168:  STR             R6, [R0,#4]
48216A:  MOVS            R0, #1
48216C:  POP.W           {R11}
482170:  POP             {R4-R7,PC}
