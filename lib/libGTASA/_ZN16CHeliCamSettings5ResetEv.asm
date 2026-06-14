; =========================================================
; Game Engine Function: _ZN16CHeliCamSettings5ResetEv
; Address            : 0x3E2D68 - 0x3E2D98
; =========================================================

3E2D68:  VLDR            S0, [R0,#0x2C]
3E2D6C:  MOVS            R2, #0
3E2D6E:  VLDR            S2, [R0,#0x30]
3E2D72:  LDR             R1, [R0,#0x48]
3E2D74:  VSUB.F32        S0, S0, S2
3E2D78:  LDR             R3, [R0,#0x60]
3E2D7A:  STRB.W          R2, [R0,#0x5C]
3E2D7E:  STRB.W          R2, [R0,#0x40]
3E2D82:  STRB.W          R2, [R0,#0x80]
3E2D86:  STRB.W          R2, [R0,#0x81]
3E2D8A:  STRB.W          R2, [R0,#0x88]
3E2D8E:  STR             R3, [R0,#0x64]
3E2D90:  STR             R1, [R0,#0x44]
3E2D92:  VSTR            S0, [R0,#0x7C]
3E2D96:  BX              LR
