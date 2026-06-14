; =========================================================
; Game Engine Function: _ZN9CPlantMgr14_UpdateLocTrisERK7CVectori
; Address            : 0x2CE07C - 0x2CE0AA
; =========================================================

2CE07C:  PUSH            {R4-R7,LR}
2CE07E:  ADD             R7, SP, #0xC
2CE080:  PUSH.W          {R11}
2CE084:  MOV             R5, R0
2CE086:  LDR             R0, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CE08E)
2CE088:  MOV             R4, R1
2CE08A:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CE08C:  LDR             R0, [R0]; CPlantMgr::m_CloseColEntListHead ...
2CE08E:  LDR             R6, [R0]; CPlantMgr::m_CloseColEntListHead
2CE090:  CBZ             R6, loc_2CE0A2
2CE092:  MOV             R0, R6; this
2CE094:  MOV             R1, R5; CPlantColEntEntry *
2CE096:  MOV             R2, R4; CVector *
2CE098:  BLX             j__ZN9CPlantMgr34_ProcessEntryCollisionDataSectionsEP17CPlantColEntEntryRK7CVectori; CPlantMgr::_ProcessEntryCollisionDataSections(CPlantColEntEntry *,CVector const&,int)
2CE09C:  LDR             R6, [R6,#0xC]
2CE09E:  CMP             R6, #0
2CE0A0:  BNE             loc_2CE092
2CE0A2:  MOVS            R0, #1
2CE0A4:  POP.W           {R11}
2CE0A8:  POP             {R4-R7,PC}
