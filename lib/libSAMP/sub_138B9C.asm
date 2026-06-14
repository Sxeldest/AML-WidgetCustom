; =========================================================
; Game Engine Function: sub_138B9C
; Address            : 0x138B9C - 0x138BEA
; =========================================================

138B9C:  PUSH            {R4-R7,LR}
138B9E:  ADD             R7, SP, #0xC
138BA0:  PUSH.W          {R8}
138BA4:  SUB             SP, SP, #0x18
138BA6:  MOV             R5, R1
138BA8:  ADD             R1, SP, #0x28+var_14
138BAA:  MOV             R4, R0
138BAC:  MOV             R0, R5
138BAE:  MOV             R8, R3
138BB0:  BL              sub_138BEA
138BB4:  MOV             R6, R0
138BB6:  LDR             R0, [R0]
138BB8:  CBZ             R0, loc_138BBE
138BBA:  MOVS            R1, #0
138BBC:  B               loc_138BDE
138BBE:  LDRD.W          R3, R0, [R7,#arg_0]
138BC2:  MOV             R1, R5
138BC4:  MOV             R2, R8
138BC6:  STR             R0, [SP,#0x28+var_28]
138BC8:  ADD             R0, SP, #0x28+var_20
138BCA:  BL              sub_138C5A
138BCE:  LDR             R3, [SP,#0x28+var_20]
138BD0:  MOV             R0, R5
138BD2:  LDR             R1, [SP,#0x28+var_14]
138BD4:  MOV             R2, R6
138BD6:  BL              sub_138CA8
138BDA:  LDR             R0, [SP,#0x28+var_20]
138BDC:  MOVS            R1, #1
138BDE:  STRB            R1, [R4,#4]
138BE0:  STR             R0, [R4]
138BE2:  ADD             SP, SP, #0x18
138BE4:  POP.W           {R8}
138BE8:  POP             {R4-R7,PC}
