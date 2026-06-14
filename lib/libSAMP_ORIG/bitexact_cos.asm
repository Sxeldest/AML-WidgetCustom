; =========================================================
; Game Engine Function: bitexact_cos
; Address            : 0xBDAA6 - 0xBDAF4
; =========================================================

BDAA6:  SMULBB.W        R0, R0, R0
BDAAA:  MOVW            R2, #0xFB1C
BDAAE:  MOV.W           R1, #0x8000
BDAB2:  MOVT            R2, #0xFFFF
BDAB6:  MOVW            R3, #0xFFFF
BDABA:  ADD.W           R0, R1, R0,LSL#3
BDABE:  SMLABT.W        R2, R2, R0, R1
BDAC2:  BICS            R2, R3
BDAC4:  MOV.W           R3, #0x4000
BDAC8:  ADD.W           R2, R2, #0x20000000
BDACC:  ADD.W           R2, R2, #0x550000
BDAD0:  SMULTT.W        R2, R2, R0
BDAD4:  ADD.W           R2, R1, R2,LSL#1
BDAD8:  BFC.W           R2, #0, #0x10
BDADC:  ADD.W           R2, R2, #0xE2000000
BDAE0:  ADD.W           R2, R2, #0x1D0000
BDAE4:  SMLATT.W        R2, R2, R0, R3
BDAE8:  SUB.W           R0, R1, R0,ASR#16
BDAEC:  ADD.W           R0, R0, R2,LSR#15
BDAF0:  SXTH            R0, R0
BDAF2:  BX              LR
