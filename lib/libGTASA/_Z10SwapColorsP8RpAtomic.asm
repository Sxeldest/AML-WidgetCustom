; =========================================================
; Game Engine Function: _Z10SwapColorsP8RpAtomic
; Address            : 0x2CAD0C - 0x2CAD56
; =========================================================

2CAD0C:  PUSH            {R7,LR}
2CAD0E:  MOV             R7, SP
2CAD10:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr - 0x2CAD1A)
2CAD12:  LDR.W           R12, [R0,#0x18]
2CAD16:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline30ms_extraVertColourPluginOffsetE_ptr
2CAD18:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset ...
2CAD1A:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ms_extraVertColourPluginOffset
2CAD1C:  LDR.W           LR, [R12,R1]
2CAD20:  CMP.W           LR, #0
2CAD24:  IT EQ
2CAD26:  POPEQ           {R7,PC}
2CAD28:  LDR.W           R2, [R12,#0x30]
2CAD2C:  CMP             R2, #0
2CAD2E:  ITT NE
2CAD30:  LDRNE.W         R3, [R12,#0x14]
2CAD34:  CMPNE           R3, #0
2CAD36:  BEQ             locret_2CAD54
2CAD38:  MOVS            R3, #0
2CAD3A:  LDR.W           R0, [R2,R3,LSL#2]
2CAD3E:  LDR.W           R1, [LR,R3,LSL#2]
2CAD42:  STR.W           R1, [R2,R3,LSL#2]
2CAD46:  STR.W           R0, [LR,R3,LSL#2]
2CAD4A:  ADDS            R3, #1
2CAD4C:  LDR.W           R0, [R12,#0x14]
2CAD50:  CMP             R3, R0
2CAD52:  BCC             loc_2CAD3A
2CAD54:  POP             {R7,PC}
