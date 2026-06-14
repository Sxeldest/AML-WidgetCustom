; =========================================================
; Game Engine Function: _Z25RtAnimGetInterpolatorInfoi
; Address            : 0x1EAF74 - 0x1EAFA4
; =========================================================

1EAF74:  MOV             R12, R0
1EAF76:  LDR             R0, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EAF7C)
1EAF78:  ADD             R0, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EAF7A:  LDR             R0, [R0]; RtAnimInterpolatorInfoBlockNumEntries
1EAF7C:  LDR             R2, [R0]
1EAF7E:  CMP             R2, #1
1EAF80:  ITT LT
1EAF82:  MOVLT           R0, #0
1EAF84:  BXLT            LR
1EAF86:  LDR             R0, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EAF8E)
1EAF88:  MOVS            R3, #0
1EAF8A:  ADD             R0, PC; RtAnimInterpolatorInfoBlock_ptr
1EAF8C:  LDR             R0, [R0]; RtAnimInterpolatorInfoBlock
1EAF8E:  LDR             R1, [R0]
1EAF90:  CMP             R1, R12
1EAF92:  IT EQ
1EAF94:  BXEQ            LR
1EAF96:  ADDS            R3, #1
1EAF98:  ADDS            R0, #0x30 ; '0'
1EAF9A:  CMP             R3, R2
1EAF9C:  ITT GE
1EAF9E:  MOVGE           R0, #0
1EAFA0:  BXGE            LR
1EAFA2:  B               loc_1EAF8E
