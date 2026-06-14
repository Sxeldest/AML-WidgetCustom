; =========================================================
; Game Engine Function: sub_155BC4
; Address            : 0x155BC4 - 0x155C12
; =========================================================

155BC4:  PUSH            {R4,R6,R7,LR}
155BC6:  ADD             R7, SP, #8
155BC8:  SUB             SP, SP, #0x10
155BCA:  MOV             R4, R0
155BCC:  STRB.W          R1, [R0,#0x7C]
155BD0:  MOVS            R0, #0
155BD2:  STRD.W          R0, R0, [SP,#0x18+var_10]
155BD6:  STRB.W          R0, [SP,#0x18+var_18]
155BDA:  MOV             R0, SP
155BDC:  BL              sub_EA862
155BE0:  LDR             R1, =(aRecorderenable - 0x155BE6); "recorderEnabled" ...
155BE2:  ADD             R1, PC; "recorderEnabled"
155BE4:  ADD.W           R0, R4, #0x60 ; '`'
155BE8:  BL              sub_E4710
155BEC:  LDRB.W          R1, [SP,#0x18+var_18]
155BF0:  LDRB            R2, [R0]
155BF2:  STRB            R1, [R0]
155BF4:  LDRD.W          R1, R4, [SP,#0x18+var_10]
155BF8:  LDRD.W          R3, R12, [R0,#8]
155BFC:  STRD.W          R1, R4, [R0,#8]
155C00:  MOV             R0, SP
155C02:  STRB.W          R2, [SP,#0x18+var_18]
155C06:  STRD.W          R3, R12, [SP,#0x18+var_10]
155C0A:  BL              sub_E3F7A
155C0E:  ADD             SP, SP, #0x10
155C10:  POP             {R4,R6,R7,PC}
