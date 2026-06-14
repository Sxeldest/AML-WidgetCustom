; =========================================================
; Game Engine Function: sub_148E8E
; Address            : 0x148E8E - 0x148EA4
; =========================================================

148E8E:  CMP.W           R1, #0x3EC
148E92:  BHI             loc_148EA0
148E94:  ADD.W           R0, R0, R1,LSL#2
148E98:  LDR             R0, [R0,#4]
148E9A:  CBZ             R0, loc_148EA0
148E9C:  LDR             R0, [R0,#0x20]
148E9E:  BX              LR
148EA0:  MOVS            R0, #0
148EA2:  BX              LR
