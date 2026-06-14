; =========================================================
; Game Engine Function: _ZN6CWorld32TestForBuildingsOnTopOfEachOtherER8CPtrList
; Address            : 0x42BC7A - 0x42BC90
; =========================================================

42BC7A:  LDR             R0, [R0]
42BC7C:  B               loc_42BC80
42BC7E:  LDR             R0, [R0,#4]
42BC80:  CMP             R0, #0
42BC82:  IT EQ
42BC84:  BXEQ            LR
42BC86:  MOV             R1, R0
42BC88:  LDR             R1, [R1,#4]
42BC8A:  CMP             R1, #0
42BC8C:  BNE             loc_42BC88
42BC8E:  B               loc_42BC7E
