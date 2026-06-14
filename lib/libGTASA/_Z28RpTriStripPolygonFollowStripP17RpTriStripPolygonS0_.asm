; =========================================================
; Game Engine Function: _Z28RpTriStripPolygonFollowStripP17RpTriStripPolygonS0_
; Address            : 0x21A02E - 0x21A072
; =========================================================

21A02E:  PUSH            {R4,R5,R7,LR}
21A030:  ADD             R7, SP, #8
21A032:  LDR.W           R12, [R0,#0x18]
21A036:  CMP.W           R12, #0
21A03A:  BEQ             loc_21A062
21A03C:  MOVS            R3, #0
21A03E:  ADD.W           R2, R0, R3,LSL#2
21A042:  LDR             R2, [R2,#0x1C]
21A044:  LDR             R4, [R2,#0x1C]
21A046:  CMP             R4, #0
21A048:  ITTT NE
21A04A:  MOVNE           LR, R2
21A04C:  LDRNE.W         R4, [LR,#0x10]!
21A050:  CMPNE           R4, R1
21A052:  BEQ             loc_21A05C
21A054:  LDR.W           R5, [R2,#0x14]!
21A058:  CMP             R5, R1
21A05A:  BNE             loc_21A066
21A05C:  ADDS            R3, #1
21A05E:  CMP             R3, R12
21A060:  BCC             loc_21A03E
21A062:  MOVS            R0, #0
21A064:  POP             {R4,R5,R7,PC}
21A066:  CMP             R4, R0
21A068:  IT EQ
21A06A:  MOVEQ           LR, R2
21A06C:  LDR.W           R0, [LR]
21A070:  POP             {R4,R5,R7,PC}
