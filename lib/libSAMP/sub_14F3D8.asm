; =========================================================
; Game Engine Function: sub_14F3D8
; Address            : 0x14F3D8 - 0x14F404
; =========================================================

14F3D8:  CMP.W           R1, #0x900
14F3DC:  ITT HI
14F3DE:  MOVHI           R0, #0
14F3E0:  BXHI            LR
14F3E2:  ADD.W           R0, R0, #0x2400
14F3E6:  LDRD.W          R2, R0, [R0]
14F3EA:  CMP             R2, R0
14F3EC:  BEQ             loc_14F3FC
14F3EE:  LDRH            R3, [R2]
14F3F0:  CMP             R3, R1
14F3F2:  BEQ             loc_14F3FC
14F3F4:  ADDS            R2, #2
14F3F6:  CMP             R2, R0
14F3F8:  BNE             loc_14F3EE
14F3FA:  MOV             R2, R0
14F3FC:  SUBS            R0, R2, R0
14F3FE:  IT NE
14F400:  MOVNE           R0, #1
14F402:  BX              LR
