; =========================================================
; Game Engine Function: _ZN4CPad22WeaponUsesAttackButtonEP4CPed
; Address            : 0x3FADD8 - 0x3FAE20
; =========================================================

3FADD8:  CMP             R0, #0
3FADDA:  ITT EQ
3FADDC:  MOVEQ           R0, #0
3FADDE:  BXEQ            LR
3FADE0:  LDRSB.W         R1, [R0,#0x71C]
3FADE4:  RSB.W           R1, R1, R1,LSL#3
3FADE8:  ADD.W           R0, R0, R1,LSL#2
3FADEC:  LDR.W           R0, [R0,#0x5A4]
3FADF0:  SUB.W           R1, R0, #0x10
3FADF4:  MOVS            R0, #0
3FADF6:  CMP             R1, #0x1D
3FADF8:  BHI             locret_3FAE1E
3FADFA:  MOVS            R3, #7
3FADFC:  MOVS            R2, #1
3FADFE:  LSL.W           R12, R2, R1
3FAE02:  MOVT            R3, #0x6A0
3FAE06:  TST.W           R12, R3
3FAE0A:  BNE             loc_3FAE1C
3FAE0C:  MOVS            R2, #1
3FAE0E:  LSL.W           R1, R2, R1
3FAE12:  TST.W           R1, #0x31000000
3FAE16:  IT EQ
3FAE18:  BXEQ            LR
3FAE1A:  MOVS            R2, #2
3FAE1C:  MOV             R0, R2
3FAE1E:  BX              LR
