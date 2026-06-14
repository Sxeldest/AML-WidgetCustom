; =========================================================
; Game Engine Function: silk_log2lin
; Address            : 0xB7F22 - 0xB7F7E
; =========================================================

B7F22:  CMP             R0, #0
B7F24:  ITT LT
B7F26:  MOVLT           R0, #0
B7F28:  BXLT            LR
B7F2A:  MOVW            R1, #0xF7E
B7F2E:  CMP             R0, R1
B7F30:  ITT GT
B7F32:  MOVGT           R0, #0x7FFFFFFF
B7F36:  BXGT            LR
B7F38:  LSRS            R3, R0, #7
B7F3A:  MOVS            R1, #1
B7F3C:  AND.W           R2, R0, #0x7F
B7F40:  LSLS            R1, R3
B7F42:  CMP.W           R0, #0x800
B7F46:  BGE             loc_B7F64
B7F48:  RSB.W           R0, R2, #0x80
B7F4C:  SMULBB.W        R12, R2, R0
B7F50:  MOV             R0, #0xFFFFFF52
B7F54:  MUL.W           R0, R12, R0
B7F58:  ADD.W           R0, R2, R0,ASR#16
B7F5C:  LSLS            R0, R3
B7F5E:  ASRS            R0, R0, #7
B7F60:  ADD             R0, R1
B7F62:  BX              LR
B7F64:  RSB.W           R0, R2, #0x80
B7F68:  MOV             R3, #0xFFFFFF52
B7F6C:  SMULBB.W        R0, R2, R0
B7F70:  MULS            R0, R3
B7F72:  ADD.W           R0, R2, R0,ASR#16
B7F76:  ASRS            R2, R1, #7
B7F78:  MULS            R0, R2
B7F7A:  ADD             R0, R1
B7F7C:  BX              LR
