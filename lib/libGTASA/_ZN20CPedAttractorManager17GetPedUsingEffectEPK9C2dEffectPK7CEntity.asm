; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager17GetPedUsingEffectEPK9C2dEffectPK7CEntity
; Address            : 0x4ABA58 - 0x4ABAD0
; =========================================================

4ABA58:  PUSH            {R4,R6,R7,LR}
4ABA5A:  ADD             R7, SP, #8
4ABA5C:  LDRB.W          R12, [R1,#0x34]
4ABA60:  CMP.W           R12, #9; switch 10 cases
4ABA64:  BHI             def_4ABA66; jumptable 004ABA66 default case
4ABA66:  TBB.W           [PC,R12]; switch jump
4ABA6A:  DCB 5; jump table for switch statement
4ABA6B:  DCB 0x16
4ABA6C:  DCB 7
4ABA6D:  DCB 9
4ABA6E:  DCB 0xB
4ABA6F:  DCB 0xD
4ABA70:  DCB 0xF
4ABA71:  DCB 0x11
4ABA72:  DCB 0x15
4ABA73:  DCB 0x13
4ABA74:  ADDS            R0, #0xC; jumptable 004ABA66 case 0
4ABA76:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA78:  ADDS            R0, #0x18; jumptable 004ABA66 case 2
4ABA7A:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA7C:  ADDS            R0, #0x24 ; '$'; jumptable 004ABA66 case 3
4ABA7E:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA80:  ADDS            R0, #0x30 ; '0'; jumptable 004ABA66 case 4
4ABA82:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA84:  ADDS            R0, #0x3C ; '<'; jumptable 004ABA66 case 5
4ABA86:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA88:  ADDS            R0, #0x48 ; 'H'; jumptable 004ABA66 case 6
4ABA8A:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA8C:  ADDS            R0, #0x54 ; 'T'; jumptable 004ABA66 case 7
4ABA8E:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA90:  ADDS            R0, #0x6C ; 'l'; jumptable 004ABA66 case 9
4ABA92:  B               loc_4ABA96; jumptable 004ABA66 case 1
4ABA94:  ADDS            R0, #0x60 ; '`'; jumptable 004ABA66 case 8
4ABA96:  LDR.W           R12, [R0,#4]; jumptable 004ABA66 case 1
4ABA9A:  CMP.W           R12, #1
4ABA9E:  BLT             def_4ABA66; jumptable 004ABA66 default case
4ABAA0:  LDR.W           LR, [R0,#8]
4ABAA4:  MOVS            R3, #0
4ABAA6:  LDR.W           R0, [LR,R3,LSL#2]
4ABAAA:  LDR             R4, [R0,#4]
4ABAAC:  CMP             R4, R1
4ABAAE:  ITT EQ
4ABAB0:  LDREQ           R4, [R0,#8]
4ABAB2:  CMPEQ           R4, R2
4ABAB4:  BEQ             loc_4ABAC0
4ABAB6:  ADDS            R3, #1
4ABAB8:  CMP             R3, R12
4ABABA:  BLT             loc_4ABAA6
4ABABC:  MOVS            R0, #0; jumptable 004ABA66 default case
4ABABE:  POP             {R4,R6,R7,PC}
4ABAC0:  LDR             R1, [R0,#0x1C]
4ABAC2:  CMP             R1, #0
4ABAC4:  ITTT NE
4ABAC6:  LDRNE           R0, [R0,#0x20]
4ABAC8:  LDRNE           R0, [R0]
4ABACA:  POPNE           {R4,R6,R7,PC}
4ABACC:  MOVS            R0, #0
4ABACE:  POP             {R4,R6,R7,PC}
