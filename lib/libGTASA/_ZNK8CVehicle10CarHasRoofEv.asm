; =========================================================
; Game Engine Function: _ZNK8CVehicle10CarHasRoofEv
; Address            : 0x5855D6 - 0x5855FA
; =========================================================

5855D6:  LDR.W           R1, [R0,#0x388]
5855DA:  LDRB.W          R1, [R1,#0xCD]
5855DE:  LSLS            R1, R1, #0x1C
5855E0:  BPL             loc_5855F6
5855E2:  LDRB.W          R1, [R0,#0x43C]
5855E6:  CBZ             R1, loc_5855F6
5855E8:  LDRB.W          R1, [R0,#0x43D]
5855EC:  MOVS            R0, #0
5855EE:  CMP             R1, #0
5855F0:  IT EQ
5855F2:  MOVEQ           R0, #1
5855F4:  BX              LR
5855F6:  MOVS            R0, #1
5855F8:  BX              LR
