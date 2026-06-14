; =========================================================
; Game Engine Function: sub_117AA8
; Address            : 0x117AA8 - 0x117AC6
; =========================================================

117AA8:  PUSH            {R7,LR}
117AAA:  MOV             R7, SP
117AAC:  LDR             R0, =(aHud - 0x117AB2); "hud" ...
117AAE:  ADD             R0, PC; "hud"
117AB0:  BL              sub_1636F0
117AB4:  ADDS            R1, R0, #1
117AB6:  IT NE
117AB8:  POPNE           {R7,PC}
117ABA:  LDR             R0, =(asc_879DB - 0x117AC0); "*" ...
117ABC:  ADD             R0, PC; "*"
117ABE:  POP.W           {R7,LR}
117AC2:  B.W             sub_1636F0
