; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo4InitEv
; Address            : 0x384FA4 - 0x384FCC
; =========================================================

384FA4:  MOVS            R2, #0
384FA6:  MOVS            R1, #0
384FA8:  MOVT            R2, #0xFFFF
384FAC:  STR.W           R2, [R0,#0x1E]
384FB0:  MOV.W           R2, #0xFFFFFFFF
384FB4:  STRB.W          R1, [R0,#0x23]
384FB8:  STR             R2, [R0,#0x24]
384FBA:  MOVS            R2, #0x44FA0000
384FC0:  STRD.W          R1, R2, [R0,#0x2C]
384FC4:  STR             R1, [R0,#0x34]
384FC6:  MOVS            R1, #0xC0
384FC8:  STRH            R1, [R0,#0x28]
384FCA:  BX              LR
