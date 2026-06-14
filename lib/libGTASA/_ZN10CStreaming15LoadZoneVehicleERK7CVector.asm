; =========================================================
; Game Engine Function: _ZN10CStreaming15LoadZoneVehicleERK7CVector
; Address            : 0x2D4D14 - 0x2D4D44
; =========================================================

2D4D14:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x2D4D1A)
2D4D16:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
2D4D18:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
2D4D1A:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo
2D4D1C:  CMP             R1, #0
2D4D1E:  IT EQ
2D4D20:  BXEQ            LR
2D4D22:  PUSH            {R7,LR}
2D4D24:  MOV             R7, SP
2D4D26:  MOVS            R1, #0; CVector *
2D4D28:  BLX             j__ZN9CTheZones11GetZoneInfoEPK7CVectorPP5CZone; CTheZones::GetZoneInfo(CVector const*,CZone **)
2D4D2C:  BLX             j__ZN9CPopCycle27PickARandomGroupOfOtherPedsEv; CPopCycle::PickARandomGroupOfOtherPeds(void)
2D4D30:  BLX             j__ZN8CCarCtrl20ChooseCarModelToLoadEi; CCarCtrl::ChooseCarModelToLoad(int)
2D4D34:  CMP             R0, #0
2D4D36:  POP.W           {R7,LR}
2D4D3A:  ITT GE
2D4D3C:  MOVGE           R1, #8; int
2D4D3E:  BGE.W           _ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D4D42:  BX              LR
