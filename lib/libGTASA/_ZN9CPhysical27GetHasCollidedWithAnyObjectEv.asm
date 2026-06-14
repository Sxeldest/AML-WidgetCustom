; =========================================================
; Game Engine Function: _ZN9CPhysical27GetHasCollidedWithAnyObjectEv
; Address            : 0x401AF2 - 0x401B24
; =========================================================

401AF2:  LDRB.W          R1, [R0,#0x47]
401AF6:  LSLS            R1, R1, #0x1B
401AF8:  BPL             loc_401B20
401AFA:  LDRB.W          R1, [R0,#0xBD]
401AFE:  CBZ             R1, loc_401B20
401B00:  ADDS            R0, #0xC0
401B02:  MOVS            R2, #0
401B04:  LDR.W           R3, [R0,R2,LSL#2]
401B08:  CBZ             R3, loc_401B1A
401B0A:  LDRB.W          R3, [R3,#0x3A]
401B0E:  AND.W           R3, R3, #7
401B12:  CMP             R3, #4
401B14:  ITT EQ
401B16:  MOVEQ           R0, #1
401B18:  BXEQ            LR
401B1A:  ADDS            R2, #1
401B1C:  CMP             R2, R1
401B1E:  BLT             loc_401B04
401B20:  MOVS            R0, #0
401B22:  BX              LR
