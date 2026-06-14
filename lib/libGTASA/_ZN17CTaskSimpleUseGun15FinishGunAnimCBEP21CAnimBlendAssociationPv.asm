; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x4DDF30 - 0x4DDF62
; =========================================================

4DDF30:  LDRSH.W         R2, [R1,#0x36]
4DDF34:  CMP             R2, #1
4DDF36:  BLT             loc_4DDF56
4DDF38:  LDRSH.W         R2, [R0,#0x2C]
4DDF3C:  BIC.W           R2, R2, #1
4DDF40:  CMP             R2, #0xE2
4DDF42:  ITT EQ
4DDF44:  LDRBEQ          R2, [R1,#0x10]
4DDF46:  CMPEQ           R2, #4
4DDF48:  BNE             loc_4DDF56
4DDF4A:  LDRSB.W         R2, [R1,#0xF]
4DDF4E:  CMP             R2, #5
4DDF50:  ITT LE
4DDF52:  MOVLE           R2, #4
4DDF54:  STRBLE          R2, [R1,#0xF]
4DDF56:  LDR             R2, [R1,#0x2C]
4DDF58:  CMP             R2, R0
4DDF5A:  ITT EQ
4DDF5C:  MOVEQ           R0, #0
4DDF5E:  STREQ           R0, [R1,#0x2C]
4DDF60:  BX              LR
