; =========================================================
; Game Engine Function: _ZN9C2dEffect31Roadsign_GetNumLettersFromFlagsE18CRoadsignAttrFlags
; Address            : 0x59CEBA - 0x59CEDE
; =========================================================

59CEBA:  UBFX.W          R0, R0, #2, #2
59CEBE:  CMP             R0, #0
59CEC0:  ITTT EQ
59CEC2:  MOVEQ           R0, #0x10
59CEC4:  UXTHEQ          R0, R0
59CEC6:  BXEQ            LR
59CEC8:  CMP             R0, #3
59CECA:  BEQ             loc_59CED8
59CECC:  CMP             R0, #2
59CECE:  ITE NE
59CED0:  MOVNE           R0, #2
59CED2:  MOVEQ           R0, #4
59CED4:  UXTH            R0, R0
59CED6:  BX              LR
59CED8:  MOVS            R0, #8
59CEDA:  UXTH            R0, R0
59CEDC:  BX              LR
