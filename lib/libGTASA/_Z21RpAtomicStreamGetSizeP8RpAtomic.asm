; =========================================================
; Game Engine Function: _Z21RpAtomicStreamGetSizeP8RpAtomic
; Address            : 0x21485C - 0x21487A
; =========================================================

21485C:  PUSH            {R4,R5,R7,LR}
21485E:  ADD             R7, SP, #8
214860:  MOV             R4, R0
214862:  LDR             R0, [R4,#0x18]
214864:  BLX             j__Z23RpGeometryStreamGetSizePK10RpGeometry; RpGeometryStreamGetSize(RpGeometry const*)
214868:  MOV             R5, R0
21486A:  LDR             R0, =(dword_683B48 - 0x214872)
21486C:  MOV             R1, R4
21486E:  ADD             R0, PC; dword_683B48
214870:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
214874:  ADD             R0, R5
214876:  ADDS            R0, #0x34 ; '4'
214878:  POP             {R4,R5,R7,PC}
