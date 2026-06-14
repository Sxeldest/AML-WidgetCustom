; =========================================================
; Game Engine Function: sub_148EBA
; Address            : 0x148EBA - 0x148ED6
; =========================================================

148EBA:  CMP.W           R1, #0x3EC
148EBE:  BHI             loc_148ED2
148EC0:  ADD.W           R0, R0, R1,LSL#2
148EC4:  LDR             R0, [R0,#4]
148EC6:  CBZ             R0, loc_148ED2
148EC8:  LDRB            R0, [R0,#0x1D]
148ECA:  CMP             R0, #0
148ECC:  IT NE
148ECE:  MOVNE           R0, #1
148ED0:  BX              LR
148ED2:  MOVS            R0, #0
148ED4:  BX              LR
