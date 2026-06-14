; =========================================================
; Game Engine Function: sub_EA270
; Address            : 0xEA270 - 0xEA2D2
; =========================================================

EA270:  PUSH            {R4-R7,LR}
EA272:  ADD             R7, SP, #0xC
EA274:  PUSH.W          {R11}
EA278:  LDRB            R0, [R2]
EA27A:  LDRB            R3, [R1]
EA27C:  LDR             R4, [R2,#4]
EA27E:  ANDS.W          LR, R0, #1
EA282:  LDR             R5, [R1,#4]
EA284:  IT EQ
EA286:  LSREQ           R4, R0, #1
EA288:  ANDS.W          R6, R3, #1
EA28C:  IT EQ
EA28E:  LSREQ           R5, R3, #1
EA290:  CMP             R4, R5
EA292:  MOV             R3, R5
EA294:  IT CC
EA296:  MOVCC           R3, R4
EA298:  CBZ             R3, loc_EA2BA
EA29A:  LDR             R0, [R1,#8]
EA29C:  CMP             R6, #0
EA29E:  LDR.W           R12, [R2,#8]
EA2A2:  IT EQ
EA2A4:  ADDEQ           R0, R1, #1; s1
EA2A6:  CMP.W           LR, #0
EA2AA:  IT EQ
EA2AC:  ADDEQ.W         R12, R2, #1
EA2B0:  MOV             R1, R12; s2
EA2B2:  MOV             R2, R3; n
EA2B4:  BLX             memcmp
EA2B8:  CBNZ            R0, loc_EA2CA
EA2BA:  MOVS            R0, #0
EA2BC:  CMP             R4, R5
EA2BE:  IT CC
EA2C0:  MOVCC           R0, #1
EA2C2:  CMP             R5, R4
EA2C4:  IT CC
EA2C6:  MOVCC.W         R0, #0xFFFFFFFF
EA2CA:  LSRS            R0, R0, #0x1F
EA2CC:  POP.W           {R11}
EA2D0:  POP             {R4-R7,PC}
