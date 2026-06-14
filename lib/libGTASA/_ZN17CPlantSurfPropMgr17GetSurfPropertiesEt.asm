; =========================================================
; Game Engine Function: _ZN17CPlantSurfPropMgr17GetSurfPropertiesEt
; Address            : 0x59C500 - 0x59C514
; =========================================================

59C500:  CMP             R0, #0xB1
59C502:  ITT HI
59C504:  MOVHI           R0, #0
59C506:  BXHI            LR
59C508:  LDR             R1, =(_ZN17CPlantSurfPropMgr16m_SurfPropPtrTabE_ptr - 0x59C50E)
59C50A:  ADD             R1, PC; _ZN17CPlantSurfPropMgr16m_SurfPropPtrTabE_ptr
59C50C:  LDR             R1, [R1]; CPlantSurfPropMgr::m_SurfPropPtrTab ...
59C50E:  LDR.W           R0, [R1,R0,LSL#2]
59C512:  BX              LR
