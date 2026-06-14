; =========================================================
; Game Engine Function: _Z19ClipRadarTileCoordsRiS_
; Address            : 0x442FD4 - 0x443004
; =========================================================

442FD4:  LDR             R2, [R0]
442FD6:  CMP             R2, #0
442FD8:  BLT             loc_442FE2
442FDA:  CMP             R2, #0xC
442FDC:  BLT             loc_442FEA
442FDE:  MOVS            R2, #0xB
442FE0:  B               loc_442FE4
442FE2:  MOVS            R2, #0
442FE4:  STR             R2, [R0]
442FE6:  MOVS            R0, #1
442FE8:  B               loc_442FEC
442FEA:  MOVS            R0, #0
442FEC:  LDR             R2, [R1]
442FEE:  CMP             R2, #0
442FF0:  BLT             loc_442FFC
442FF2:  CMP             R2, #0xC
442FF4:  IT LT
442FF6:  BXLT            LR
442FF8:  MOVS            R0, #0xB
442FFA:  B               loc_442FFE
442FFC:  MOVS            R0, #0
442FFE:  STR             R0, [R1]
443000:  MOVS            R0, #1
443002:  BX              LR
