; =========================================================
; Game Engine Function: _ZN16CPedIntelligence20RecordEventForScriptEii
; Address            : 0x4C17A0 - 0x4C17BA
; =========================================================

4C17A0:  CMP             R1, #0x20 ; ' '
4C17A2:  BEQ             locret_4C17B8
4C17A4:  CBZ             R1, loc_4C17B0
4C17A6:  LDRB.W          R3, [R0,#0xD2]
4C17AA:  CMP             R3, R2
4C17AC:  IT GE
4C17AE:  BXGE            LR
4C17B0:  STRB.W          R2, [R0,#0xD2]
4C17B4:  STRB.W          R1, [R0,#0xD1]
4C17B8:  BX              LR
