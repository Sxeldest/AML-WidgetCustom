; =========================================================
; Game Engine Function: _ZN10CStreaming19RequestBigBuildingsERK7CVector
; Address            : 0x2D4C90 - 0x2D4D0A
; =========================================================

2D4C90:  PUSH            {R4-R7,LR}
2D4C92:  ADD             R7, SP, #0xC
2D4C94:  PUSH.W          {R8-R10}
2D4C98:  MOV             R8, R0
2D4C9A:  LDR             R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x2D4CA0)
2D4C9C:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2D4C9E:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
2D4CA0:  LDR.W           R10, [R0]; CPools::ms_pBuildingPool
2D4CA4:  LDR.W           R0, [R10,#8]
2D4CA8:  CBZ             R0, loc_2D4D04
2D4CAA:  LDR             R1, =(TheCamera_ptr - 0x2D4CB6)
2D4CAC:  MOV             R2, #0xFFFFFFEA
2D4CB0:  SUBS            R5, R0, #1
2D4CB2:  ADD             R1, PC; TheCamera_ptr
2D4CB4:  LDR             R1, [R1]; TheCamera
2D4CB6:  LDR.W           R1, [R1,#(dword_952880 - 0x951FA8)]
2D4CBA:  VLDR            S0, [R1,#0x84]
2D4CBE:  RSB.W           R1, R0, R0,LSL#4
2D4CC2:  VMOV            R9, S0
2D4CC6:  ADD.W           R4, R2, R1,LSL#2
2D4CCA:  LDR.W           R0, [R10,#4]
2D4CCE:  LDRSB           R0, [R0,R5]
2D4CD0:  CMP             R0, #0
2D4CD2:  BLT             loc_2D4CFC
2D4CD4:  LDR.W           R6, [R10]
2D4CD8:  ADDS            R0, R6, R4
2D4CDA:  CMP             R0, #0x26 ; '&'
2D4CDC:  ITT NE
2D4CDE:  LDRBNE.W        R1, [R0,#-9]
2D4CE2:  MOVSNE.W        R1, R1,LSL#31
2D4CE6:  BEQ             loc_2D4CFC
2D4CE8:  SUBS            R0, #0x26 ; '&'; this
2D4CEA:  MOV             R1, R8; CEntity *
2D4CEC:  MOV             R2, R9; CVector *
2D4CEE:  BLX             j__ZN9CRenderer21ShouldModelBeStreamedEP7CEntityRK7CVectorf; CRenderer::ShouldModelBeStreamed(CEntity *,CVector const&,float)
2D4CF2:  CBZ             R0, loc_2D4CFC
2D4CF4:  LDRSH           R0, [R6,R4]; this
2D4CF6:  MOVS            R1, #0; int
2D4CF8:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D4CFC:  SUBS            R5, #1
2D4CFE:  SUBS            R4, #0x3C ; '<'
2D4D00:  ADDS            R0, R5, #1
2D4D02:  BNE             loc_2D4CCA
2D4D04:  POP.W           {R8-R10}
2D4D08:  POP             {R4-R7,PC}
