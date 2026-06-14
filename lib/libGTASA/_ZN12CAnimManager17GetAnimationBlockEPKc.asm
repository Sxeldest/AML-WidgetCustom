; =========================================================
; Game Engine Function: _ZN12CAnimManager17GetAnimationBlockEPKc
; Address            : 0x38DE54 - 0x38DE8E
; =========================================================

38DE54:  PUSH            {R4-R7,LR}
38DE56:  ADD             R7, SP, #0xC
38DE58:  PUSH.W          {R8}
38DE5C:  MOV             R8, R0
38DE5E:  LDR             R0, =(_ZN12CAnimManager16ms_numAnimBlocksE_ptr - 0x38DE64)
38DE60:  ADD             R0, PC; _ZN12CAnimManager16ms_numAnimBlocksE_ptr
38DE62:  LDR             R0, [R0]; CAnimManager::ms_numAnimBlocks ...
38DE64:  LDR             R6, [R0]; CAnimManager::ms_numAnimBlocks
38DE66:  CMP             R6, #1
38DE68:  BLT             loc_38DE84
38DE6A:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38DE72)
38DE6C:  MOVS            R5, #0
38DE6E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38DE70:  LDR             R4, [R0]; CAnimManager::ms_aAnimBlocks ...
38DE72:  MOV             R0, R4; char *
38DE74:  MOV             R1, R8; char *
38DE76:  BLX             strcasecmp
38DE7A:  CBZ             R0, loc_38DE86
38DE7C:  ADDS            R5, #1
38DE7E:  ADDS            R4, #0x20 ; ' '
38DE80:  CMP             R5, R6
38DE82:  BLT             loc_38DE72
38DE84:  MOVS            R4, #0
38DE86:  MOV             R0, R4
38DE88:  POP.W           {R8}
38DE8C:  POP             {R4-R7,PC}
