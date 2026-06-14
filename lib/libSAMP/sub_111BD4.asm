; =========================================================
; Game Engine Function: sub_111BD4
; Address            : 0x111BD4 - 0x111BF2
; =========================================================

111BD4:  PUSH            {R7,LR}
111BD6:  MOV             R7, SP
111BD8:  LDR             R0, =(aHud - 0x111BDE); "hud" ...
111BDA:  ADD             R0, PC; "hud"
111BDC:  BL              sub_108640
111BE0:  ADDS            R1, R0, #1
111BE2:  IT NE
111BE4:  POPNE           {R7,PC}
111BE6:  LDR             R0, =(asc_879DB - 0x111BEC); "*" ...
111BE8:  ADD             R0, PC; "*"
111BEA:  POP.W           {R7,LR}
111BEE:  B.W             sub_108640
