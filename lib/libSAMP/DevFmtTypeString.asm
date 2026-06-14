; =========================================================
; Game Engine Function: DevFmtTypeString
; Address            : 0x1BAF90 - 0x1BAFB4
; =========================================================

1BAF90:  SUB             R0, R0, #0x1400
1BAF94:  CMP             R0, #6
1BAF98:  LDRHI           R0, =(aUnknownType - 0x1BAFA4); "(unknown type)" ...
1BAF9C:  ADDHI           R0, PC, R0; "(unknown type)"
1BAFA0:  BXHI            LR
1BAFA4:  LDR             R1, =(off_230830 - 0x1BAFB0); "Signed Byte" ...
1BAFA8:  ADD             R1, PC, R1; off_230830
1BAFAC:  LDR             R0, [R1,R0,LSL#2]
1BAFB0:  BX              LR
