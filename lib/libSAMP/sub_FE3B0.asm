; =========================================================
; Game Engine Function: sub_FE3B0
; Address            : 0xFE3B0 - 0xFE3D2
; =========================================================

FE3B0:  MOV             R1, R0
FE3B2:  LDR             R0, =(off_234A80 - 0xFE3B8)
FE3B4:  ADD             R0, PC; off_234A80
FE3B6:  LDR             R0, [R0]; dword_25C9C8
FE3B8:  LDR             R2, [R0]
FE3BA:  MOVS            R0, #0
FE3BC:  LDR             R3, [R2]
FE3BE:  CMP             R3, R1
FE3C0:  IT EQ
FE3C2:  BXEQ            LR
FE3C4:  ADDS            R0, #1
FE3C6:  ADD.W           R2, R2, #0x194
FE3CA:  CMP             R0, #0xD2
FE3CC:  BNE             loc_FE3BC
FE3CE:  MOVS            R0, #0
FE3D0:  BX              LR
