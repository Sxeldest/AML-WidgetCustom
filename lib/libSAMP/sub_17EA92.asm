; =========================================================
; Game Engine Function: sub_17EA92
; Address            : 0x17EA92 - 0x17EACE
; =========================================================

17EA92:  PUSH            {R4-R7,LR}
17EA94:  ADD             R7, SP, #0xC
17EA96:  PUSH.W          {R11}
17EA9A:  SUB             SP, SP, #0x18
17EA9C:  LDR.W           R12, [R0,#0x340]
17EAA0:  CMP.W           R12, #0
17EAA4:  BEQ             loc_17EAC4
17EAA6:  LDRD.W          R5, R4, [R12,#4]
17EAAA:  MOV.W           R12, #0
17EAAE:  LDRD.W          R6, LR, [R7,#arg_0]
17EAB2:  STRD.W          R6, LR, [SP,#0x28+var_28]
17EAB6:  STRD.W          R5, R4, [SP,#0x28+var_20]
17EABA:  STR.W           R12, [SP,#0x28+var_18]
17EABE:  BL              sub_1806C4
17EAC2:  B               loc_17EAC6
17EAC4:  MOVS            R0, #0
17EAC6:  ADD             SP, SP, #0x18
17EAC8:  POP.W           {R11}
17EACC:  POP             {R4-R7,PC}
