; =========================================================
; Game Engine Function: celt_rsqrt_norm
; Address            : 0x19EBD0 - 0x19EC30
; =========================================================

19EBD0:  MOVS            R2, #0
19EBD2:  MOV.W           R12, #0x80000000
19EBD6:  EOR.W           R0, R12, R0,LSL#16
19EBDA:  MOVT            R2, #0xCB4E
19EBDE:  MOVW            R3, #0x3472
19EBE2:  SMLABT.W        R2, R3, R0, R2
19EBE6:  MOVW            R3, #0xFFFF
19EBEA:  SMULTT.W        R2, R2, R0
19EBEE:  LSLS            R2, R2, #1
19EBF0:  BICS            R2, R3
19EBF2:  ADD.W           R2, R2, #0x5C000000
19EBF6:  ADD.W           R2, R2, #0x50000
19EBFA:  ASRS            R3, R2, #0x10
19EBFC:  ASRS            R1, R2, #0xF
19EBFE:  MULS            R1, R3
19EC00:  MOV.W           R3, #0xC0000000
19EC04:  SMULTT.W        R0, R1, R0
19EC08:  LSRS            R0, R0, #0xF
19EC0A:  ADD.W           R0, R0, R1,ASR#16
19EC0E:  EOR.W           R0, R12, R0,LSL#17
19EC12:  ASRS            R1, R0, #0xF
19EC14:  ASRS            R0, R0, #0x10
19EC16:  ADD.W           R0, R0, R0,LSL#1
19EC1A:  ADD.W           R0, R3, R0,LSL#13
19EC1E:  ASRS            R0, R0, #0x10
19EC20:  MULS            R0, R1
19EC22:  SMULTT.W        R0, R0, R2
19EC26:  LSRS            R0, R0, #0xF
19EC28:  ADD.W           R0, R0, R2,ASR#16
19EC2C:  SXTH            R0, R0
19EC2E:  BX              LR
