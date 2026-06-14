; =========================================================
; Game Engine Function: sub_148E64
; Address            : 0x148E64 - 0x148E8E
; =========================================================

148E64:  MOV.W           R2, #0x13A0
148E68:  LDRH            R2, [R0,R2]
148E6A:  CMP             R2, R1
148E6C:  ITTT EQ
148E6E:  MOVWEQ          R1, #0x13A2
148E72:  ADDEQ           R0, R1
148E74:  BXEQ            LR
148E76:  CMP.W           R1, #0x3EC
148E7A:  ITT HI
148E7C:  MOVHI           R0, #0
148E7E:  BXHI            LR
148E80:  ADD.W           R0, R0, R1,LSL#2
148E84:  LDR             R0, [R0,#4]
148E86:  CMP             R0, #0
148E88:  IT NE
148E8A:  ADDNE           R0, #4
148E8C:  BX              LR
