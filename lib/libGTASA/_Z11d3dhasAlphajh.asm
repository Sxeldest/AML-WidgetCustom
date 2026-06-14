; =========================================================
; Game Engine Function: _Z11d3dhasAlphajh
; Address            : 0x1B3C90 - 0x1B3CBC
; =========================================================

1B3C90:  MOV             R2, R0
1B3C92:  SUB.W           R3, R2, #0x15
1B3C96:  MOVS            R0, #1
1B3C98:  CMP             R3, #2
1B3C9A:  IT CC
1B3C9C:  BXCC            LR
1B3C9E:  MOV             R3, #0x33545844
1B3CA6:  CMP             R2, R3
1B3CA8:  BEQ             locret_1B3CBA
1B3CAA:  MOV             R3, #0x35545844
1B3CB2:  CMP             R2, R3
1B3CB4:  IT NE
1B3CB6:  ANDNE.W         R0, R1, #1
1B3CBA:  BX              LR
