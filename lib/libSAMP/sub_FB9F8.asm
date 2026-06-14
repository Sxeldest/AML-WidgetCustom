; =========================================================
; Game Engine Function: sub_FB9F8
; Address            : 0xFB9F8 - 0xFBA72
; =========================================================

FB9F8:  PUSH            {R4-R7,LR}
FB9FA:  ADD             R7, SP, #0xC
FB9FC:  PUSH.W          {R11}
FBA00:  LDRB.W          R12, [R0]
FBA04:  CMP.W           R12, #0
FBA08:  BEQ             loc_FBA18
FBA0A:  ADDS            R2, R0, #1
FBA0C:  MOVS            R3, #0
FBA0E:  LDRB            R4, [R2,R3]
FBA10:  ADDS            R3, #1
FBA12:  CMP             R4, #0
FBA14:  BNE             loc_FBA0E
FBA16:  B               loc_FBA1A
FBA18:  MOVS            R3, #0
FBA1A:  LDRB            R2, [R1]
FBA1C:  CBZ             R2, loc_FBA30
FBA1E:  ADD.W           LR, R1, #1
FBA22:  MOVS            R2, #0
FBA24:  LDRB.W          R4, [LR,R2]
FBA28:  ADDS            R2, #1
FBA2A:  CMP             R4, #0
FBA2C:  BNE             loc_FBA24
FBA2E:  B               loc_FBA32
FBA30:  MOVS            R2, #0
FBA32:  CMP             R3, R2
FBA34:  BNE             loc_FBA6A
FBA36:  ADDS            R3, R0, #1
FBA38:  MOVS            R4, #0
FBA3A:  MOV             LR, R4
FBA3C:  MOVS            R2, #0
FBA3E:  CMP.W           R12, #0
FBA42:  BEQ             loc_FBA4C
FBA44:  LDRB            R4, [R3,R2]
FBA46:  ADDS            R2, #1
FBA48:  CMP             R4, #0
FBA4A:  BNE             loc_FBA44
FBA4C:  CMP             LR, R2
FBA4E:  BCS             loc_FBA60
FBA50:  LDRB.W          R5, [R1,LR]
FBA54:  ADD.W           R4, LR, #1
FBA58:  LDRB.W          R6, [R0,LR]
FBA5C:  CMP             R6, R5
FBA5E:  BEQ             loc_FBA3A
FBA60:  MOVS            R0, #0
FBA62:  CMP             LR, R2
FBA64:  IT CS
FBA66:  MOVCS           R0, #1
FBA68:  B               loc_FBA6C
FBA6A:  MOVS            R0, #0
FBA6C:  POP.W           {R11}
FBA70:  POP             {R4-R7,PC}
