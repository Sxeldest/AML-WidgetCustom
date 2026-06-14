; =========================================================
; Game Engine Function: _Z25ResetMadeInvisibleObjectsv
; Address            : 0x2DFB30 - 0x2DFB8A
; =========================================================

2DFB30:  PUSH            {R4-R7,LR}
2DFB32:  ADD             R7, SP, #0xC
2DFB34:  PUSH.W          {R8}
2DFB38:  LDR             R0, =(gNumEntitiesSetInvisible_ptr - 0x2DFB3E)
2DFB3A:  ADD             R0, PC; gNumEntitiesSetInvisible_ptr
2DFB3C:  LDR             R0, [R0]; gNumEntitiesSetInvisible
2DFB3E:  LDR             R1, [R0]
2DFB40:  CMP             R1, #1
2DFB42:  BLT             loc_2DFB7A
2DFB44:  LDR             R0, =(gpMadeInvisibleEntities_ptr - 0x2DFB50)
2DFB46:  MOV.W           R8, #0
2DFB4A:  MOVS            R5, #0
2DFB4C:  ADD             R0, PC; gpMadeInvisibleEntities_ptr
2DFB4E:  LDR             R4, [R0]; gpMadeInvisibleEntities
2DFB50:  LDR             R0, =(gNumEntitiesSetInvisible_ptr - 0x2DFB56)
2DFB52:  ADD             R0, PC; gNumEntitiesSetInvisible_ptr
2DFB54:  LDR             R6, [R0]; gNumEntitiesSetInvisible
2DFB56:  LDR             R0, [R4]
2DFB58:  CBZ             R0, loc_2DFB72
2DFB5A:  LDR             R2, [R0,#0x1C]
2DFB5C:  ORR.W           R2, R2, #0x80
2DFB60:  STR             R2, [R0,#0x1C]
2DFB62:  LDR             R0, [R4]; this
2DFB64:  CBZ             R0, loc_2DFB6E
2DFB66:  MOV             R1, R4; CEntity **
2DFB68:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
2DFB6C:  LDR             R1, [R6]
2DFB6E:  STR.W           R8, [R4]
2DFB72:  ADDS            R5, #1
2DFB74:  ADDS            R4, #4
2DFB76:  CMP             R5, R1
2DFB78:  BLT             loc_2DFB56
2DFB7A:  LDR             R0, =(gNumEntitiesSetInvisible_ptr - 0x2DFB82)
2DFB7C:  MOVS            R1, #0
2DFB7E:  ADD             R0, PC; gNumEntitiesSetInvisible_ptr
2DFB80:  LDR             R0, [R0]; gNumEntitiesSetInvisible
2DFB82:  STR             R1, [R0]
2DFB84:  POP.W           {R8}
2DFB88:  POP             {R4-R7,PC}
