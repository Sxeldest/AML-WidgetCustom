; =========================================================
; Game Engine Function: _Z21RwCameraStreamGetSizePK8RwCamera
; Address            : 0x1D475C - 0x1D4770
; =========================================================

1D475C:  PUSH            {R7,LR}
1D475E:  MOV             R7, SP
1D4760:  MOV             R1, R0
1D4762:  LDR             R0, =(cameraTKList_ptr - 0x1D4768)
1D4764:  ADD             R0, PC; cameraTKList_ptr
1D4766:  LDR             R0, [R0]; cameraTKList
1D4768:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
1D476C:  ADDS            R0, #0x38 ; '8'
1D476E:  POP             {R7,PC}
