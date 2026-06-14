; =========================================================
; Game Engine Function: _ZN9CPhysical18GetHasCollidedWithEP7CEntity
; Address            : 0x401ABC - 0x401AF2
; =========================================================

401ABC:  LDRB.W          R2, [R0,#0x47]
401AC0:  LSLS            R2, R2, #0x1B
401AC2:  ITT PL
401AC4:  MOVPL           R0, #0
401AC6:  BXPL            LR
401AC8:  LDRB.W          R2, [R0,#0xBD]
401ACC:  CMP             R2, #0
401ACE:  ITT EQ
401AD0:  MOVEQ           R0, #0
401AD2:  BXEQ            LR
401AD4:  ADD.W           R12, R0, #0xC0
401AD8:  MOVS            R3, #0
401ADA:  LDR.W           R0, [R12,R3,LSL#2]
401ADE:  CMP             R0, R1
401AE0:  ITT EQ
401AE2:  MOVEQ           R0, #1
401AE4:  BXEQ            LR
401AE6:  ADDS            R3, #1
401AE8:  CMP             R3, R2
401AEA:  ITT GE
401AEC:  MOVGE           R0, #0
401AEE:  BXGE            LR
401AF0:  B               loc_401ADA
