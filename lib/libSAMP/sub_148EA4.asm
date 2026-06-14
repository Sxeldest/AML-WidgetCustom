; =========================================================
; Game Engine Function: sub_148EA4
; Address            : 0x148EA4 - 0x148EBA
; =========================================================

148EA4:  CMP.W           R1, #0x3EC
148EA8:  BHI             loc_148EB6
148EAA:  ADD.W           R0, R0, R1,LSL#2
148EAE:  LDR             R0, [R0,#4]
148EB0:  CBZ             R0, loc_148EB6
148EB2:  LDR             R0, [R0,#0x24]
148EB4:  BX              LR
148EB6:  MOVS            R0, #0
148EB8:  BX              LR
