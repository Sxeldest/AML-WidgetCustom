; =========================================================
; Game Engine Function: _ZN10CPhoneInfo19PhoneAtThisPositionE7CVector
; Address            : 0x31CD4C - 0x31CD8A
; =========================================================

31CD4C:  LDR             R3, [R0]
31CD4E:  CMP             R3, #1
31CD50:  BLT             loc_31CD86
31CD52:  VMOV            S2, R1
31CD56:  ADDS            R0, #8
31CD58:  VMOV            S0, R2
31CD5C:  MOVS            R1, #0
31CD5E:  VLDR            S4, [R0]
31CD62:  VCMP.F32        S4, S2
31CD66:  VMRS            APSR_nzcv, FPSCR
31CD6A:  ITTTT EQ
31CD6C:  VLDREQ          S4, [R0,#4]
31CD70:  VCMPEQ.F32      S4, S0
31CD74:  VMRSEQ          APSR_nzcv, FPSCR
31CD78:  MOVEQ           R0, #1
31CD7A:  IT EQ
31CD7C:  BXEQ            LR
31CD7E:  ADDS            R1, #1
31CD80:  ADDS            R0, #0x34 ; '4'
31CD82:  CMP             R1, R3
31CD84:  BLT             loc_31CD5E
31CD86:  MOVS            R0, #0
31CD88:  BX              LR
