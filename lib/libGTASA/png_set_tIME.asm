; =========================================================
; Game Engine Function: png_set_tIME
; Address            : 0x202828 - 0x20287E
; =========================================================

202828:  CBZ             R0, locret_20287C
20282A:  CMP             R1, #0
20282C:  IT NE
20282E:  CMPNE           R2, #0
202830:  BEQ             locret_20287C
202832:  LDRB.W          R3, [R0,#0x135]
202836:  LSLS            R3, R3, #0x1E
202838:  IT MI
20283A:  BXMI            LR
20283C:  LDRB            R3, [R2,#2]
20283E:  SUBS            R3, #1
202840:  UXTB            R3, R3
202842:  CMP             R3, #0xB
202844:  BHI             loc_202862
202846:  LDRB            R3, [R2,#3]
202848:  SUBS            R3, #1
20284A:  UXTB            R3, R3
20284C:  CMP             R3, #0x1E
20284E:  ITT LS
202850:  LDRBLS          R3, [R2,#4]
202852:  CMPLS           R3, #0x17
202854:  BHI             loc_202862
202856:  LDRB            R3, [R2,#5]
202858:  CMP             R3, #0x3B ; ';'
20285A:  ITT LS
20285C:  LDRBLS          R3, [R2,#6]
20285E:  CMPLS           R3, #0x3D ; '='
202860:  BCC             loc_202868
202862:  ADR             R1, aIgnoringInvali_0; "Ignoring invalid time value"
202864:  B.W             j_j_png_warning
202868:  LDR             R3, [R1,#8]
20286A:  LDR             R0, [R2]
20286C:  LDR             R2, [R2,#4]
20286E:  STR.W           R2, [R1,#0x90]
202872:  STR.W           R0, [R1,#0x8C]
202876:  ORR.W           R0, R3, #0x200
20287A:  STR             R0, [R1,#8]
20287C:  BX              LR
