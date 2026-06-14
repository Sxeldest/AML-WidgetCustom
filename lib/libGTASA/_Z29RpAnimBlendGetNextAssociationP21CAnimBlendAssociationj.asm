; =========================================================
; Game Engine Function: _Z29RpAnimBlendGetNextAssociationP21CAnimBlendAssociationj
; Address            : 0x390BEE - 0x390C10
; =========================================================

390BEE:  LDR             R0, [R0,#4]
390BF0:  CMP             R0, #0
390BF2:  ITT EQ
390BF4:  MOVEQ           R0, #0
390BF6:  BXEQ            LR
390BF8:  B               loc_390C04
390BFA:  LDR             R0, [R0]
390BFC:  CMP             R0, #0
390BFE:  ITT EQ
390C00:  MOVEQ           R0, #0
390C02:  BXEQ            LR
390C04:  LDRH            R2, [R0,#0x2A]
390C06:  TST             R2, R1
390C08:  ITT NE
390C0A:  SUBNE           R0, #4
390C0C:  BXNE            LR
390C0E:  B               loc_390BFA
