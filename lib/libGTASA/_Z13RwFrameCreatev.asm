; =========================================================
; Game Engine Function: _Z13RwFrameCreatev
; Address            : 0x1D822C - 0x1D82B4
; =========================================================

1D822C:  PUSH            {R4,R6,R7,LR}
1D822E:  ADD             R7, SP, #8
1D8230:  LDR             R0, =(RwEngineInstance_ptr - 0x1D8238)
1D8232:  LDR             R1, =(dword_6BCEB4 - 0x1D823A)
1D8234:  ADD             R0, PC; RwEngineInstance_ptr
1D8236:  ADD             R1, PC; dword_6BCEB4
1D8238:  LDR             R0, [R0]; RwEngineInstance
1D823A:  LDR             R1, [R1]
1D823C:  LDR             R2, [R0]
1D823E:  LDR             R0, [R2,R1]
1D8240:  LDR.W           R1, [R2,#0x13C]
1D8244:  BLX             R1
1D8246:  MOV             R4, R0
1D8248:  MOVS            R0, #0
1D824A:  CMP             R4, #0
1D824C:  IT EQ
1D824E:  POPEQ           {R4,R6,R7,PC}
1D8250:  LDR             R1, =(frameTKList_ptr - 0x1D8260)
1D8252:  ADD.W           R2, R4, #0x90
1D8256:  MOVS            R3, #:lower16:(elf_hash_chain+0xFE9B)
1D8258:  STRD.W          R0, R0, [R4]
1D825C:  ADD             R1, PC; frameTKList_ptr
1D825E:  STRD.W          R2, R2, [R4,#0x90]
1D8262:  MOV.W           R2, #0x3F800000
1D8266:  MOVT            R3, #:upper16:(elf_hash_chain+0xFE9B)
1D826A:  STRD.W          R0, R0, [R4,#0x30]
1D826E:  STR             R2, [R4,#0x38]
1D8270:  STRD.W          R0, R0, [R4,#0x40]
1D8274:  STR             R0, [R4,#0x48]
1D8276:  STRD.W          R2, R0, [R4,#0x10]
1D827A:  STRD.W          R0, R3, [R4,#0x18]
1D827E:  STRD.W          R0, R2, [R4,#0x20]
1D8282:  STR             R0, [R4,#0x28]
1D8284:  STRD.W          R0, R0, [R4,#0x70]
1D8288:  STR             R2, [R4,#0x78]
1D828A:  STRD.W          R0, R0, [R4,#0x80]
1D828E:  STR.W           R0, [R4,#0x88]
1D8292:  STRD.W          R2, R0, [R4,#0x50]
1D8296:  STRD.W          R0, R3, [R4,#0x58]
1D829A:  STRD.W          R0, R2, [R4,#0x60]
1D829E:  STR             R0, [R4,#0x68]
1D82A0:  STRD.W          R0, R0, [R4,#0x98]
1D82A4:  LDR             R0, [R1]; frameTKList
1D82A6:  MOV             R1, R4
1D82A8:  STR.W           R4, [R4,#0xA0]
1D82AC:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1D82B0:  MOV             R0, R4
1D82B2:  POP             {R4,R6,R7,PC}
