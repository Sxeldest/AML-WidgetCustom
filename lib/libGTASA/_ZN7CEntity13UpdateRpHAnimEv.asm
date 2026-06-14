; =========================================================
; Game Engine Function: _ZN7CEntity13UpdateRpHAnimEv
; Address            : 0x3EBFF6 - 0x3EC02A
; =========================================================

3EBFF6:  PUSH            {R4,R6,R7,LR}
3EBFF8:  ADD             R7, SP, #8
3EBFFA:  MOV             R4, R0
3EBFFC:  LDR             R0, [R4,#0x18]
3EBFFE:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
3EC002:  CBZ             R0, locret_3EC028
3EC004:  LDR             R0, [R0,#0x18]
3EC006:  BLX             j_RpSkinGeometryGetSkin
3EC00A:  CMP             R0, #0
3EC00C:  IT EQ
3EC00E:  POPEQ           {R4,R6,R7,PC}
3EC010:  LDRB            R0, [R4,#0x1E]
3EC012:  MOVS            R1, #0
3EC014:  CMP.W           R1, R0,LSR#7
3EC018:  BNE             locret_3EC028
3EC01A:  LDR             R0, [R4,#0x18]
3EC01C:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
3EC020:  POP.W           {R4,R6,R7,LR}
3EC024:  B.W             j_j__Z30RpHAnimHierarchyUpdateMatricesP16RpHAnimHierarchy; j_RpHAnimHierarchyUpdateMatrices(RpHAnimHierarchy *)
3EC028:  POP             {R4,R6,R7,PC}
