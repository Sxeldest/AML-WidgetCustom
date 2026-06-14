; =========================================================
; Game Engine Function: sub_FF9B4
; Address            : 0xFF9B4 - 0xFF9CE
; =========================================================

FF9B4:  LDR             R2, =(off_234970 - 0xFF9BA)
FF9B6:  ADD             R2, PC; off_234970
FF9B8:  LDR             R2, [R2]; dword_23DEF0
FF9BA:  LDR             R2, [R2]
FF9BC:  CBZ             R2, loc_FF9C6
FF9BE:  LDRB            R2, [R2,#2]
FF9C0:  CBZ             R2, loc_FF9C6
FF9C2:  MOVS            R0, #0
FF9C4:  BX              LR
FF9C6:  LDR             R2, =(off_25B1EC - 0xFF9CC)
FF9C8:  ADD             R2, PC; off_25B1EC
FF9CA:  LDR             R2, [R2]
FF9CC:  BX              R2
