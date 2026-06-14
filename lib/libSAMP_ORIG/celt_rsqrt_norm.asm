; =========================================================
; Game Engine Function: celt_rsqrt_norm
; Address            : 0xC0E10 - 0xC0E70
; =========================================================

C0E10:  MOVS            R2, #0
C0E12:  MOV.W           R12, #0x80000000
C0E16:  EOR.W           R0, R12, R0,LSL#16
C0E1A:  MOVT            R2, #0xCB4E
C0E1E:  MOVW            R3, #0x3472
C0E22:  SMLABT.W        R2, R3, R0, R2
C0E26:  MOVW            R3, #0xFFFF
C0E2A:  SMULTT.W        R2, R2, R0
C0E2E:  LSLS            R2, R2, #1
C0E30:  BICS            R2, R3
C0E32:  ADD.W           R2, R2, #0x5C000000
C0E36:  ADD.W           R2, R2, #0x50000
C0E3A:  ASRS            R3, R2, #0x10
C0E3C:  ASRS            R1, R2, #0xF
C0E3E:  MULS            R1, R3
C0E40:  MOV.W           R3, #0xC0000000
C0E44:  SMULTT.W        R0, R1, R0
C0E48:  LSRS            R0, R0, #0xF
C0E4A:  ADD.W           R0, R0, R1,ASR#16
C0E4E:  EOR.W           R0, R12, R0,LSL#17
C0E52:  ASRS            R1, R0, #0xF
C0E54:  ASRS            R0, R0, #0x10
C0E56:  ADD.W           R0, R0, R0,LSL#1
C0E5A:  ADD.W           R0, R3, R0,LSL#13
C0E5E:  ASRS            R0, R0, #0x10
C0E60:  MULS            R0, R1
C0E62:  SMULTT.W        R0, R0, R2
C0E66:  LSRS            R0, R0, #0xF
C0E68:  ADD.W           R0, R0, R2,ASR#16
C0E6C:  SXTH            R0, R0
C0E6E:  BX              LR
