; =========================================================
; Game Engine Function: celt_cos_norm
; Address            : 0x19ECCE - 0x19EDD0
; =========================================================

19ECCE:  PUSH            {R4,R6,R7,LR}
19ECD0:  ADD             R7, SP, #8
19ECD2:  BFC.W           R0, #0x11, #0xF
19ECD6:  MOVW            R1, #0x8001
19ECDA:  CMP.W           R0, #0x10000
19ECDE:  MOVW            R2, #0x7FFF
19ECE2:  IT HI
19ECE4:  RSBHI.W         R0, R0, #0x20000
19ECE8:  TST             R0, R2
19ECEA:  BEQ             loc_19ED60
19ECEC:  MOVW            LR, #0
19ECF0:  MOVW            R12, #0
19ECF4:  MOVW            R2, #0xFD8E
19ECF8:  MOVS            R3, #0
19ECFA:  MOVT            LR, #0x2055
19ECFE:  MOVT            R12, #0xE21D
19ED02:  MOVT            R2, #0xFFFF
19ED06:  CMP.W           R3, R0,LSR#15
19ED0A:  BNE             loc_19ED7E
19ED0C:  SXTH            R1, R0
19ED0E:  LSLS            R0, R0, #0x10
19ED10:  ASRS            R0, R0, #0xF
19ED12:  MOVW            R3, #0xFFFF
19ED16:  MULS            R0, R1
19ED18:  ADD.W           R0, R0, #0x8000
19ED1C:  SMULTB.W        R1, R0, R2
19ED20:  MOV.W           R2, #0x8000
19ED24:  ADD.W           R1, R2, R1,LSL#1
19ED28:  BICS            R1, R3
19ED2A:  ADD             R1, LR
19ED2C:  SMULTT.W        R1, R1, R0
19ED30:  ADD.W           R1, R2, R1,LSL#1
19ED34:  MOV.W           R2, #0x4000
19ED38:  BFC.W           R1, #0, #0x10
19ED3C:  ADD             R1, R12
19ED3E:  SMLATT.W        R1, R1, R0, R2
19ED42:  MOVW            R2, #0x7FFF
19ED46:  SUB.W           R0, R2, R0,ASR#16
19ED4A:  MOVW            R2, #0x7FFE
19ED4E:  ADD.W           R0, R0, R1,ASR#15
19ED52:  ADDS            R1, R0, #1
19ED54:  CMP             R0, R2
19ED56:  IT GT
19ED58:  MOVWGT          R1, #0x7FFF
19ED5C:  SXTH            R0, R1
19ED5E:  POP             {R4,R6,R7,PC}
19ED60:  LSLS            R2, R0, #0x10
19ED62:  ITTT NE
19ED64:  MOVNE           R1, #0
19ED66:  SXTHNE          R0, R1
19ED68:  POPNE           {R4,R6,R7,PC}
19ED6A:  MOV             R2, #0x1FFFF
19ED72:  TST             R0, R2
19ED74:  IT EQ
19ED76:  MOVWEQ          R1, #0x7FFF
19ED7A:  SXTH            R0, R1
19ED7C:  POP             {R4,R6,R7,PC}
19ED7E:  NEGS            R0, R0
19ED80:  MOVW            R4, #0xFFFF
19ED84:  SXTH            R3, R0
19ED86:  LSLS            R0, R0, #0x10
19ED88:  ASRS            R0, R0, #0xF
19ED8A:  MULS            R0, R3
19ED8C:  MOV.W           R3, #0x8000
19ED90:  ADD.W           R0, R0, #0x8000
19ED94:  SMULTB.W        R2, R0, R2
19ED98:  ADD.W           R2, R3, R2,LSL#1
19ED9C:  BICS            R2, R4
19ED9E:  ADD             R2, LR
19EDA0:  SMULTT.W        R2, R2, R0
19EDA4:  ADD.W           R2, R3, R2,LSL#1
19EDA8:  MOV.W           R3, #0x4000
19EDAC:  BFC.W           R2, #0, #0x10
19EDB0:  ADD             R2, R12
19EDB2:  SMLATT.W        R2, R2, R0, R3
19EDB6:  MOVW            R3, #0x7FFF
19EDBA:  SUB.W           R0, R3, R0,ASR#16
19EDBE:  ADD.W           R0, R0, R2,ASR#15
19EDC2:  MOVW            R2, #0x7FFE
19EDC6:  CMP             R0, R2
19EDC8:  IT LE
19EDCA:  MVNLE           R1, R0
19EDCC:  SXTH            R0, R1
19EDCE:  POP             {R4,R6,R7,PC}
