; =========================================================
; Game Engine Function: sub_188832
; Address            : 0x188832 - 0x18888A
; =========================================================

188832:  PUSH            {R4,R6,R7,LR}
188834:  ADD             R7, SP, #8
188836:  LDRB.W          R2, [R0,#0x680]
18883A:  MOVS            R4, #0
18883C:  CBNZ            R2, loc_188886
18883E:  LDRD.W          LR, R2, [R0,#0x10]
188842:  MOVS            R3, #0
188844:  LDR.W           R12, [R0,#0x18]
188848:  CMP             R2, LR
18884A:  SUB.W           R2, R2, LR
18884E:  IT CC
188850:  RSBCC.W         R3, R12, #0
188854:  CMP             R2, R3
188856:  BEQ             loc_188886
188858:  ADD.W           R3, LR, #1
18885C:  LDR             R2, [R0,#0xC]
18885E:  SUBS.W          R4, R3, R12
188862:  IT NE
188864:  MOVNE           R4, R3
188866:  STR             R4, [R0,#0x10]
188868:  CMP             R4, #0
18886A:  IT EQ
18886C:  MOVEQ           R4, R12
18886E:  ADD.W           R2, R2, R4,LSL#2
188872:  ADD.W           R0, R0, #0x6A0
188876:  LDR.W           R2, [R2,#-4]
18887A:  LDRD.W          R4, R3, [R2,#0x30]
18887E:  STR             R3, [R1]
188880:  MOV             R1, R2
188882:  BL              sub_17E56C
188886:  MOV             R0, R4
188888:  POP             {R4,R6,R7,PC}
