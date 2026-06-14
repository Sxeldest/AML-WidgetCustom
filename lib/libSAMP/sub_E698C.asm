; =========================================================
; Game Engine Function: sub_E698C
; Address            : 0xE698C - 0xE69C2
; =========================================================

E698C:  PUSH            {R4,R6,R7,LR}
E698E:  ADD             R7, SP, #8
E6990:  MOV             R4, R0
E6992:  BL              sub_E71D0
E6996:  CMP             R0, #0xEF
E6998:  BNE             loc_E69B4
E699A:  MOV             R0, R4
E699C:  BL              sub_E71D0
E69A0:  CMP             R0, #0xBB
E69A2:  BNE             loc_E69BE
E69A4:  MOV             R0, R4
E69A6:  BL              sub_E71D0
E69AA:  SUBS            R0, #0xBF
E69AC:  CLZ.W           R0, R0
E69B0:  LSRS            R0, R0, #5
E69B2:  POP             {R4,R6,R7,PC}
E69B4:  MOV             R0, R4
E69B6:  BL              sub_E7238
E69BA:  MOVS            R0, #1
E69BC:  POP             {R4,R6,R7,PC}
E69BE:  MOVS            R0, #0
E69C0:  POP             {R4,R6,R7,PC}
