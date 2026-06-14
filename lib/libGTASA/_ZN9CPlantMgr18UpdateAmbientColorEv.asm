; =========================================================
; Game Engine Function: _ZN9CPlantMgr18UpdateAmbientColorEv
; Address            : 0x2CDBC0 - 0x2CDC4E
; =========================================================

2CDBC0:  PUSH            {R7,LR}
2CDBC2:  MOV             R7, SP
2CDBC4:  VPUSH           {D8-D10}
2CDBC8:  BLX             j__ZN10CTimeCycle13GetAmbientRedEv; CTimeCycle::GetAmbientRed(void)
2CDBCC:  VMOV.F32        S16, #2.5
2CDBD0:  VMOV            S18, R0; this
2CDBD4:  BLX             j__ZN10CTimeCycle15GetAmbientGreenEv; CTimeCycle::GetAmbientGreen(void)
2CDBD8:  VMOV            S20, R0; this
2CDBDC:  BLX             j__ZN10CTimeCycle14GetAmbientBlueEv; CTimeCycle::GetAmbientBlue(void)
2CDBE0:  VMUL.F32        S2, S20, S16
2CDBE4:  VLDR            S6, =255.0
2CDBE8:  VMUL.F32        S4, S18, S16
2CDBEC:  VMOV            S0, R0
2CDBF0:  LDR             R0, =(_ZN9CPlantMgr14m_AmbientColorE_ptr - 0x2CDBFA)
2CDBF2:  VMUL.F32        S0, S0, S16
2CDBF6:  ADD             R0, PC; _ZN9CPlantMgr14m_AmbientColorE_ptr
2CDBF8:  LDR             R0, [R0]; CPlantMgr::m_AmbientColor ...
2CDBFA:  VMUL.F32        S2, S2, S6
2CDBFE:  VMUL.F32        S4, S4, S6
2CDC02:  VMUL.F32        S0, S0, S6
2CDC06:  VCVT.U32.F32    S2, S2
2CDC0A:  VCVT.U32.F32    S4, S4
2CDC0E:  VCVT.U32.F32    S0, S0
2CDC12:  VMOV            R1, S4
2CDC16:  ADDS            R1, #0x40 ; '@'
2CDC18:  UXTH            R2, R1
2CDC1A:  CMP             R2, #0xFF
2CDC1C:  IT HI
2CDC1E:  MOVHI.W         R1, #0xFFFFFFFF
2CDC22:  STRB            R1, [R0]; CPlantMgr::m_AmbientColor
2CDC24:  VMOV            R1, S2
2CDC28:  ADDS            R1, #0x40 ; '@'
2CDC2A:  UXTH            R2, R1
2CDC2C:  CMP             R2, #0xFF
2CDC2E:  IT HI
2CDC30:  MOVHI.W         R1, #0xFFFFFFFF
2CDC34:  STRB            R1, [R0,#(byte_70CB23 - 0x70CB22)]
2CDC36:  VMOV            R1, S0
2CDC3A:  ADDS            R1, #0x40 ; '@'
2CDC3C:  UXTH            R2, R1
2CDC3E:  CMP             R2, #0xFF
2CDC40:  IT HI
2CDC42:  MOVHI.W         R1, #0xFFFFFFFF
2CDC46:  STRB            R1, [R0,#(byte_70CB24 - 0x70CB22)]
2CDC48:  VPOP            {D8-D10}
2CDC4C:  POP             {R7,PC}
