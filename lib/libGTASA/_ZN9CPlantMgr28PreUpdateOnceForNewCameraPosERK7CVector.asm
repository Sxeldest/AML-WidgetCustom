; =========================================================
; Game Engine Function: _ZN9CPlantMgr28PreUpdateOnceForNewCameraPosERK7CVector
; Address            : 0x2CDAD8 - 0x2CDBAE
; =========================================================

2CDAD8:  PUSH            {R4,R5,R7,LR}
2CDADA:  ADD             R7, SP, #8
2CDADC:  VPUSH           {D8-D10}
2CDAE0:  MOV             R4, R0
2CDAE2:  LDR             R0, =(_ZN9CPlantMgr10m_scanCodeE_ptr - 0x2CDAE8)
2CDAE4:  ADD             R0, PC; _ZN9CPlantMgr10m_scanCodeE_ptr
2CDAE6:  LDR             R0, [R0]; CPlantMgr::m_scanCode ...
2CDAE8:  LDRH            R1, [R0]; CPlantMgr::m_scanCode
2CDAEA:  ADDS            R1, #1; unsigned __int16
2CDAEC:  STRH            R1, [R0]; CPlantMgr::m_scanCode
2CDAEE:  UXTH            R0, R1; this
2CDAF0:  BLX             j__ZN14CGrassRenderer18SetCurrentScanCodeEt; CGrassRenderer::SetCurrentScanCode(ushort)
2CDAF4:  MOV             R0, R4; this
2CDAF6:  BLX             j__ZN14CGrassRenderer18SetGlobalCameraPosERK7CVector; CGrassRenderer::SetGlobalCameraPos(CVector const&)
2CDAFA:  BLX             j__ZN10CTimeCycle13GetAmbientRedEv; CTimeCycle::GetAmbientRed(void)
2CDAFE:  VMOV.F32        S16, #2.5
2CDB02:  VMOV            S0, R0; this
2CDB06:  VMUL.F32        S18, S0, S16
2CDB0A:  BLX             j__ZN10CTimeCycle15GetAmbientGreenEv; CTimeCycle::GetAmbientGreen(void)
2CDB0E:  VMOV            S0, R0; this
2CDB12:  VMUL.F32        S20, S0, S16
2CDB16:  BLX             j__ZN10CTimeCycle14GetAmbientBlueEv; CTimeCycle::GetAmbientBlue(void)
2CDB1A:  VMOV            S0, R0
2CDB1E:  VLDR            S2, =255.0
2CDB22:  LDR             R0, =(_ZN9CPlantMgr14m_AmbientColorE_ptr - 0x2CDB30)
2CDB24:  VMUL.F32        S0, S0, S16
2CDB28:  VMUL.F32        S4, S18, S2
2CDB2C:  ADD             R0, PC; _ZN9CPlantMgr14m_AmbientColorE_ptr
2CDB2E:  VMUL.F32        S6, S20, S2
2CDB32:  LDR             R0, [R0]; this
2CDB34:  VMUL.F32        S0, S0, S2
2CDB38:  VCVT.U32.F32    S2, S4
2CDB3C:  VMOV            R1, S2
2CDB40:  VCVT.U32.F32    S2, S6
2CDB44:  ADDS            R1, #0x40 ; '@'
2CDB46:  UXTH            R2, R1
2CDB48:  CMP             R2, #0xFF
2CDB4A:  IT HI
2CDB4C:  MOVHI.W         R1, #0xFFFFFFFF
2CDB50:  STRB            R1, [R0]; CPlantMgr::m_AmbientColor
2CDB52:  VMOV            R1, S2
2CDB56:  VCVT.U32.F32    S0, S0
2CDB5A:  ADDS            R1, #0x40 ; '@'
2CDB5C:  UXTH            R2, R1
2CDB5E:  CMP             R2, #0xFF
2CDB60:  IT HI
2CDB62:  MOVHI.W         R1, #0xFFFFFFFF
2CDB66:  STRB            R1, [R0,#(byte_70CB23 - 0x70CB22)]
2CDB68:  VMOV            R1, S0
2CDB6C:  ADDS            R1, #0x40 ; '@'
2CDB6E:  UXTH            R2, R1
2CDB70:  CMP             R2, #0xFF
2CDB72:  IT HI
2CDB74:  MOVHI.W         R1, #0xFFFFFFFF
2CDB78:  STRB            R1, [R0,#(byte_70CB24 - 0x70CB22)]
2CDB7A:  BLX             j__ZN9CPlantMgr20CalculateWindBendingEv; CPlantMgr::CalculateWindBending(void)
2CDB7E:  BLX             j__ZN14CGrassRenderer20SetGlobalWindBendingEf; CGrassRenderer::SetGlobalWindBending(float)
2CDB82:  MOV             R0, R4; this
2CDB84:  MOVS            R1, #0; CVector *
2CDB86:  BLX             j__ZN9CPlantMgr22_ColEntityCache_UpdateERK7CVectorh; CPlantMgr::_ColEntityCache_Update(CVector const&,uchar)
2CDB8A:  LDR             R0, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CDB90)
2CDB8C:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CDB8E:  LDR             R0, [R0]; CPlantMgr::m_CloseColEntListHead ...
2CDB90:  LDR             R5, [R0]; CPlantMgr::m_CloseColEntListHead
2CDB92:  CBZ             R5, loc_2CDBA6
2CDB94:  MOV             R0, R5; this
2CDB96:  MOV             R1, R4; CPlantColEntEntry *
2CDB98:  MOV.W           R2, #0xFAFAFAFA; CVector *
2CDB9C:  BLX             j__ZN9CPlantMgr34_ProcessEntryCollisionDataSectionsEP17CPlantColEntEntryRK7CVectori; CPlantMgr::_ProcessEntryCollisionDataSections(CPlantColEntEntry *,CVector const&,int)
2CDBA0:  LDR             R5, [R5,#0xC]
2CDBA2:  CMP             R5, #0
2CDBA4:  BNE             loc_2CDB94
2CDBA6:  MOVS            R0, #1
2CDBA8:  VPOP            {D8-D10}
2CDBAC:  POP             {R4,R5,R7,PC}
