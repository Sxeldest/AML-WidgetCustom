; =========================================================
; Game Engine Function: _ZN6CEventnwEj
; Address            : 0x36FB10 - 0x36FB70
; =========================================================

36FB10:  PUSH            {R7,LR}
36FB12:  MOV             R7, SP
36FB14:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x36FB1E)
36FB16:  MOV.W           LR, #0
36FB1A:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
36FB1C:  LDR             R0, [R0]; CPools::ms_pEventPool ...
36FB1E:  LDR             R1, [R0]; CPools::ms_pEventPool
36FB20:  LDRD.W          R12, R0, [R1,#8]
36FB24:  ADDS            R0, #1
36FB26:  STR             R0, [R1,#0xC]
36FB28:  CMP             R0, R12
36FB2A:  BNE             loc_36FB3C
36FB2C:  MOVS            R0, #0
36FB2E:  MOVS.W          R2, LR,LSL#31
36FB32:  STR             R0, [R1,#0xC]
36FB34:  IT NE
36FB36:  POPNE           {R7,PC}
36FB38:  MOV.W           LR, #1
36FB3C:  LDR             R2, [R1,#4]
36FB3E:  LDRSB           R3, [R2,R0]
36FB40:  CMP.W           R3, #0xFFFFFFFF
36FB44:  BGT             loc_36FB24
36FB46:  AND.W           R3, R3, #0x7F
36FB4A:  STRB            R3, [R2,R0]
36FB4C:  LDR             R0, [R1,#4]
36FB4E:  LDR             R2, [R1,#0xC]
36FB50:  LDRB            R3, [R0,R2]
36FB52:  AND.W           R12, R3, #0x80
36FB56:  ADDS            R3, #1
36FB58:  AND.W           R3, R3, #0x7F
36FB5C:  ORR.W           R3, R3, R12
36FB60:  STRB            R3, [R0,R2]
36FB62:  LDR             R0, [R1]
36FB64:  LDR             R1, [R1,#0xC]
36FB66:  ADD.W           R1, R1, R1,LSL#4
36FB6A:  ADD.W           R0, R0, R1,LSL#2
36FB6E:  POP             {R7,PC}
