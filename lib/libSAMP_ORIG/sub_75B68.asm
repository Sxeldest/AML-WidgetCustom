; =========================================================
; Game Engine Function: sub_75B68
; Address            : 0x75B68 - 0x75B7E
; =========================================================

75B68:  CMP             R1, #0x38 ; '8'
75B6A:  BHI             loc_75B78
75B6C:  LDR             R0, =(off_110A74 - 0x75B74); "%" ...
75B6E:  SXTB            R1, R1
75B70:  ADD             R0, PC; off_110A74
75B72:  LDR.W           R0, [R0,R1,LSL#2]
75B76:  BX              LR
75B78:  LDR             R0, =(aJ - 0x75B7E); "J" ...
75B7A:  ADD             R0, PC; "J"
75B7C:  BX              LR
