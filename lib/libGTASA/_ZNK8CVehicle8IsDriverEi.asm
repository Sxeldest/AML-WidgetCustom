; =========================================================
; Game Engine Function: _ZNK8CVehicle8IsDriverEi
; Address            : 0x584A58 - 0x584A6E
; =========================================================

584A58:  LDR.W           R0, [R0,#0x464]
584A5C:  CBZ             R0, loc_584A6A
584A5E:  LDRSH.W         R0, [R0,#0x26]
584A62:  CMP             R0, R1
584A64:  ITT EQ
584A66:  MOVEQ           R0, #1
584A68:  BXEQ            LR
584A6A:  MOVS            R0, #0
584A6C:  BX              LR
