; =========================================================
; Game Engine Function: _ZN4CPad16DropItemJustDownEv
; Address            : 0x3FAAE8 - 0x3FAB06
; =========================================================

3FAAE8:  LDRH.W          R1, [R0,#0x110]
3FAAEC:  CMP             R1, #0
3FAAEE:  ITT EQ
3FAAF0:  LDRBEQ.W        R0, [R0,#0x12D]
3FAAF4:  CMPEQ           R0, #0
3FAAF6:  BEQ             loc_3FAAFC
3FAAF8:  MOVS            R0, #0
3FAAFA:  BX              LR
3FAAFC:  MOVS            R0, #0xF
3FAAFE:  MOVS            R1, #0
3FAB00:  MOVS            R2, #1
3FAB02:  B.W             sub_18D4F0
