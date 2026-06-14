; =========================================================
; Game Engine Function: _Z23RpMaterialStreamGetSizePK10RpMaterial
; Address            : 0x217678 - 0x21769C
; =========================================================

217678:  PUSH            {R4,R5,R7,LR}
21767A:  ADD             R7, SP, #8
21767C:  MOV             R4, R0
21767E:  LDR             R0, [R4]
217680:  CBZ             R0, loc_21768C
217682:  BLX             j__Z22RwTextureStreamGetSizePK9RwTexture; RwTextureStreamGetSize(RwTexture const*)
217686:  ADD.W           R5, R0, #0x40 ; '@'
21768A:  B               loc_21768E
21768C:  MOVS            R5, #0x34 ; '4'
21768E:  LDR             R0, =(dword_683BC4 - 0x217696)
217690:  MOV             R1, R4
217692:  ADD             R0, PC; dword_683BC4
217694:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
217698:  ADD             R0, R5
21769A:  POP             {R4,R5,R7,PC}
