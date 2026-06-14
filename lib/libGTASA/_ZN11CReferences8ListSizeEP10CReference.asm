; =========================================================
; Game Engine Function: _ZN11CReferences8ListSizeEP10CReference
; Address            : 0x40E80C - 0x40E81E
; =========================================================

40E80C:  MOV             R1, R0
40E80E:  MOVS            R0, #0
40E810:  B               loc_40E816
40E812:  LDR             R1, [R1]
40E814:  ADDS            R0, #1
40E816:  CMP             R1, #0
40E818:  IT EQ
40E81A:  BXEQ            LR
40E81C:  B               loc_40E812
