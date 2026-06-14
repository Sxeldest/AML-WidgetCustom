; =========================================================
; Game Engine Function: _ZN9C2dEffect30Roadsign_GetPaletteIDFromFlagsE18CRoadsignAttrFlags
; Address            : 0x59CEDE - 0x59CF02
; =========================================================

59CEDE:  UBFX.W          R0, R0, #4, #2
59CEE2:  CMP             R0, #0
59CEE4:  ITTT EQ
59CEE6:  MOVEQ           R0, #0
59CEE8:  UXTHEQ          R0, R0
59CEEA:  BXEQ            LR
59CEEC:  CMP             R0, #3
59CEEE:  BEQ             loc_59CEFC
59CEF0:  CMP             R0, #2
59CEF2:  ITE NE
59CEF4:  MOVNE           R0, #1
59CEF6:  MOVEQ           R0, #2
59CEF8:  UXTH            R0, R0
59CEFA:  BX              LR
59CEFC:  MOVS            R0, #3
59CEFE:  UXTH            R0, R0
59CF00:  BX              LR
