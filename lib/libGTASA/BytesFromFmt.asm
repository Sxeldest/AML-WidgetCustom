; =========================================================
; Game Engine Function: BytesFromFmt
; Address            : 0x24049C - 0x2404B2
; =========================================================

24049C:  SUB.W           R0, R0, #0x1400
2404A0:  CMP             R0, #6
2404A2:  ITT HI
2404A4:  MOVHI           R0, #0
2404A6:  BXHI            LR
2404A8:  LDR             R1, =(unk_60A580 - 0x2404AE)
2404AA:  ADD             R1, PC; unk_60A580
2404AC:  LDR.W           R0, [R1,R0,LSL#2]
2404B0:  BX              LR
