; =========================================================
; Game Engine Function: sub_10B56C
; Address            : 0x10B56C - 0x10B58A
; =========================================================

10B56C:  PUSH            {R7,LR}
10B56E:  MOV             R7, SP
10B570:  LDR             R0, =(aHud - 0x10B576); "hud" ...
10B572:  ADD             R0, PC; "hud"
10B574:  BL              sub_108640
10B578:  ADDS            R1, R0, #1
10B57A:  IT NE
10B57C:  POPNE           {R7,PC}
10B57E:  LDR             R0, =(asc_879DB - 0x10B584); "*" ...
10B580:  ADD             R0, PC; "*"
10B582:  POP.W           {R7,LR}
10B586:  B.W             sub_108640
