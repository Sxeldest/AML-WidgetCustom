; =========================================================
; Game Engine Function: _ZN16CPedIntelligence19IsInterestingEntityEP7CEntity
; Address            : 0x4C17DA - 0x4C17FC
; =========================================================

4C17DA:  LDR.W           R2, [R0,#0x28C]
4C17DE:  CMP             R2, R1
4C17E0:  ITT NE
4C17E2:  LDRNE.W         R2, [R0,#0x290]
4C17E6:  CMPNE           R2, R1
4C17E8:  BNE             loc_4C17EE
4C17EA:  MOVS            R0, #1
4C17EC:  BX              LR
4C17EE:  LDR.W           R2, [R0,#0x294]
4C17F2:  MOVS            R0, #0
4C17F4:  CMP             R2, R1
4C17F6:  IT EQ
4C17F8:  MOVEQ           R0, #1
4C17FA:  BX              LR
