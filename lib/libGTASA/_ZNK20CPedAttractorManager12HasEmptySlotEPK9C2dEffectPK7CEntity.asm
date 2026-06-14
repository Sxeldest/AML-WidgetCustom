; =========================================================
; Game Engine Function: _ZNK20CPedAttractorManager12HasEmptySlotEPK9C2dEffectPK7CEntity
; Address            : 0x4AB23C - 0x4AB2C6
; =========================================================

4AB23C:  PUSH            {R4,R6,R7,LR}
4AB23E:  ADD             R7, SP, #8
4AB240:  CBZ             R1, loc_4AB264
4AB242:  LDRB            R3, [R1,#0xC]
4AB244:  CMP             R3, #3
4AB246:  BNE             loc_4AB264
4AB248:  LDRB.W          R12, [R1,#0x34]
4AB24C:  CMP.W           R12, #9; switch 10 cases
4AB250:  BHI             def_4AB252; jumptable 004AB252 default case
4AB252:  TBB.W           [PC,R12]; switch jump
4AB256:  DCB 5; jump table for switch statement
4AB257:  DCB 0x18
4AB258:  DCB 9
4AB259:  DCB 0xB
4AB25A:  DCB 0xD
4AB25B:  DCB 0xF
4AB25C:  DCB 0x11
4AB25D:  DCB 0x13
4AB25E:  DCB 0x15
4AB25F:  DCB 0x17
4AB260:  ADDS            R0, #0xC; jumptable 004AB252 case 0
4AB262:  B               loc_4AB286; jumptable 004AB252 case 1
4AB264:  MOVS            R0, #0
4AB266:  POP             {R4,R6,R7,PC}
4AB268:  ADDS            R0, #0x18; jumptable 004AB252 case 2
4AB26A:  B               loc_4AB286; jumptable 004AB252 case 1
4AB26C:  ADDS            R0, #0x24 ; '$'; jumptable 004AB252 case 3
4AB26E:  B               loc_4AB286; jumptable 004AB252 case 1
4AB270:  ADDS            R0, #0x30 ; '0'; jumptable 004AB252 case 4
4AB272:  B               loc_4AB286; jumptable 004AB252 case 1
4AB274:  ADDS            R0, #0x3C ; '<'; jumptable 004AB252 case 5
4AB276:  B               loc_4AB286; jumptable 004AB252 case 1
4AB278:  ADDS            R0, #0x48 ; 'H'; jumptable 004AB252 case 6
4AB27A:  B               loc_4AB286; jumptable 004AB252 case 1
4AB27C:  ADDS            R0, #0x54 ; 'T'; jumptable 004AB252 case 7
4AB27E:  B               loc_4AB286; jumptable 004AB252 case 1
4AB280:  ADDS            R0, #0x60 ; '`'; jumptable 004AB252 case 8
4AB282:  B               loc_4AB286; jumptable 004AB252 case 1
4AB284:  ADDS            R0, #0x6C ; 'l'; jumptable 004AB252 case 9
4AB286:  LDR.W           R12, [R0,#4]; jumptable 004AB252 case 1
4AB28A:  CMP.W           R12, #1
4AB28E:  BLT             def_4AB252; jumptable 004AB252 default case
4AB290:  LDR.W           LR, [R0,#8]
4AB294:  MOVS            R3, #0
4AB296:  LDR.W           R0, [LR,R3,LSL#2]
4AB29A:  LDR             R4, [R0,#4]
4AB29C:  CMP             R4, R1
4AB29E:  ITT EQ
4AB2A0:  LDREQ           R4, [R0,#8]
4AB2A2:  CMPEQ           R4, R2
4AB2A4:  BEQ             loc_4AB2B4
4AB2A6:  ADDS            R3, #1
4AB2A8:  CMP             R3, R12
4AB2AA:  BLT             loc_4AB296
4AB2AC:  MOVS            R0, #1
4AB2AE:  POP             {R4,R6,R7,PC}
4AB2B0:  MOVS            R0, #1; jumptable 004AB252 default case
4AB2B2:  POP             {R4,R6,R7,PC}
4AB2B4:  LDR             R1, [R0,#0x10]
4AB2B6:  LDR             R2, [R0,#0x1C]
4AB2B8:  LDR             R3, [R0,#0x30]
4AB2BA:  MOVS            R0, #0
4AB2BC:  ADD             R1, R2
4AB2BE:  CMP             R1, R3
4AB2C0:  IT LT
4AB2C2:  MOVLT           R0, #1
4AB2C4:  POP             {R4,R6,R7,PC}
