; =========================================================
; Game Engine Function: sub_17E660
; Address            : 0x17E660 - 0x17E686
; =========================================================

17E660:  LDR.W           R12, [R0,#4]
17E664:  CMP.W           R12, #0
17E668:  BEQ             loc_17E680
17E66A:  LDR             R3, [R0]
17E66C:  MOVS            R0, #0
17E66E:  LDR.W           R2, [R3,R0,LSL#2]
17E672:  CBZ             R2, loc_17E67A
17E674:  LDR             R2, [R2]
17E676:  CMP             R2, R1
17E678:  BEQ             loc_17E682
17E67A:  ADDS            R0, #1
17E67C:  CMP             R12, R0
17E67E:  BNE             loc_17E66E
17E680:  MOVS            R0, #0xFF
17E682:  UXTB            R0, R0
17E684:  BX              LR
