; =========================================================
; Game Engine Function: _ZN9CPlantMgr22_ColEntityCache_RemoveEP7CEntity
; Address            : 0x2CE398 - 0x2CE3B6
; =========================================================

2CE398:  LDR             R1, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CE39E)
2CE39A:  ADD             R1, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CE39C:  LDR             R1, [R1]; CPlantMgr::m_CloseColEntListHead ...
2CE39E:  LDR             R1, [R1]; CPlantMgr::m_CloseColEntListHead
2CE3A0:  B               loc_2CE3A4
2CE3A2:  LDR             R1, [R1,#0xC]
2CE3A4:  CMP             R1, #0
2CE3A6:  IT EQ
2CE3A8:  BXEQ            LR
2CE3AA:  LDR             R2, [R1]
2CE3AC:  CMP             R2, R0
2CE3AE:  BNE             loc_2CE3A2
2CE3B0:  MOV             R0, R1; this
2CE3B2:  B.W             _ZN17CPlantColEntEntry12ReleaseEntryEv; CPlantColEntEntry::ReleaseEntry(void)
