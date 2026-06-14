; =========================================================
; Game Engine Function: frac_div32
; Address            : 0xC0C28 - 0xC0D74
; =========================================================

C0C28:  PUSH            {R4-R7,LR}
C0C2A:  ADD             R7, SP, #0xC
C0C2C:  PUSH.W          {R8-R11}
C0C30:  CLZ.W           R2, R1
C0C34:  MOVW            R9, #0
C0C38:  RSB.W           R8, R2, #0x1F
C0C3C:  RSB.W           R12, R2, #2
C0C40:  RSB.W           LR, R8, #0x1D
C0C44:  CMP.W           R8, #0x1D
C0C48:  MOV.W           R10, #0x80000000
C0C4C:  MOVT            R9, #0x7878
C0C50:  LSL.W           R2, R1, LR
C0C54:  IT GT
C0C56:  ASRGT.W         R2, R1, R12
C0C5A:  ADD.W           R1, R2, #0x8000
C0C5E:  ASRS            R5, R1, #0x10
C0C60:  CLZ.W           R11, R5
C0C64:  RSB.W           R1, R11, #0x1F
C0C68:  RSB.W           R6, R11, #0x10
C0C6C:  RSB.W           R3, R1, #0xF
C0C70:  CMP             R1, #0xF
C0C72:  LSL.W           R3, R5, R3
C0C76:  IT GT
C0C78:  ASRGT.W         R3, R5, R6
C0C7C:  MOVW            R6, #0x8788
C0C80:  EOR.W           R3, R10, R3,LSL#16
C0C84:  MOVT            R6, #0xFFFF
C0C88:  CMP             R1, #0x10
C0C8A:  SMLABT.W        R4, R6, R3, R9
C0C8E:  MOV             R9, #0xFFFF0000
C0C96:  SMULTT.W        R5, R4, R3
C0C9A:  MOV             R6, R4
C0C9C:  BFC.W           R6, #0, #0x10
C0CA0:  EOR.W           R6, R6, #0x80000000
C0CA4:  AND.W           R5, R9, R5,LSL#1
C0CA8:  ADD             R5, R6
C0CAA:  LSL.W           R6, R0, LR
C0CAE:  SMULTT.W        R5, R5, R4
C0CB2:  MOV.W           R4, R4,ASR#16
C0CB6:  SUB.W           R4, R4, R5,LSR#15
C0CBA:  SMULBT.W        R3, R4, R3
C0CBE:  EOR.W           R5, R10, R4,LSL#16
C0CC2:  AND.W           R3, R9, R3,LSL#1
C0CC6:  ADD             R3, R5
C0CC8:  RSB.W           R5, R1, #0x10
C0CCC:  MOV.W           R1, #0x8000
C0CD0:  SMULTB.W        R3, R3, R4
C0CD4:  SXTH            R4, R4
C0CD6:  AND.W           R3, R9, R3,LSL#1
C0CDA:  ADD.W           R3, R3, #0x10000
C0CDE:  SUB.W           R3, R4, R3,LSR#16
C0CE2:  RSB.W           R4, R11, #0xF
C0CE6:  SXTH            R3, R3
C0CE8:  LSL.W           R5, R3, R5
C0CEC:  IT GT
C0CEE:  ASRGT.W         R5, R3, R4
C0CF2:  CMP.W           R8, #0x1D
C0CF6:  ADD.W           R1, R1, R5,LSL#13
C0CFA:  IT GT
C0CFC:  ASRGT.W         R6, R0, R12
C0D00:  UXTH            R0, R6
C0D02:  UXTH            R4, R2
C0D04:  MOV.W           R9, R1,ASR#16
C0D08:  SMULTT.W        R5, R6, R1
C0D0C:  MUL.W           R0, R9, R0
C0D10:  ASRS            R3, R2, #0x10
C0D12:  ADDS            R6, #2
C0D14:  ASRS            R6, R6, #2
C0D16:  LSLS            R5, R5, #1
C0D18:  ADD.W           R0, R5, R0,ASR#15
C0D1C:  ASRS            R5, R0, #0x10
C0D1E:  SMULTT.W        R2, R2, R0
C0D22:  MULS            R5, R4
C0D24:  UXTH            R4, R0
C0D26:  MULS            R3, R4
C0D28:  SUB.W           R6, R6, R5,ASR#15
C0D2C:  SUB.W           R3, R6, R3,ASR#15
C0D30:  SUB.W           R2, R3, R2,LSL#1
C0D34:  UXTH            R3, R2
C0D36:  SMULTT.W        R1, R1, R2
C0D3A:  MUL.W           R3, R3, R9
C0D3E:  LSLS            R1, R1, #1
C0D40:  ADD.W           R1, R1, R3,ASR#15
C0D44:  ADD.W           R1, R0, R1,LSL#2
C0D48:  CMP.W           R1, #0x20000000
C0D4C:  BLT             loc_C0D58
C0D4E:  MOV             R0, #0x7FFFFFFF
C0D52:  POP.W           {R8-R11}
C0D56:  POP             {R4-R7,PC}
C0D58:  MOVS            R0, #0x80000001
C0D5E:  ADD.W           R2, R0, #0x60000000
C0D62:  LSLS            R0, R1, #2
C0D64:  CMP             R1, R2
C0D66:  ITT LT
C0D68:  MOVLT           R0, #1
C0D6A:  MOVTLT          R0, #0x8000
C0D6E:  POP.W           {R8-R11}
C0D72:  POP             {R4-R7,PC}
