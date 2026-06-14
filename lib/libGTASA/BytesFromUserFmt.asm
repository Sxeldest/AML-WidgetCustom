; =========================================================
; Game Engine Function: BytesFromUserFmt
; Address            : 0x2404B8 - 0x2404CE
; =========================================================

2404B8:  SUB.W           R0, R0, #0x1400
2404BC:  CMP             R0, #0xB
2404BE:  ITT HI
2404C0:  MOVHI           R0, #0
2404C2:  BXHI            LR
2404C4:  LDR             R1, =(unk_60A6A0 - 0x2404CA)
2404C6:  ADD             R1, PC; unk_60A6A0
2404C8:  LDR.W           R0, [R1,R0,LSL#2]
2404CC:  BX              LR
