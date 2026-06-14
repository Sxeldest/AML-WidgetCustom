; =========================================================
; Game Engine Function: _ZN12CPlantLocTri7ReleaseEv
; Address            : 0x2CEA90 - 0x2CEB5C
; =========================================================

2CEA90:  PUSH            {R4,R6,R7,LR}
2CEA92:  ADD             R7, SP, #8
2CEA94:  MOV             R4, R0
2CEA96:  MOVS            R1, #0
2CEA98:  LDRB.W          R0, [R4,#0x48]
2CEA9C:  STRH.W          R1, [R4,#0x44]
2CEAA0:  TST.W           R0, #4
2CEAA4:  STR             R1, [R4,#0x40]
2CEAA6:  BEQ             loc_2CEAB8
2CEAA8:  LDR             R0, =(g_procObjMan_ptr - 0x2CEAB0)
2CEAAA:  MOV             R1, R4
2CEAAC:  ADD             R0, PC; g_procObjMan_ptr
2CEAAE:  LDR             R0, [R0]; g_procObjMan
2CEAB0:  BLX             j__ZN15ProcObjectMan_c22ProcessTriangleRemovedEP12CPlantLocTri; ProcObjectMan_c::ProcessTriangleRemoved(CPlantLocTri *)
2CEAB4:  LDRB.W          R0, [R4,#0x48]
2CEAB8:  AND.W           R0, R0, #3
2CEABC:  CMP             R0, #2
2CEABE:  BNE             loc_2CEAD6
2CEAC0:  LDRD.W          R1, R0, [R4,#0x4C]
2CEAC4:  CBZ             R0, loc_2CEAF4
2CEAC6:  CMP             R1, #0
2CEAC8:  ITTE NE
2CEACA:  STRNE           R0, [R1,#0x50]
2CEACC:  LDRDNE.W        R1, R0, [R4,#0x4C]
2CEAD0:  MOVEQ           R1, #0
2CEAD2:  STR             R1, [R0,#0x4C]
2CEAD4:  B               loc_2CEB04
2CEAD6:  LDRB.W          R0, [R4,#0x46]; this
2CEADA:  BLX             j__ZN17CPlantSurfPropMgr17GetSurfPropertiesEt; CPlantSurfPropMgr::GetSurfProperties(ushort)
2CEADE:  LDRD.W          R1, R2, [R4,#0x4C]
2CEAE2:  CBZ             R2, loc_2CEB1E
2CEAE4:  CMP             R1, #0
2CEAE6:  ITTE NE
2CEAE8:  STRNE           R2, [R1,#0x50]
2CEAEA:  LDRDNE.W        R0, R2, [R4,#0x4C]
2CEAEE:  MOVEQ           R0, #0
2CEAF0:  STR             R0, [R2,#0x4C]
2CEAF2:  B               loc_2CEB32
2CEAF4:  LDR             R0, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CEAFC)
2CEAF6:  CMP             R1, #0
2CEAF8:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CEAFA:  LDR             R0, [R0]; CPlantMgr::m_CloseLocTriListHead ...
2CEAFC:  STR             R1, [R0,#(dword_70CB38 - 0x70CB2C)]
2CEAFE:  ITT NE
2CEB00:  MOVNE           R0, #0
2CEB02:  STRNE           R0, [R1,#0x50]
2CEB04:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CEB0C)
2CEB06:  MOVS            R2, #0
2CEB08:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CEB0A:  LDR             R1, [R0]; CPlantMgr::m_UnusedLocTriListHead ...
2CEB0C:  LDR             R0, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CEB0E:  STRD.W          R0, R2, [R4,#0x4C]
2CEB12:  CMP             R0, #0
2CEB14:  STR             R4, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CEB16:  IT NE
2CEB18:  STRNE           R4, [R0,#0x50]
2CEB1A:  MOVS            R0, #0xFE
2CEB1C:  B               loc_2CEB4A
2CEB1E:  LDR             R2, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CEB28)
2CEB20:  CMP             R1, #0
2CEB22:  LDRH            R0, [R0]
2CEB24:  ADD             R2, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CEB26:  LDR             R2, [R2]; CPlantMgr::m_CloseLocTriListHead ...
2CEB28:  STR.W           R1, [R2,R0,LSL#2]
2CEB2C:  ITT NE
2CEB2E:  MOVNE           R0, #0
2CEB30:  STRNE           R0, [R1,#0x50]
2CEB32:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CEB3A)
2CEB34:  MOVS            R2, #0
2CEB36:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CEB38:  LDR             R1, [R0]; CPlantMgr::m_UnusedLocTriListHead ...
2CEB3A:  LDR             R0, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CEB3C:  STRD.W          R0, R2, [R4,#0x4C]
2CEB40:  CMP             R0, #0
2CEB42:  STR             R4, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CEB44:  IT NE
2CEB46:  STRNE           R4, [R0,#0x50]
2CEB48:  MOVS            R0, #0xFF
2CEB4A:  STRB.W          R0, [R4,#0x46]
2CEB4E:  LDRB.W          R0, [R4,#0x48]
2CEB52:  AND.W           R0, R0, #0xF8
2CEB56:  STRB.W          R0, [R4,#0x48]
2CEB5A:  POP             {R4,R6,R7,PC}
