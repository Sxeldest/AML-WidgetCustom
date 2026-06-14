; =========================================================
; Game Engine Function: sub_FF848
; Address            : 0xFF848 - 0xFF866
; =========================================================

FF848:  PUSH            {R7,LR}
FF84A:  MOV             R7, SP
FF84C:  BL              loc_10DF04
FF850:  CBZ             R0, loc_FF85A
FF852:  BL              loc_10DF04
FF856:  BL              sub_10DF10
FF85A:  LDR             R0, =(off_25B1C4 - 0xFF860)
FF85C:  ADD             R0, PC; off_25B1C4
FF85E:  LDR             R0, [R0]
FF860:  POP.W           {R7,LR}
FF864:  BX              R0
