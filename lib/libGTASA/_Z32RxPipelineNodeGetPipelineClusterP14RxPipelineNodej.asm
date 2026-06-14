; =========================================================
; Game Engine Function: _Z32RxPipelineNodeGetPipelineClusterP14RxPipelineNodej
; Address            : 0x1DE864 - 0x1DE88A
; =========================================================

1DE864:  CMP             R0, #0
1DE866:  ITTT NE
1DE868:  LDRNE           R2, [R0]
1DE86A:  LDRNE           R2, [R2,#0x20]
1DE86C:  CMPNE           R2, R1
1DE86E:  BHI             loc_1DE874
1DE870:  MOVS            R0, #0
1DE872:  BX              LR
1DE874:  LDR             R2, [R0,#0x18]
1DE876:  LDR.W           R1, [R2,R1,LSL#2]
1DE87A:  ADDS            R2, R1, #1
1DE87C:  ITTT NE
1DE87E:  LDRNE           R0, [R0,#0xC]
1DE880:  LDRNE.W         R0, [R0,R1,LSL#2]
1DE884:  BXNE            LR
1DE886:  MOVS            R0, #0
1DE888:  BX              LR
