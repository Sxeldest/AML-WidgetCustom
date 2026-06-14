; =========================================================
; Game Engine Function: _ZN9CPlantMgr30SetPlantFriendlyFlagInAtomicMIEP16CAtomicModelInfo
; Address            : 0x2CEF1C - 0x2CEF90
; =========================================================

2CEF1C:  PUSH            {R4-R7,LR}
2CEF1E:  ADD             R7, SP, #0xC
2CEF20:  PUSH.W          {R8-R11}
2CEF24:  SUB             SP, SP, #4
2CEF26:  LDRH            R1, [R0,#0x28]
2CEF28:  LDR             R2, [R0,#0x2C]
2CEF2A:  BIC.W           R1, R1, #0x200
2CEF2E:  STRH            R1, [R0,#0x28]
2CEF30:  LDR             R4, [R2,#0x2C]
2CEF32:  CBZ             R4, loc_2CEF78
2CEF34:  LDRSH.W         R9, [R4,#4]
2CEF38:  CMP.W           R9, #1
2CEF3C:  BLT             loc_2CEF78
2CEF3E:  STR             R0, [SP,#0x20+var_20]
2CEF40:  MOVS            R5, #0
2CEF42:  LDR             R0, =(g_surfaceInfos_ptr - 0x2CEF4A)
2CEF44:  MOVS            R6, #0xC
2CEF46:  ADD             R0, PC; g_surfaceInfos_ptr
2CEF48:  LDR.W           R10, [R0]; g_surfaceInfos
2CEF4C:  LDR             R0, =(g_surfaceInfos_ptr - 0x2CEF52)
2CEF4E:  ADD             R0, PC; g_surfaceInfos_ptr
2CEF50:  LDR.W           R11, [R0]; g_surfaceInfos
2CEF54:  LDR.W           R8, [R4,#0x18]
2CEF58:  MOV             R0, R10; this
2CEF5A:  LDRB.W          R1, [R8,R6]; unsigned int
2CEF5E:  BLX             j__ZN14SurfaceInfos_c13CreatesPlantsEj; SurfaceInfos_c::CreatesPlants(uint)
2CEF62:  CBNZ            R0, loc_2CEF7C
2CEF64:  LDRB.W          R1, [R8,R6]; unsigned int
2CEF68:  MOV             R0, R11; this
2CEF6A:  BLX             j__ZN14SurfaceInfos_c14CreatesObjectsEj; SurfaceInfos_c::CreatesObjects(uint)
2CEF6E:  CBNZ            R0, loc_2CEF7C
2CEF70:  ADDS            R5, #1
2CEF72:  ADDS            R6, #0x10
2CEF74:  CMP             R5, R9
2CEF76:  BLT             loc_2CEF54
2CEF78:  MOVS            R0, #0
2CEF7A:  B               loc_2CEF88
2CEF7C:  LDR             R1, [SP,#0x20+var_20]
2CEF7E:  LDRH            R0, [R1,#0x28]
2CEF80:  ORR.W           R0, R0, #0x200
2CEF84:  STRH            R0, [R1,#0x28]
2CEF86:  MOVS            R0, #1
2CEF88:  ADD             SP, SP, #4
2CEF8A:  POP.W           {R8-R11}
2CEF8E:  POP             {R4-R7,PC}
