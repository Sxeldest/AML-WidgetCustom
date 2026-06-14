; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck18RemoveCarFromCheckEi
; Address            : 0x328C70 - 0x328CB2
; =========================================================

328C70:  PUSH            {R4,R6,R7,LR}
328C72:  ADD             R7, SP, #8
328C74:  MOVW            LR, #0x4000
328C78:  MOVS            R2, #0
328C7A:  MOV.W           R12, #0xFFFFFFFF
328C7E:  MOVT            LR, #0xC59C
328C82:  MOVS            R3, #0
328C84:  B               loc_328C90
328C86:  ADDS            R3, #0x24 ; '$'
328C88:  CMP.W           R3, #0x240
328C8C:  IT EQ
328C8E:  POPEQ           {R4,R6,R7,PC}
328C90:  LDR             R4, [R0,R3]
328C92:  CMP             R4, R1
328C94:  BNE             loc_328C86
328C96:  ADDS            R4, R0, R3
328C98:  STR.W           R12, [R0,R3]
328C9C:  STRD.W          LR, LR, [R4,#4]
328CA0:  STRD.W          LR, R12, [R4,#0xC]
328CA4:  STR.W           R2, [R4,#0x1E]
328CA8:  STR.W           R2, [R4,#0x1A]
328CAC:  STRD.W          R2, R2, [R4,#0x14]
328CB0:  B               loc_328C86
