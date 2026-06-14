; =========================================================
; Game Engine Function: sub_15FBB6
; Address            : 0x15FBB6 - 0x15FBD2
; =========================================================

15FBB6:  PUSH            {R4,R6,R7,LR}
15FBB8:  ADD             R7, SP, #8
15FBBA:  MOV             R4, R0
15FBBC:  BL              sub_15ED76
15FBC0:  CBZ             R0, loc_15FBCE
15FBC2:  MOV             R1, R0
15FBC4:  MOV             R0, R4
15FBC6:  BL              sub_15FBD2
15FBCA:  MOVS            R0, #1
15FBCC:  POP             {R4,R6,R7,PC}
15FBCE:  MOVS            R0, #0
15FBD0:  POP             {R4,R6,R7,PC}
