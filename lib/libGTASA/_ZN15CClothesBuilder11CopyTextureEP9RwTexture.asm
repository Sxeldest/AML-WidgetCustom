; =========================================================
; Game Engine Function: _ZN15CClothesBuilder11CopyTextureEP9RwTexture
; Address            : 0x459830 - 0x4598A4
; =========================================================

459830:  PUSH            {R4-R7,LR}
459832:  ADD             R7, SP, #0xC
459834:  PUSH.W          {R8}
459838:  LDR             R4, [R0]
45983A:  MOVS            R0, #1; bool
45983C:  LDRB.W          R5, [R4,#0x22]
459840:  BLX             j__Z18RwRasterSetKeepCPUb; RwRasterSetKeepCPU(bool)
459844:  ADD.W           R2, R4, #0xC
459848:  MOV.W           R3, #0x6F00
45984C:  AND.W           R3, R3, R5,LSL#8
459850:  LDM             R2, {R0-R2}; int
459852:  ORR.W           R3, R3, #4; int
459856:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
45985A:  MOV             R5, R0
45985C:  MOVS            R0, #0; bool
45985E:  BLX             j__Z18RwRasterSetKeepCPUb; RwRasterSetKeepCPU(bool)
459862:  MOV             R0, R4
459864:  MOVS            R1, #0
459866:  MOVS            R2, #2
459868:  MOV.W           R8, #2
45986C:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
459870:  MOV             R6, R0
459872:  MOV             R0, R5
459874:  MOVS            R1, #0
459876:  MOVS            R2, #1
459878:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
45987C:  LDR             R1, [R4,#0x10]
45987E:  LDR             R2, [R4,#0x18]
459880:  MULS            R2, R1; size_t
459882:  MOV             R1, R6; void *
459884:  BLX             memcpy_1
459888:  MOV             R0, R4
45988A:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
45988E:  MOV             R0, R5
459890:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459894:  MOV             R0, R5
459896:  BLX             j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
45989A:  STRB.W          R8, [R0,#0x50]
45989E:  POP.W           {R8}
4598A2:  POP             {R4-R7,PC}
