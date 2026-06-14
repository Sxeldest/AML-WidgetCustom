; =========================================================
; Game Engine Function: _ZN17CPlantColEntEntry12ReleaseEntryEv
; Address            : 0x2CDA50 - 0x2CDAD0
; =========================================================

2CDA50:  PUSH            {R4,R5,R7,LR}
2CDA52:  ADD             R7, SP, #8
2CDA54:  MOV             R4, R0
2CDA56:  LDR             R0, [R4,#4]
2CDA58:  CBZ             R0, loc_2CDA84
2CDA5A:  LDRH            R1, [R4,#8]
2CDA5C:  CBZ             R1, loc_2CDA7A
2CDA5E:  MOVS            R5, #0
2CDA60:  B               loc_2CDA64
2CDA62:  LDR             R0, [R4,#4]
2CDA64:  LDR.W           R0, [R0,R5,LSL#2]; this
2CDA68:  CBZ             R0, loc_2CDA70
2CDA6A:  BLX             j__ZN12CPlantLocTri7ReleaseEv; CPlantLocTri::Release(void)
2CDA6E:  LDRH            R1, [R4,#8]; void *
2CDA70:  ADDS            R5, #1
2CDA72:  UXTH            R0, R1
2CDA74:  CMP             R5, R0
2CDA76:  BLT             loc_2CDA62
2CDA78:  LDR             R0, [R4,#4]; this
2CDA7A:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
2CDA7E:  MOVS            R0, #0
2CDA80:  STRH            R0, [R4,#8]
2CDA82:  STR             R0, [R4,#4]
2CDA84:  LDR             R0, [R4]; this
2CDA86:  CBZ             R0, loc_2CDA92
2CDA88:  MOV             R1, R4; CEntity **
2CDA8A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
2CDA8E:  MOVS            R0, #0
2CDA90:  STR             R0, [R4]
2CDA92:  LDRD.W          R1, R0, [R4,#0xC]
2CDA96:  CBZ             R0, loc_2CDAA8
2CDA98:  CMP             R1, #0
2CDA9A:  ITTE NE
2CDA9C:  STRNE           R0, [R1,#0x10]
2CDA9E:  LDRDNE.W        R1, R0, [R4,#0xC]
2CDAA2:  MOVEQ           R1, #0
2CDAA4:  STR             R1, [R0,#0xC]
2CDAA6:  B               loc_2CDAB8
2CDAA8:  LDR             R0, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CDAB0)
2CDAAA:  CMP             R1, #0
2CDAAC:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CDAAE:  LDR             R0, [R0]; CPlantMgr::m_CloseColEntListHead ...
2CDAB0:  STR             R1, [R0]; CPlantMgr::m_CloseColEntListHead
2CDAB2:  ITT NE
2CDAB4:  MOVNE           R0, #0
2CDAB6:  STRNE           R0, [R1,#0x10]
2CDAB8:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CDAC0)
2CDABA:  MOVS            R2, #0
2CDABC:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CDABE:  LDR             R1, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CDAC0:  LDR             R0, [R1]; CPlantMgr::m_UnusedColEntListHead
2CDAC2:  STRD.W          R0, R2, [R4,#0xC]
2CDAC6:  CMP             R0, #0
2CDAC8:  STR             R4, [R1]; CPlantMgr::m_UnusedColEntListHead
2CDACA:  IT NE
2CDACC:  STRNE           R4, [R0,#0x10]
2CDACE:  POP             {R4,R5,R7,PC}
