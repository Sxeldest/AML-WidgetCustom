; =========================================================
; Game Engine Function: _ZN9CColPointaSERKS_
; Address            : 0x2E1C08 - 0x2E1C42
; =========================================================

2E1C08:  VLDR            D16, [R1]
2E1C0C:  LDR             R2, [R1,#8]
2E1C0E:  STR             R2, [R0,#8]
2E1C10:  VSTR            D16, [R0]
2E1C14:  VLDR            D16, [R1,#0x10]
2E1C18:  LDR             R2, [R1,#0x18]
2E1C1A:  STR             R2, [R0,#0x18]
2E1C1C:  VSTR            D16, [R0,#0x10]
2E1C20:  LDRB.W          R2, [R1,#0x22]
2E1C24:  LDRH            R3, [R1,#0x20]
2E1C26:  STRB.W          R2, [R0,#0x22]
2E1C2A:  STRH            R3, [R0,#0x20]
2E1C2C:  LDRB.W          R2, [R1,#0x25]
2E1C30:  LDRH.W          R3, [R1,#0x23]
2E1C34:  STRB.W          R2, [R0,#0x25]
2E1C38:  STRH.W          R3, [R0,#0x23]
2E1C3C:  LDR             R1, [R1,#0x28]
2E1C3E:  STR             R1, [R0,#0x28]
2E1C40:  BX              LR
