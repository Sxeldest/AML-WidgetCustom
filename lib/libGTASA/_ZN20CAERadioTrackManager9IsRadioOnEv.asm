; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager9IsRadioOnEv
; Address            : 0x3A23DC - 0x3A23FC
; =========================================================

3A23DC:  LDR             R1, [R0,#0x68]
3A23DE:  CMP             R1, #7
3A23E0:  ITT EQ
3A23E2:  LDRBEQ          R1, [R0]
3A23E4:  CMPEQ           R1, #0
3A23E6:  BNE             loc_3A23F4
3A23E8:  LDR             R1, [R0,#0x6C]
3A23EA:  CMP             R1, #0
3A23EC:  ITT EQ
3A23EE:  LDREQ           R0, [R0,#0x70]
3A23F0:  CMPEQ           R0, #0
3A23F2:  BEQ             loc_3A23F8
3A23F4:  MOVS            R0, #1
3A23F6:  BX              LR
3A23F8:  MOVS            R0, #0
3A23FA:  BX              LR
