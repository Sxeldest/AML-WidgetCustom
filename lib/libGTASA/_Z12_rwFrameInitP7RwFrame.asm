; =========================================================
; Game Engine Function: _Z12_rwFrameInitP7RwFrame
; Address            : 0x1D81C0 - 0x1D8226
; =========================================================

1D81C0:  MOV             R1, R0
1D81C2:  LDR             R0, =(frameTKList_ptr - 0x1D81D0)
1D81C4:  ADD.W           R3, R1, #0x90
1D81C8:  MOVW            R12, #:lower16:(elf_hash_chain+0xFE9B)
1D81CC:  ADD             R0, PC; frameTKList_ptr
1D81CE:  MOVS            R2, #0
1D81D0:  STRD.W          R2, R2, [R1]
1D81D4:  MOVT            R12, #:upper16:(elf_hash_chain+0xFE9B)
1D81D8:  LDR             R0, [R0]; frameTKList
1D81DA:  STRD.W          R3, R3, [R1,#0x90]
1D81DE:  MOV.W           R3, #0x3F800000
1D81E2:  STRD.W          R2, R3, [R1,#0x20]
1D81E6:  STR             R2, [R1,#0x18]
1D81E8:  STRD.W          R3, R2, [R1,#0x10]
1D81EC:  STR             R2, [R1,#0x28]
1D81EE:  STRD.W          R2, R2, [R1,#0x30]
1D81F2:  STR             R3, [R1,#0x38]
1D81F4:  STRD.W          R2, R2, [R1,#0x44]
1D81F8:  STR.W           R12, [R1,#0x1C]
1D81FC:  STR             R2, [R1,#0x40]
1D81FE:  STRD.W          R2, R2, [R1,#0x70]
1D8202:  STR             R3, [R1,#0x78]
1D8204:  STRD.W          R2, R2, [R1,#0x80]
1D8208:  STR.W           R2, [R1,#0x88]
1D820C:  STRD.W          R3, R2, [R1,#0x50]
1D8210:  STRD.W          R2, R12, [R1,#0x58]
1D8214:  STRD.W          R2, R3, [R1,#0x60]
1D8218:  STR             R2, [R1,#0x68]
1D821A:  STRD.W          R2, R2, [R1,#0x98]
1D821E:  STR.W           R1, [R1,#0xA0]
1D8222:  B.W             j_j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; j__rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
