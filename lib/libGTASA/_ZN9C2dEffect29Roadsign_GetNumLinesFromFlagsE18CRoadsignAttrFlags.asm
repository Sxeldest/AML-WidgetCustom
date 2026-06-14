; =========================================================
; Game Engine Function: _ZN9C2dEffect29Roadsign_GetNumLinesFromFlagsE18CRoadsignAttrFlags
; Address            : 0x59CE98 - 0x59CEBA
; =========================================================

59CE98:  ANDS.W          R0, R0, #3
59CE9C:  ITTT EQ
59CE9E:  MOVEQ           R0, #4
59CEA0:  UXTHEQ          R0, R0
59CEA2:  BXEQ            LR
59CEA4:  CMP             R0, #3
59CEA6:  BEQ             loc_59CEB4
59CEA8:  CMP             R0, #2
59CEAA:  ITE NE
59CEAC:  MOVNE           R0, #1
59CEAE:  MOVEQ           R0, #2
59CEB0:  UXTH            R0, R0
59CEB2:  BX              LR
59CEB4:  MOVS            R0, #3
59CEB6:  UXTH            R0, R0
59CEB8:  BX              LR
