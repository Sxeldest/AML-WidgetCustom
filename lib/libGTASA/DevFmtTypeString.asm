; =========================================================
; Game Engine Function: DevFmtTypeString
; Address            : 0x24889C - 0x2488B4
; =========================================================

24889C:  SUB.W           R0, R0, #0x1400
2488A0:  CMP             R0, #6
2488A2:  BHI             loc_2488AE
2488A4:  LDR             R1, =(off_661DD0 - 0x2488AA); "Signed Byte" ...
2488A6:  ADD             R1, PC; off_661DD0
2488A8:  LDR.W           R0, [R1,R0,LSL#2]
2488AC:  BX              LR
2488AE:  LDR             R0, =(aUnknownType - 0x2488B4); "(unknown type)"
2488B0:  ADD             R0, PC; "(unknown type)"
2488B2:  BX              LR
