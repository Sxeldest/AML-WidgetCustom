; =========================================================
; Game Engine Function: opus_packet_get_bandwidth
; Address            : 0xB1C90 - 0xB1CC8
; =========================================================

B1C90:  LDRB            R0, [R0]
B1C92:  TST.W           R0, #0x80
B1C96:  BNE             loc_B1CB6
B1C98:  AND.W           R1, R0, #0x60 ; '`'
B1C9C:  CMP             R1, #0x60 ; '`'
B1C9E:  ITTTT EQ
B1CA0:  LSREQ           R0, R0, #4
B1CA2:  MOVEQ.W         R1, #0x228
B1CA6:  BFIEQ.W         R0, R1, #1, #0x1F
B1CAA:  BXEQ            LR
B1CAC:  UBFX.W          R0, R0, #5, #2
B1CB0:  ADDW            R0, R0, #0x44D
B1CB4:  BX              LR
B1CB6:  UBFX.W          R1, R0, #5, #2
B1CBA:  ADDW            R0, R1, #0x44E
B1CBE:  CMP             R1, #0
B1CC0:  IT EQ
B1CC2:  MOVWEQ          R0, #0x44D
B1CC6:  BX              LR
