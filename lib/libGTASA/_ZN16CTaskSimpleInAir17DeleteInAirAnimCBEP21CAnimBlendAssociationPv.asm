; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x52CA3C - 0x52CA50
; =========================================================

52CA3C:  CMP             R0, #0
52CA3E:  IT NE
52CA40:  CMPNE           R1, #0
52CA42:  BEQ             locret_52CA4E
52CA44:  LDR             R2, [R1,#0x1C]
52CA46:  CMP             R2, R0
52CA48:  ITT EQ
52CA4A:  MOVEQ           R0, #0
52CA4C:  STREQ           R0, [R1,#0x1C]
52CA4E:  BX              LR
