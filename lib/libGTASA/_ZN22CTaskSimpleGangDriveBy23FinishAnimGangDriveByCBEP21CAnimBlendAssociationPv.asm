; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveBy23FinishAnimGangDriveByCBEP21CAnimBlendAssociationPv
; Address            : 0x4E5D68 - 0x4E5D74
; =========================================================

4E5D68:  LDR             R2, [R1,#0x2C]
4E5D6A:  CMP             R2, R0
4E5D6C:  ITT EQ
4E5D6E:  MOVEQ           R0, #0
4E5D70:  STREQ           R0, [R1,#0x2C]
4E5D72:  BX              LR
