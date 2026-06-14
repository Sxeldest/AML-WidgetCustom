; =========================================================
; Game Engine Function: celt_sqrt
; Address            : 0x19EC30 - 0x19ECCE
; =========================================================

19EC30:  CMP             R0, #0
19EC32:  ITT EQ
19EC34:  MOVEQ           R0, #0
19EC36:  BXEQ            LR
19EC38:  CMP.W           R0, #0x40000000
19EC3C:  ITT GE
19EC3E:  MOVWGE          R0, #0x7FFF
19EC42:  BXGE            LR
19EC44:  CLZ.W           R1, R0
19EC48:  RSB.W           R1, R1, #0x1F
19EC4C:  BIC.W           R2, R1, #1
19EC50:  SUB.W           R12, R2, #0xE
19EC54:  RSB.W           R2, R2, #0xE
19EC58:  ASRS            R3, R1, #1
19EC5A:  CMP             R3, #7
19EC5C:  LSL.W           R2, R0, R2
19EC60:  MOVW            R3, #0xFAD0
19EC64:  IT GT
19EC66:  ASRGT.W         R2, R0, R12
19EC6A:  MOV.W           R0, #0x80000000
19EC6E:  EOR.W           R0, R0, R2,LSL#16
19EC72:  MOVS            R2, #0x6A30000
19EC78:  MOVT            R3, #0xFFFF
19EC7C:  SMLABT.W        R2, R3, R0, R2
19EC80:  MOVS            R3, #0xFFFF0000
19EC86:  SMULTT.W        R2, R2, R0
19EC8A:  AND.W           R2, R3, R2,LSL#1
19EC8E:  ADD.W           R2, R2, #0xF4000000
19EC92:  ADD.W           R2, R2, #0x3D0000
19EC96:  SMULTT.W        R2, R2, R0
19EC9A:  AND.W           R2, R3, R2,LSL#1
19EC9E:  ADD.W           R2, R2, #0x2D000000
19ECA2:  ADD.W           R2, R2, #0x290000
19ECA6:  SMULTT.W        R0, R2, R0
19ECAA:  AND.W           R0, R3, R0,LSL#1
19ECAE:  ADD.W           R0, R0, #0x5A000000
19ECB2:  ADD.W           R0, R0, #0x870000
19ECB6:  ASRS            R2, R0, #0x10
19ECB8:  MOVS            R0, #0xE
19ECBA:  SUB.W           R1, R0, R1,ASR#1
19ECBE:  NEGS            R0, R1
19ECC0:  CMP             R1, #0
19ECC2:  LSL.W           R0, R2, R0
19ECC6:  IT GT
19ECC8:  ASRGT.W         R0, R2, R1
19ECCC:  BX              LR
