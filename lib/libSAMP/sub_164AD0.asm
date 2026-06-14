; =========================================================
; Game Engine Function: sub_164AD0
; Address            : 0x164AD0 - 0x164AF0
; =========================================================

164AD0:  PUSH            {R4,R6,R7,LR}
164AD2:  ADD             R7, SP, #8
164AD4:  LDR             R4, =(off_381AF4 - 0x164ADA)
164AD6:  ADD             R4, PC; off_381AF4
164AD8:  LDR.W           R12, [R4]
164ADC:  CMP.W           R12, #0
164AE0:  BEQ             loc_164AEC
164AE2:  LDR             R4, [R7,#arg_0]
164AE4:  STR             R4, [R7,#arg_0]
164AE6:  POP.W           {R4,R6,R7,LR}
164AEA:  BX              R12
164AEC:  MOVS            R0, #0
164AEE:  POP             {R4,R6,R7,PC}
