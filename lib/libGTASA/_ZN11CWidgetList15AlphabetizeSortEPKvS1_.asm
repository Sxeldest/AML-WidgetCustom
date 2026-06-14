; =========================================================
; Game Engine Function: _ZN11CWidgetList15AlphabetizeSortEPKvS1_
; Address            : 0x2BA894 - 0x2BA8AA
; =========================================================

2BA894:  PUSH            {R7,LR}
2BA896:  MOV             R7, SP
2BA898:  BLX             strcmp
2BA89C:  MOV.W           R1, #0xFFFFFFFF
2BA8A0:  CMP             R0, #0
2BA8A2:  IT GT
2BA8A4:  MOVGT           R1, #1
2BA8A6:  MOV             R0, R1
2BA8A8:  POP             {R7,PC}
