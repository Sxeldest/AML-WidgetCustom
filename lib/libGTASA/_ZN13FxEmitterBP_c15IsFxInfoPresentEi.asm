; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c15IsFxInfoPresentEi
; Address            : 0x367FE4 - 0x36800E
; =========================================================

367FE4:  LDR             R2, [R0,#0x2C]
367FE6:  CMP             R2, #1
367FE8:  ITT LT
367FEA:  MOVLT           R0, #0
367FEC:  BXLT            LR
367FEE:  LDR.W           R12, [R0,#0x30]
367FF2:  MOVS            R3, #0
367FF4:  LDR.W           R0, [R12,R3,LSL#2]
367FF8:  LDRH            R0, [R0,#4]
367FFA:  CMP             R0, R1
367FFC:  ITT EQ
367FFE:  MOVEQ           R0, #1
368000:  BXEQ            LR
368002:  ADDS            R3, #1
368004:  CMP             R3, R2
368006:  ITT GE
368008:  MOVGE           R0, #0
36800A:  BXGE            LR
36800C:  B               loc_367FF4
