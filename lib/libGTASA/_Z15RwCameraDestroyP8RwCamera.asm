; =========================================================
; Game Engine Function: _Z15RwCameraDestroyP8RwCamera
; Address            : 0x1D5F20 - 0x1D5F54
; =========================================================

1D5F20:  PUSH            {R4,R6,R7,LR}
1D5F22:  ADD             R7, SP, #8
1D5F24:  MOV             R4, R0
1D5F26:  LDR             R0, =(cameraTKList_ptr - 0x1D5F2E)
1D5F28:  MOV             R1, R4
1D5F2A:  ADD             R0, PC; cameraTKList_ptr
1D5F2C:  LDR             R0, [R0]; cameraTKList
1D5F2E:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1D5F32:  MOV             R0, R4; void *
1D5F34:  BLX             j__Z29_rwObjectHasFrameReleaseFramePv; _rwObjectHasFrameReleaseFrame(void *)
1D5F38:  LDR             R0, =(RwEngineInstance_ptr - 0x1D5F40)
1D5F3A:  LDR             R1, =(dword_6BCD28 - 0x1D5F42)
1D5F3C:  ADD             R0, PC; RwEngineInstance_ptr
1D5F3E:  ADD             R1, PC; dword_6BCD28
1D5F40:  LDR             R0, [R0]; RwEngineInstance
1D5F42:  LDR             R1, [R1]
1D5F44:  LDR             R2, [R0]
1D5F46:  LDR             R0, [R2,R1]
1D5F48:  MOV             R1, R4
1D5F4A:  LDR.W           R2, [R2,#0x140]
1D5F4E:  BLX             R2
1D5F50:  MOVS            R0, #1
1D5F52:  POP             {R4,R6,R7,PC}
