; =========================================================
; Game Engine Function: _Z13GxtCharStrcpyPtPKt
; Address            : 0x5A83B2 - 0x5A83CE
; =========================================================

5A83B2:  LDRH            R2, [R1]
5A83B4:  MOV             R3, R0
5A83B6:  CBZ             R2, loc_5A83C8
5A83B8:  ADDS            R1, #2
5A83BA:  MOV             R3, R0
5A83BC:  STRH.W          R2, [R3],#2
5A83C0:  LDRH.W          R2, [R1],#2
5A83C4:  CMP             R2, #0
5A83C6:  BNE             loc_5A83BC
5A83C8:  MOVS            R1, #0
5A83CA:  STRH            R1, [R3]
5A83CC:  BX              LR
