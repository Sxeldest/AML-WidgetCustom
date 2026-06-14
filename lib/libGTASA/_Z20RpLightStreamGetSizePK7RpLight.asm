; =========================================================
; Game Engine Function: _Z20RpLightStreamGetSizePK7RpLight
; Address            : 0x216B4C - 0x216B5E
; =========================================================

216B4C:  PUSH            {R7,LR}
216B4E:  MOV             R7, SP
216B50:  MOV             R1, R0
216B52:  LDR             R0, =(dword_683B90 - 0x216B58)
216B54:  ADD             R0, PC; dword_683B90
216B56:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
216B5A:  ADDS            R0, #0x30 ; '0'
216B5C:  POP             {R7,PC}
