; =========================================================
; Game Engine Function: _ZN6CRadar22SetCoordBlipAppearanceEih
; Address            : 0x442CA8 - 0x442D0A
; =========================================================

442CA8:  PUSH            {R7,LR}
442CAA:  MOV             R7, SP
442CAC:  ADDS            R2, R0, #1
442CAE:  BEQ             locret_442D08
442CB0:  LDR.W           R12, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442CC0)
442CB4:  UXTH.W          LR, R0
442CB8:  MOV.W           R3, LR,LSL#2
442CBC:  ADD             R12, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442CBE:  UXTAH.W         R3, R3, R0
442CC2:  LDR.W           R2, [R12]; CRadar::ms_RadarTrace ...
442CC6:  ADD.W           R2, R2, R3,LSL#3
442CCA:  LDRH            R2, [R2,#0x14]
442CCC:  CMP.W           R2, R0,LSR#16
442CD0:  BNE             locret_442D08
442CD2:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442CDC)
442CD4:  ADD.W           R2, LR, LR,LSL#2
442CD8:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442CDA:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442CDC:  ADD.W           R0, R0, R2,LSL#3
442CE0:  LDRH.W          R2, [R0,#0x25]!
442CE4:  TST.W           R2, #2
442CE8:  IT EQ
442CEA:  POPEQ           {R7,PC}
442CEC:  CMP             R1, #2
442CEE:  BHI             locret_442D08
442CF0:  AND.W           R3, R2, #0x3C00
442CF4:  CMP.W           R3, #0x1000
442CF8:  ITTTT EQ
442CFA:  LSLEQ           R1, R1, #6
442CFC:  BICEQ.W         R2, R2, #0xC0
442D00:  UXTBEQ          R1, R1
442D02:  ORREQ           R1, R2
442D04:  IT EQ
442D06:  STRHEQ          R1, [R0]
442D08:  POP             {R7,PC}
