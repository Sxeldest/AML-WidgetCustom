; =========================================================
; Game Engine Function: celt_cos_norm
; Address            : 0xC0F0E - 0xC1010
; =========================================================

C0F0E:  PUSH            {R4,R6,R7,LR}
C0F10:  ADD             R7, SP, #8
C0F12:  BFC.W           R0, #0x11, #0xF
C0F16:  MOVW            R1, #0x8001
C0F1A:  CMP.W           R0, #0x10000
C0F1E:  MOVW            R2, #0x7FFF
C0F22:  IT HI
C0F24:  RSBHI.W         R0, R0, #0x20000
C0F28:  TST             R0, R2
C0F2A:  BEQ             loc_C0FA0
C0F2C:  MOVW            LR, #0
C0F30:  MOVW            R12, #0
C0F34:  MOVW            R2, #0xFD8E
C0F38:  MOVS            R3, #0
C0F3A:  MOVT            LR, #0x2055
C0F3E:  MOVT            R12, #0xE21D
C0F42:  MOVT            R2, #0xFFFF
C0F46:  CMP.W           R3, R0,LSR#15
C0F4A:  BNE             loc_C0FBE
C0F4C:  SXTH            R1, R0
C0F4E:  LSLS            R0, R0, #0x10
C0F50:  ASRS            R0, R0, #0xF
C0F52:  MOVW            R3, #0xFFFF
C0F56:  MULS            R0, R1
C0F58:  ADD.W           R0, R0, #0x8000
C0F5C:  SMULTB.W        R1, R0, R2
C0F60:  MOV.W           R2, #0x8000
C0F64:  ADD.W           R1, R2, R1,LSL#1
C0F68:  BICS            R1, R3
C0F6A:  ADD             R1, LR
C0F6C:  SMULTT.W        R1, R1, R0
C0F70:  ADD.W           R1, R2, R1,LSL#1
C0F74:  MOV.W           R2, #0x4000
C0F78:  BFC.W           R1, #0, #0x10
C0F7C:  ADD             R1, R12
C0F7E:  SMLATT.W        R1, R1, R0, R2
C0F82:  MOVW            R2, #0x7FFF
C0F86:  SUB.W           R0, R2, R0,ASR#16
C0F8A:  MOVW            R2, #0x7FFE
C0F8E:  ADD.W           R0, R0, R1,ASR#15
C0F92:  ADDS            R1, R0, #1
C0F94:  CMP             R0, R2
C0F96:  IT GT
C0F98:  MOVWGT          R1, #0x7FFF
C0F9C:  SXTH            R0, R1
C0F9E:  POP             {R4,R6,R7,PC}
C0FA0:  LSLS            R2, R0, #0x10
C0FA2:  ITTT NE
C0FA4:  MOVNE           R1, #0
C0FA6:  SXTHNE          R0, R1
C0FA8:  POPNE           {R4,R6,R7,PC}
C0FAA:  MOV             R2, #0x1FFFF
C0FB2:  TST             R0, R2
C0FB4:  IT EQ
C0FB6:  MOVWEQ          R1, #0x7FFF
C0FBA:  SXTH            R0, R1
C0FBC:  POP             {R4,R6,R7,PC}
C0FBE:  NEGS            R0, R0
C0FC0:  MOVW            R4, #0xFFFF
C0FC4:  SXTH            R3, R0
C0FC6:  LSLS            R0, R0, #0x10
C0FC8:  ASRS            R0, R0, #0xF
C0FCA:  MULS            R0, R3
C0FCC:  MOV.W           R3, #0x8000
C0FD0:  ADD.W           R0, R0, #0x8000
C0FD4:  SMULTB.W        R2, R0, R2
C0FD8:  ADD.W           R2, R3, R2,LSL#1
C0FDC:  BICS            R2, R4
C0FDE:  ADD             R2, LR
C0FE0:  SMULTT.W        R2, R2, R0
C0FE4:  ADD.W           R2, R3, R2,LSL#1
C0FE8:  MOV.W           R3, #0x4000
C0FEC:  BFC.W           R2, #0, #0x10
C0FF0:  ADD             R2, R12
C0FF2:  SMLATT.W        R2, R2, R0, R3
C0FF6:  MOVW            R3, #0x7FFF
C0FFA:  SUB.W           R0, R3, R0,ASR#16
C0FFE:  ADD.W           R0, R0, R2,ASR#15
C1002:  MOVW            R2, #0x7FFE
C1006:  CMP             R0, R2
C1008:  IT LE
C100A:  MVNLE           R1, R0
C100C:  SXTH            R0, R1
C100E:  POP             {R4,R6,R7,PC}
