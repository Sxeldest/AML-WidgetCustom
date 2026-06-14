; =========================================================
; Game Engine Function: _Z10GLWOFromRQ14RQWindingOrder
; Address            : 0x1CFAA6 - 0x1CFABE
; =========================================================

1CFAA6:  MOVW            R1, #0x901
1CFAAA:  CMP             R0, #1
1CFAAC:  IT EQ
1CFAAE:  MOVEQ.W         R1, #0x900
1CFAB2:  CMP             R0, #0
1CFAB4:  IT EQ
1CFAB6:  MOVWEQ          R1, #0x901
1CFABA:  MOV             R0, R1
1CFABC:  BX              LR
