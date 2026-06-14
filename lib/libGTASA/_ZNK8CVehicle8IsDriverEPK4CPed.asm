; =========================================================
; Game Engine Function: _ZNK8CVehicle8IsDriverEPK4CPed
; Address            : 0x584A42 - 0x584A58
; =========================================================

584A42:  MOV             R2, R0
584A44:  MOVS            R0, #0
584A46:  CMP             R1, #0
584A48:  IT EQ
584A4A:  BXEQ            LR
584A4C:  LDR.W           R2, [R2,#0x464]
584A50:  CMP             R2, R1
584A52:  IT EQ
584A54:  MOVEQ           R0, #1
584A56:  BX              LR
