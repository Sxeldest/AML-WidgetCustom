; =========================================================
; Game Engine Function: _Z7NvFTellPv
; Address            : 0x2673AE - 0x2673D6
; =========================================================

2673AE:  PUSH            {R4,R5,R7,LR}
2673B0:  ADD             R7, SP, #8
2673B2:  LDRD.W          R1, R4, [R0]
2673B6:  CMP             R1, #1
2673B8:  BNE             loc_2673C4
2673BA:  MOV             R0, R4; stream
2673BC:  POP.W           {R4,R5,R7,LR}
2673C0:  B.W             j_ftell
2673C4:  MOV             R0, R4; asset
2673C6:  BLX             AAsset_getLength
2673CA:  MOV             R5, R0
2673CC:  MOV             R0, R4; asset
2673CE:  BLX             AAsset_getRemainingLength
2673D2:  SUBS            R0, R5, R0
2673D4:  POP             {R4,R5,R7,PC}
