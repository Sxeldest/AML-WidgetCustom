; =========================================================
; Game Engine Function: _ZN8CCarCtrl15IsAnyoneParkingEv
; Address            : 0x2F0BD0 - 0x2F0C32
; =========================================================

2F0BD0:  PUSH            {R7,LR}
2F0BD2:  MOV             R7, SP
2F0BD4:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2F0BDA)
2F0BD6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2F0BD8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
2F0BDA:  LDR.W           LR, [R0]; CPools::ms_pVehiclePool
2F0BDE:  LDR.W           R1, [LR,#8]
2F0BE2:  CMP             R1, #0
2F0BE4:  ITT EQ
2F0BE6:  MOVEQ           R0, #0
2F0BE8:  POPEQ           {R7,PC}
2F0BEA:  MOVW            R0, #0xA2C
2F0BEE:  LDR.W           R2, [LR,#4]
2F0BF2:  MULS            R0, R1
2F0BF4:  MOV.W           R12, #0x33 ; '3'
2F0BF8:  SUBW            R3, R0, #0xA2C
2F0BFC:  ADDS            R0, R2, R1
2F0BFE:  LDRSB.W         R0, [R0,#-1]
2F0C02:  CMP             R0, #0
2F0C04:  BLT             loc_2F0C22
2F0C06:  LDR.W           R0, [LR]
2F0C0A:  ADDS            R0, R0, R3
2F0C0C:  BEQ             loc_2F0C22
2F0C0E:  LDRB.W          R0, [R0,#0x3BE]
2F0C12:  SUBS            R0, #0x2D ; '-'
2F0C14:  UXTB            R0, R0
2F0C16:  CMP             R0, #5
2F0C18:  BHI             loc_2F0C22
2F0C1A:  LSR.W           R0, R12, R0
2F0C1E:  LSLS            R0, R0, #0x1F
2F0C20:  BNE             loc_2F0C2E
2F0C22:  SUBS            R1, #1
2F0C24:  SUBW            R3, R3, #0xA2C
2F0C28:  BNE             loc_2F0BFC
2F0C2A:  MOVS            R0, #0
2F0C2C:  POP             {R7,PC}
2F0C2E:  MOVS            R0, #1
2F0C30:  POP             {R7,PC}
