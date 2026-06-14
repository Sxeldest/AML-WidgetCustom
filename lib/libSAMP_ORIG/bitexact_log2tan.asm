; =========================================================
; Game Engine Function: bitexact_log2tan
; Address            : 0xBDAF4 - 0xBDB68
; =========================================================

BDAF4:  PUSH            {R4,R5,R7,LR}
BDAF6:  ADD             R7, SP, #8
BDAF8:  CLZ.W           R2, R0
BDAFC:  MOVW            LR, #0xF5DB
BDB00:  RSB.W           R12, R2, #0x20 ; ' '
BDB04:  MOVT            LR, #0xFFFF
BDB08:  RSB.W           R3, R12, #0xF
BDB0C:  LSLS            R0, R3
BDB0E:  CLZ.W           R3, R1
BDB12:  RSB.W           R5, R3, #0x20 ; ' '
BDB16:  SXTH            R4, R0
BDB18:  RSB.W           R2, R5, #0xF
BDB1C:  SMULBB.W        R4, R4, LR
BDB20:  MOVW            R3, #0xFFFF
BDB24:  LSLS            R1, R2
BDB26:  SXTH            R2, R1
BDB28:  SMULBB.W        R2, R2, LR
BDB2C:  MOV.W           LR, #0x8000
BDB30:  ADD.W           R4, LR, R4,LSL#1
BDB34:  BIC.W           R3, R4, R3
BDB38:  MOV.W           R4, #0x4000
BDB3C:  ADD.W           R2, LR, R2,LSL#1
BDB40:  MOV             LR, #0x1EFC0000
BDB48:  ADD             R3, LR
BDB4A:  BFC.W           R2, #0, #0x10
BDB4E:  SMLABT.W        R0, R0, R3, R4
BDB52:  ADD             R2, LR
BDB54:  SMLABT.W        R1, R1, R2, R4
BDB58:  SUB.W           R2, R12, R5
BDB5C:  ASRS            R0, R0, #0xF
BDB5E:  ADD.W           R0, R0, R2,LSL#11
BDB62:  SUB.W           R0, R0, R1,ASR#15
BDB66:  POP             {R4,R5,R7,PC}
