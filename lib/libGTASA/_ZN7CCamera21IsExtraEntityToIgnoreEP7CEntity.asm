; =========================================================
; Game Engine Function: _ZN7CCamera21IsExtraEntityToIgnoreEP7CEntity
; Address            : 0x3E1A98 - 0x3E1AC2
; =========================================================

3E1A98:  LDR.W           R2, [R0,#0xBD0]
3E1A9C:  CMP             R2, #1
3E1A9E:  ITT LT
3E1AA0:  MOVLT           R0, #0
3E1AA2:  BXLT            LR
3E1AA4:  ADDW            R12, R0, #0xBD4
3E1AA8:  MOVS            R3, #0
3E1AAA:  LDR.W           R0, [R12,R3,LSL#2]
3E1AAE:  CMP             R0, R1
3E1AB0:  ITT EQ
3E1AB2:  MOVEQ           R0, #1
3E1AB4:  BXEQ            LR
3E1AB6:  ADDS            R3, #1
3E1AB8:  CMP             R3, R2
3E1ABA:  ITT GE
3E1ABC:  MOVGE           R0, #0
3E1ABE:  BXGE            LR
3E1AC0:  B               loc_3E1AAA
