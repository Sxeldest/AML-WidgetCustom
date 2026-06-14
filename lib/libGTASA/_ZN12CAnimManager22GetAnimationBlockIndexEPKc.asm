; =========================================================
; Game Engine Function: _ZN12CAnimManager22GetAnimationBlockIndexEPKc
; Address            : 0x38DE98 - 0x38DEE6
; =========================================================

38DE98:  PUSH            {R4-R7,LR}
38DE9A:  ADD             R7, SP, #0xC
38DE9C:  PUSH.W          {R8}
38DEA0:  MOV             R8, R0
38DEA2:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38DEA8)
38DEA4:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38DEA6:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38DEA8:  LDR             R6, [R0]; CAnimManager::ms_numAnimBlocks
38DEAA:  CMP             R6, #1
38DEAC:  BLT             loc_38DEC8
38DEAE:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38DEB6)
38DEB0:  MOVS            R5, #0
38DEB2:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38DEB4:  LDR             R4, [R0]; CAnimManager::ms_aAnimBlocks ...
38DEB6:  MOV             R0, R4; char *
38DEB8:  MOV             R1, R8; char *
38DEBA:  BLX             strcasecmp
38DEBE:  CBZ             R0, loc_38DECA
38DEC0:  ADDS            R5, #1
38DEC2:  ADDS            R4, #0x20 ; ' '
38DEC4:  CMP             R5, R6
38DEC6:  BLT             loc_38DEB6
38DEC8:  MOVS            R4, #0
38DECA:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38DED2)
38DECC:  CMP             R4, #0
38DECE:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38DED0:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
38DED2:  SUB.W           R0, R4, R0
38DED6:  MOV.W           R0, R0,ASR#5
38DEDA:  IT EQ
38DEDC:  MOVEQ.W         R0, #0xFFFFFFFF
38DEE0:  POP.W           {R8}
38DEE4:  POP             {R4-R7,PC}
