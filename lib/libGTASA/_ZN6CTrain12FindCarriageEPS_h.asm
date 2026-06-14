; =========================================================
; Game Engine Function: _ZN6CTrain12FindCarriageEPS_h
; Address            : 0x57FEF6 - 0x57FF12
; =========================================================

57FEF6:  CBZ             R1, locret_57FF10
57FEF8:  MOVS            R2, #0
57FEFA:  B               loc_57FF06
57FEFC:  ADDS            R2, #1
57FEFE:  UXTB            R3, R2
57FF00:  CMP             R3, R1
57FF02:  IT CS
57FF04:  BXCS            LR
57FF06:  LDR.W           R0, [R0,#0x5E8]
57FF0A:  CMP             R0, #0
57FF0C:  BNE             loc_57FEFC
57FF0E:  MOVS            R0, #0
57FF10:  BX              LR
