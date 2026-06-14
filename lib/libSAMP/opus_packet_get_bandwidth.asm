; =========================================================
; Game Engine Function: opus_packet_get_bandwidth
; Address            : 0x18FEB4 - 0x18FEEC
; =========================================================

18FEB4:  LDRB            R0, [R0]
18FEB6:  TST.W           R0, #0x80
18FEBA:  BNE             loc_18FEDA
18FEBC:  AND.W           R1, R0, #0x60 ; '`'
18FEC0:  CMP             R1, #0x60 ; '`'
18FEC2:  ITTTT EQ
18FEC4:  LSREQ           R0, R0, #4
18FEC6:  MOVEQ.W         R1, #0x228
18FECA:  BFIEQ.W         R0, R1, #1, #0x1F
18FECE:  BXEQ            LR
18FED0:  UBFX.W          R0, R0, #5, #2
18FED4:  ADDW            R0, R0, #0x44D
18FED8:  BX              LR
18FEDA:  UBFX.W          R1, R0, #5, #2
18FEDE:  ADDW            R0, R1, #0x44E
18FEE2:  CMP             R1, #0
18FEE4:  IT EQ
18FEE6:  MOVWEQ          R0, #0x44D
18FEEA:  BX              LR
