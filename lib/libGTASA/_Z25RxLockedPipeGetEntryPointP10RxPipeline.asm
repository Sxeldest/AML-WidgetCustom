; =========================================================
; Game Engine Function: _Z25RxLockedPipeGetEntryPointP10RxPipeline
; Address            : 0x1DFEE2 - 0x1DFF08
; =========================================================

1DFEE2:  CMP             R0, #0
1DFEE4:  ITT NE
1DFEE6:  LDRNE           R1, [R0]
1DFEE8:  CMPNE           R1, #0
1DFEEA:  BEQ             loc_1DFEF8
1DFEEC:  LDR             R1, [R0,#0x28]
1DFEEE:  ADDS            R2, R1, #1
1DFEF0:  ITT NE
1DFEF2:  LDRNE           R2, [R0,#4]
1DFEF4:  CMPNE           R2, R1
1DFEF6:  BHI             loc_1DFEFC
1DFEF8:  MOVS            R0, #0
1DFEFA:  BX              LR
1DFEFC:  LDR             R0, [R0,#8]
1DFEFE:  ADD.W           R1, R1, R1,LSL#2
1DFF02:  ADD.W           R0, R0, R1,LSL#3
1DFF06:  BX              LR
