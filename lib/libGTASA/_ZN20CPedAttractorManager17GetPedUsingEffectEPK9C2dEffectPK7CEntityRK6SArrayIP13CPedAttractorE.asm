; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager17GetPedUsingEffectEPK9C2dEffectPK7CEntityRK6SArrayIP13CPedAttractorE
; Address            : 0x4ABAD0 - 0x4ABB0E
; =========================================================

4ABAD0:  PUSH            {R4,R6,R7,LR}
4ABAD2:  ADD             R7, SP, #8
4ABAD4:  LDR.W           R12, [R3,#4]
4ABAD8:  CMP.W           R12, #1
4ABADC:  BLT             loc_4ABAFA
4ABADE:  LDR.W           LR, [R3,#8]
4ABAE2:  MOVS            R0, #0
4ABAE4:  LDR.W           R3, [LR,R0,LSL#2]
4ABAE8:  LDR             R4, [R3,#4]
4ABAEA:  CMP             R4, R1
4ABAEC:  ITT EQ
4ABAEE:  LDREQ           R4, [R3,#8]
4ABAF0:  CMPEQ           R4, R2
4ABAF2:  BEQ             loc_4ABAFE
4ABAF4:  ADDS            R0, #1
4ABAF6:  CMP             R0, R12
4ABAF8:  BLT             loc_4ABAE4
4ABAFA:  MOVS            R0, #0
4ABAFC:  POP             {R4,R6,R7,PC}
4ABAFE:  LDR             R0, [R3,#0x1C]
4ABB00:  CMP             R0, #0
4ABB02:  ITTT NE
4ABB04:  LDRNE           R0, [R3,#0x20]
4ABB06:  LDRNE           R0, [R0]
4ABB08:  POPNE           {R4,R6,R7,PC}
4ABB0A:  MOVS            R0, #0
4ABB0C:  POP             {R4,R6,R7,PC}
