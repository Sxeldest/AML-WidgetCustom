; =========================================================
; Game Engine Function: _ZN14CGrassRenderer11AddTriPlantEP10PPTriPlantj
; Address            : 0x2CCEF0 - 0x2CD00A
; =========================================================

2CCEF0:  PUSH            {R4-R7,LR}
2CCEF2:  ADD             R7, SP, #0xC
2CCEF4:  PUSH.W          {R8-R10}
2CCEF8:  MOV             R9, R0
2CCEFA:  LDR             R0, =(dword_70BF84 - 0x2CCF02)
2CCEFC:  MOV             R4, R1
2CCEFE:  ADD             R0, PC; dword_70BF84
2CCF00:  LDR.W           R0, [R0,#(dword_70CB08 - 0x70BF84)]
2CCF04:  CMP             R0, R4
2CCF06:  BEQ             loc_2CCF52
2CCF08:  LDR             R1, =(dword_70BF84 - 0x2CCF0E)
2CCF0A:  ADD             R1, PC; dword_70BF84
2CCF0C:  LDR             R1, [R1]
2CCF0E:  CMP             R1, #1
2CCF10:  BLT             loc_2CCF4A
2CCF12:  MOV.W           R10, #0
2CCF16:  CMP             R0, #3
2CCF18:  MOV.W           R6, #0
2CCF1C:  BHI             loc_2CCF2A
2CCF1E:  LDR             R1, =(dword_70BF84 - 0x2CCF24)
2CCF20:  ADD             R1, PC; dword_70BF84
2CCF22:  ADD.W           R0, R1, R0,LSL#2
2CCF26:  LDR.W           R6, [R0,#0xB88]
2CCF2A:  BLX             rand
2CCF2E:  LDR             R5, =(dword_70BF84 - 0x2CCF38)
2CCF30:  MOV             R8, R0
2CCF32:  MOV             R2, R6
2CCF34:  ADD             R5, PC; dword_70BF84
2CCF36:  MOV             R0, R5
2CCF38:  LDR.W           R1, [R0],#4
2CCF3C:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CCF40:  MOV             R0, R8; seed
2CCF42:  STR.W           R10, [R5]
2CCF46:  BLX             srand
2CCF4A:  LDR             R0, =(dword_70BF84 - 0x2CCF50)
2CCF4C:  ADD             R0, PC; dword_70BF84
2CCF4E:  STR.W           R4, [R0,#(dword_70CB08 - 0x70BF84)]
2CCF52:  LDR             R0, =(dword_70BF84 - 0x2CCF58)
2CCF54:  ADD             R0, PC; dword_70BF84
2CCF56:  LDR             R5, [R0]
2CCF58:  CMP             R5, #0x20 ; ' '
2CCF5A:  BLT             loc_2CCF9A
2CCF5C:  MOV.W           R8, #0
2CCF60:  CMP             R4, #3
2CCF62:  MOV.W           R6, #0
2CCF66:  BHI             loc_2CCF74
2CCF68:  LDR             R0, =(dword_70BF84 - 0x2CCF6E)
2CCF6A:  ADD             R0, PC; dword_70BF84
2CCF6C:  ADD.W           R0, R0, R4,LSL#2
2CCF70:  LDR.W           R6, [R0,#0xB88]
2CCF74:  BLX             rand
2CCF78:  LDR.W           R10, =(dword_70BF84 - 0x2CCF84)
2CCF7C:  MOV             R5, R0
2CCF7E:  MOV             R2, R6
2CCF80:  ADD             R10, PC; dword_70BF84
2CCF82:  MOV             R0, R10
2CCF84:  LDR.W           R1, [R0],#4
2CCF88:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CCF8C:  MOV             R0, R5; seed
2CCF8E:  STR.W           R8, [R10]
2CCF92:  BLX             srand
2CCF96:  LDR.W           R5, [R10]
2CCF9A:  LDR             R6, =(dword_70BF84 - 0x2CCFA6)
2CCF9C:  MOVS            R0, #0x5C ; '\'
2CCF9E:  MOV             R1, R9; void *
2CCFA0:  MOVS            R2, #0x5C ; '\'; size_t
2CCFA2:  ADD             R6, PC; dword_70BF84
2CCFA4:  MLA.W           R0, R5, R0, R6
2CCFA8:  ADDS            R0, #4; void *
2CCFAA:  BLX             memcpy_0
2CCFAE:  LDR.W           R0, [R6,#(dword_70CB08 - 0x70BF84)]
2CCFB2:  CMP             R0, R4
2CCFB4:  BNE             loc_2CD004
2CCFB6:  LDR             R0, =(dword_70BF84 - 0x2CCFC2)
2CCFB8:  CMP             R5, #0x1F
2CCFBA:  ADD.W           R1, R5, #1
2CCFBE:  ADD             R0, PC; dword_70BF84
2CCFC0:  STR             R1, [R0]
2CCFC2:  BLT             loc_2CD004
2CCFC4:  MOV.W           R8, #0
2CCFC8:  CMP             R4, #3
2CCFCA:  MOV.W           R5, #0
2CCFCE:  BHI             loc_2CCFDC
2CCFD0:  LDR             R0, =(dword_70BF84 - 0x2CCFD6)
2CCFD2:  ADD             R0, PC; dword_70BF84
2CCFD4:  ADD.W           R0, R0, R4,LSL#2
2CCFD8:  LDR.W           R5, [R0,#0xB88]
2CCFDC:  BLX             rand
2CCFE0:  LDR             R6, =(dword_70BF84 - 0x2CCFEA)
2CCFE2:  MOV             R4, R0
2CCFE4:  MOV             R2, R5
2CCFE6:  ADD             R6, PC; dword_70BF84
2CCFE8:  MOV             R0, R6
2CCFEA:  LDR.W           R1, [R0],#4
2CCFEE:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CCFF2:  STR.W           R8, [R6]
2CCFF6:  MOV             R0, R4; seed
2CCFF8:  POP.W           {R8-R10}
2CCFFC:  POP.W           {R4-R7,LR}
2CD000:  B.W             j_srand
2CD004:  POP.W           {R8-R10}
2CD008:  POP             {R4-R7,PC}
