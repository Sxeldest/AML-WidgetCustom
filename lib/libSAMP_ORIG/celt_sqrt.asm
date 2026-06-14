; =========================================================
; Game Engine Function: celt_sqrt
; Address            : 0xC0E70 - 0xC0F0E
; =========================================================

C0E70:  CMP             R0, #0
C0E72:  ITT EQ
C0E74:  MOVEQ           R0, #0
C0E76:  BXEQ            LR
C0E78:  CMP.W           R0, #0x40000000
C0E7C:  ITT GE
C0E7E:  MOVWGE          R0, #0x7FFF
C0E82:  BXGE            LR
C0E84:  CLZ.W           R1, R0
C0E88:  RSB.W           R1, R1, #0x1F
C0E8C:  BIC.W           R2, R1, #1
C0E90:  SUB.W           R12, R2, #0xE
C0E94:  RSB.W           R2, R2, #0xE
C0E98:  ASRS            R3, R1, #1
C0E9A:  CMP             R3, #7
C0E9C:  LSL.W           R2, R0, R2
C0EA0:  MOVW            R3, #0xFAD0
C0EA4:  IT GT
C0EA6:  ASRGT.W         R2, R0, R12
C0EAA:  MOV.W           R0, #0x80000000
C0EAE:  EOR.W           R0, R0, R2,LSL#16
C0EB2:  MOVS            R2, #0x6A30000
C0EB8:  MOVT            R3, #0xFFFF
C0EBC:  SMLABT.W        R2, R3, R0, R2
C0EC0:  MOVS            R3, #0xFFFF0000
C0EC6:  SMULTT.W        R2, R2, R0
C0ECA:  AND.W           R2, R3, R2,LSL#1
C0ECE:  ADD.W           R2, R2, #0xF4000000
C0ED2:  ADD.W           R2, R2, #0x3D0000
C0ED6:  SMULTT.W        R2, R2, R0
C0EDA:  AND.W           R2, R3, R2,LSL#1
C0EDE:  ADD.W           R2, R2, #0x2D000000
C0EE2:  ADD.W           R2, R2, #0x290000
C0EE6:  SMULTT.W        R0, R2, R0
C0EEA:  AND.W           R0, R3, R0,LSL#1
C0EEE:  ADD.W           R0, R0, #0x5A000000
C0EF2:  ADD.W           R0, R0, #0x870000
C0EF6:  ASRS            R2, R0, #0x10
C0EF8:  MOVS            R0, #0xE
C0EFA:  SUB.W           R1, R0, R1,ASR#1
C0EFE:  NEGS            R0, R1
C0F00:  CMP             R1, #0
C0F02:  LSL.W           R0, R2, R0
C0F06:  IT GT
C0F08:  ASRGT.W         R0, R2, R1
C0F0C:  BX              LR
