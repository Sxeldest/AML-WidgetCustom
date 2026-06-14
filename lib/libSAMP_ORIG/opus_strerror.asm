; =========================================================
; Game Engine Function: opus_strerror
; Address            : 0xBBCF4 - 0xBBD0A
; =========================================================

BBCF4:  ADDS            R1, R0, #7
BBCF6:  CMP             R1, #7
BBCF8:  ITT HI
BBCFA:  ADRHI           R0, aUnknownError; "unknown error"
BBCFC:  BXHI            LR
BBCFE:  LDR             R1, =(off_111850 - 0xBBD04); "success" ...
BBD00:  ADD             R1, PC; off_111850
BBD02:  SUB.W           R0, R1, R0,LSL#2
BBD06:  LDR             R0, [R0]
BBD08:  BX              LR
