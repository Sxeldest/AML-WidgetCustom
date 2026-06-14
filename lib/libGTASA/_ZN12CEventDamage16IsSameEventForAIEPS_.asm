; =========================================================
; Game Engine Function: _ZN12CEventDamage16IsSameEventForAIEPS_
; Address            : 0x372C84 - 0x372CA0
; =========================================================

372C84:  LDR             R2, [R1,#0x10]
372C86:  LDR             R3, [R0,#0x10]
372C88:  CMP             R3, R2
372C8A:  BEQ             loc_372C90
372C8C:  MOVS            R0, #0
372C8E:  BX              LR
372C90:  LDR             R1, [R1,#0x18]
372C92:  LDR             R0, [R0,#0x18]
372C94:  CMP             R0, R1
372C96:  ITT EQ
372C98:  MOVEQ           R0, #1
372C9A:  BXEQ            LR
372C9C:  MOVS            R0, #0
372C9E:  BX              LR
