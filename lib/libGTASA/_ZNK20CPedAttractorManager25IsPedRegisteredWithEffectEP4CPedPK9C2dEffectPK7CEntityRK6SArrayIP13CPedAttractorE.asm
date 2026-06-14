; =========================================================
; Game Engine Function: _ZNK20CPedAttractorManager25IsPedRegisteredWithEffectEP4CPedPK9C2dEffectPK7CEntityRK6SArrayIP13CPedAttractorE
; Address            : 0x4AB9D8 - 0x4ABA56
; =========================================================

4AB9D8:  PUSH            {R4-R7,LR}
4AB9DA:  ADD             R7, SP, #0xC
4AB9DC:  PUSH.W          {R8,R9,R11}
4AB9E0:  LDR             R0, [R7,#arg_0]
4AB9E2:  LDR.W           LR, [R0,#4]
4AB9E6:  CMP.W           LR, #1
4AB9EA:  BLT             loc_4ABA46
4AB9EC:  LDR.W           R12, [R0,#8]
4AB9F0:  MOVS            R0, #0
4AB9F2:  B               loc_4ABA30
4AB9F4:  LDR.W           R8, [R4,#0x10]
4AB9F8:  CMP.W           R8, #1
4AB9FC:  BLT             loc_4ABA12
4AB9FE:  LDR.W           R9, [R4,#0x14]
4ABA02:  MOVS            R5, #0
4ABA04:  LDR.W           R6, [R9,R5,LSL#2]
4ABA08:  CMP             R6, R1
4ABA0A:  BEQ             loc_4ABA4E
4ABA0C:  ADDS            R5, #1
4ABA0E:  CMP             R5, R8
4ABA10:  BLT             loc_4ABA04
4ABA12:  LDR.W           R8, [R4,#0x1C]
4ABA16:  CMP.W           R8, #1
4ABA1A:  BLT             loc_4ABA40
4ABA1C:  LDR             R4, [R4,#0x20]
4ABA1E:  MOVS            R6, #0
4ABA20:  LDR.W           R5, [R4,R6,LSL#2]
4ABA24:  CMP             R5, R1
4ABA26:  BEQ             loc_4ABA4E
4ABA28:  ADDS            R6, #1
4ABA2A:  CMP             R6, R8
4ABA2C:  BLT             loc_4ABA20
4ABA2E:  B               loc_4ABA40
4ABA30:  LDR.W           R4, [R12,R0,LSL#2]
4ABA34:  LDR             R5, [R4,#4]
4ABA36:  CMP             R5, R2
4ABA38:  ITT EQ
4ABA3A:  LDREQ           R5, [R4,#8]
4ABA3C:  CMPEQ           R5, R3
4ABA3E:  BEQ             loc_4AB9F4
4ABA40:  ADDS            R0, #1
4ABA42:  CMP             R0, LR
4ABA44:  BLT             loc_4ABA30
4ABA46:  MOVS            R0, #0
4ABA48:  POP.W           {R8,R9,R11}
4ABA4C:  POP             {R4-R7,PC}
4ABA4E:  MOVS            R0, #1
4ABA50:  POP.W           {R8,R9,R11}
4ABA54:  POP             {R4-R7,PC}
