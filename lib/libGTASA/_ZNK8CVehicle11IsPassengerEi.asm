; =========================================================
; Game Engine Function: _ZNK8CVehicle11IsPassengerEi
; Address            : 0x5849CA - 0x584A42
; =========================================================

5849CA:  LDR.W           R2, [R0,#0x468]
5849CE:  CBZ             R2, loc_5849D8
5849D0:  LDRSH.W         R2, [R2,#0x26]
5849D4:  CMP             R2, R1
5849D6:  BEQ             loc_584A3A
5849D8:  LDR.W           R2, [R0,#0x46C]
5849DC:  CBZ             R2, loc_5849E6
5849DE:  LDRSH.W         R2, [R2,#0x26]
5849E2:  CMP             R2, R1
5849E4:  BEQ             loc_584A3A
5849E6:  LDR.W           R2, [R0,#0x470]
5849EA:  CBZ             R2, loc_5849F4
5849EC:  LDRSH.W         R2, [R2,#0x26]
5849F0:  CMP             R2, R1
5849F2:  BEQ             loc_584A3A
5849F4:  LDR.W           R2, [R0,#0x474]
5849F8:  CBZ             R2, loc_584A02
5849FA:  LDRSH.W         R2, [R2,#0x26]
5849FE:  CMP             R2, R1
584A00:  BEQ             loc_584A3A
584A02:  LDR.W           R2, [R0,#0x478]
584A06:  CBZ             R2, loc_584A10
584A08:  LDRSH.W         R2, [R2,#0x26]
584A0C:  CMP             R2, R1
584A0E:  BEQ             loc_584A3A
584A10:  LDR.W           R2, [R0,#0x47C]
584A14:  CBZ             R2, loc_584A1E
584A16:  LDRSH.W         R2, [R2,#0x26]
584A1A:  CMP             R2, R1
584A1C:  BEQ             loc_584A3A
584A1E:  LDR.W           R2, [R0,#0x480]
584A22:  CBZ             R2, loc_584A2C
584A24:  LDRSH.W         R2, [R2,#0x26]
584A28:  CMP             R2, R1
584A2A:  BEQ             loc_584A3A
584A2C:  LDR.W           R0, [R0,#0x484]
584A30:  CBZ             R0, loc_584A3E
584A32:  LDRSH.W         R0, [R0,#0x26]
584A36:  CMP             R0, R1
584A38:  BNE             loc_584A3E
584A3A:  MOVS            R0, #1
584A3C:  BX              LR
584A3E:  MOVS            R0, #0
584A40:  BX              LR
