; =========================================================
; Game Engine Function: sub_20FB30
; Address            : 0x20FB30 - 0x20FB4A
; =========================================================

20FB30:  PUSH            {R7,LR}
20FB32:  MOV             R7, SP
20FB34:  MOV             R2, R0
20FB36:  ORRS            R0, R1
20FB38:  CLZ.W           R0, R0
20FB3C:  LSRS            R0, R0, #5
20FB3E:  CBZ             R2, locret_20FB48
20FB40:  CBZ             R1, locret_20FB48
20FB42:  MOV             R0, R2
20FB44:  BL              sub_20FCE8
20FB48:  POP             {R7,PC}
