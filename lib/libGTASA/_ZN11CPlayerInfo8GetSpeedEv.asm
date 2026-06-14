; =========================================================
; Game Engine Function: _ZN11CPlayerInfo8GetSpeedEv
; Address            : 0x40BA68 - 0x40BA90
; =========================================================

40BA68:  LDR             R1, [R1]
40BA6A:  LDRB.W          R2, [R1,#0x485]
40BA6E:  LSLS            R2, R2, #0x1F
40BA70:  ITT NE
40BA72:  LDRNE.W         R2, [R1,#0x590]
40BA76:  CMPNE           R2, #0
40BA78:  BNE             loc_40BA82
40BA7A:  VLDR            D16, [R1,#0x48]
40BA7E:  LDR             R1, [R1,#0x50]
40BA80:  B               loc_40BA88
40BA82:  LDR             R1, [R2,#0x50]
40BA84:  VLDR            D16, [R2,#0x48]
40BA88:  STR             R1, [R0,#8]
40BA8A:  VSTR            D16, [R0]
40BA8E:  BX              LR
