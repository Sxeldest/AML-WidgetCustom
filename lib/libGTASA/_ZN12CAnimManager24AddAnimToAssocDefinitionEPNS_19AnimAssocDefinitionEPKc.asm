; =========================================================
; Game Engine Function: _ZN12CAnimManager24AddAnimToAssocDefinitionEPNS_19AnimAssocDefinitionEPKc
; Address            : 0x38E910 - 0x38E920
; =========================================================

38E910:  LDR             R2, [R0,#0x28]
38E912:  LDR.W           R0, [R2],#4; char *
38E916:  LDRB            R3, [R0]
38E918:  CMP             R3, #0
38E91A:  BNE             loc_38E912
38E91C:  B.W             j_strcpy
