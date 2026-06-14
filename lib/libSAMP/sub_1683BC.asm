; =========================================================
; Game Engine Function: sub_1683BC
; Address            : 0x1683BC - 0x1683F4
; =========================================================

1683BC:  LDR             R0, =(dword_381B58 - 0x1683C6)
1683BE:  MOVW            R2, #0x1A9C
1683C2:  ADD             R0, PC; dword_381B58
1683C4:  LDR             R1, [R0]
1683C6:  LDR             R0, [R1,R2]
1683C8:  CMP             R0, #1
1683CA:  BLT             loc_1683F0
1683CC:  ADD             R1, R2
1683CE:  ADD.W           R2, R0, R0,LSL#3
1683D2:  LDR             R1, [R1,#8]
1683D4:  ADD.W           R1, R1, R2,LSL#2
1683D8:  ADDS            R2, R0, #1
1683DA:  SUBS            R1, #0x20 ; ' '
1683DC:  LDR             R0, [R1]
1683DE:  CBZ             R0, loc_1683E8
1683E0:  LDRB            R3, [R0,#0xB]
1683E2:  LSLS            R3, R3, #0x1C
1683E4:  IT MI
1683E6:  BXMI            LR
1683E8:  SUBS            R2, #1
1683EA:  SUBS            R1, #0x24 ; '$'
1683EC:  CMP             R2, #1
1683EE:  BHI             loc_1683DC
1683F0:  MOVS            R0, #0
1683F2:  BX              LR
