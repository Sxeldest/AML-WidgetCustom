; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence11GetDataSizeEb
; Address            : 0x38B870 - 0x38B89C
; =========================================================

38B870:  LDRH            R2, [R0,#4]
38B872:  CMP             R1, #1
38B874:  LDRSH.W         R0, [R0,#6]
38B878:  AND.W           R2, R2, #2
38B87C:  BNE             loc_38B88E
38B87E:  CMP             R2, #0
38B880:  ITTT EQ
38B882:  ADDEQ.W         R0, R0, R0,LSL#2
38B886:  LSLEQ           R0, R0, #1
38B888:  BXEQ            LR
38B88A:  LSLS            R0, R0, #4
38B88C:  BX              LR
38B88E:  CMP             R2, #0
38B890:  ITEE NE
38B892:  LSLNE           R0, R0, #5
38B894:  ADDEQ.W         R0, R0, R0,LSL#2
38B898:  LSLEQ           R0, R0, #2
38B89A:  BX              LR
