; =========================================================
; Game Engine Function: opus_strerror
; Address            : 0x18EBF0 - 0x18EC06
; =========================================================

18EBF0:  ADDS            R1, R0, #7
18EBF2:  CMP             R1, #7
18EBF4:  ITT HI
18EBF6:  ADRHI           R0, aUnknownError; "unknown error"
18EBF8:  BXHI            LR
18EBFA:  LDR             R1, =(off_230000 - 0x18EC00); "success" ...
18EBFC:  ADD             R1, PC; off_230000
18EBFE:  SUB.W           R0, R1, R0,LSL#2
18EC02:  LDR             R0, [R0]
18EC04:  BX              LR
