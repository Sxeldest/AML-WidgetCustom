; =========================================================
; Game Engine Function: _ZN9CPhysical20CanPhysicalBeDamagedE11eWeaponTypePh
; Address            : 0x407ED0 - 0x407F68
; =========================================================

407ED0:  CMP             R2, #0
407ED2:  ITT NE
407ED4:  MOVNE           R3, #0
407ED6:  STRBNE          R3, [R2]
407ED8:  CMP             R1, #0x36 ; '6'; switch 55 cases
407EDA:  BHI             def_407EDC; jumptable 00407EDC default case, cases 17,41-48,53
407EDC:  TBB.W           [PC,R1]; switch jump
407EE0:  DCB 0x1C; jump table for switch statement
407EE1:  DCB 0x1C
407EE2:  DCB 0x1C
407EE3:  DCB 0x1C
407EE4:  DCB 0x1C
407EE5:  DCB 0x1C
407EE6:  DCB 0x1C
407EE7:  DCB 0x1C
407EE8:  DCB 0x1C
407EE9:  DCB 0x1C
407EEA:  DCB 0x1C
407EEB:  DCB 0x1C
407EEC:  DCB 0x1C
407EED:  DCB 0x1C
407EEE:  DCB 0x1C
407EEF:  DCB 0x1C
407EF0:  DCB 0x27
407EF1:  DCB 0x20
407EF2:  DCB 0x38
407EF3:  DCB 0x27
407EF4:  DCB 0x27
407EF5:  DCB 0x27
407EF6:  DCB 0x22
407EF7:  DCB 0x22
407EF8:  DCB 0x22
407EF9:  DCB 0x22
407EFA:  DCB 0x22
407EFB:  DCB 0x22
407EFC:  DCB 0x22
407EFD:  DCB 0x22
407EFE:  DCB 0x22
407EFF:  DCB 0x22
407F00:  DCB 0x22
407F01:  DCB 0x22
407F02:  DCB 0x22
407F03:  DCB 0x27
407F04:  DCB 0x27
407F05:  DCB 0x3E
407F06:  DCB 0x22
407F07:  DCB 0x27
407F08:  DCB 0x27
407F09:  DCB 0x20
407F0A:  DCB 0x20
407F0B:  DCB 0x20
407F0C:  DCB 0x20
407F0D:  DCB 0x20
407F0E:  DCB 0x20
407F0F:  DCB 0x20
407F10:  DCB 0x20
407F11:  DCB 0x33
407F12:  DCB 0x33
407F13:  DCB 0x27
407F14:  DCB 0x22
407F15:  DCB 0x20
407F16:  DCB 0x33
407F17:  ALIGN 2
407F18:  LDRB.W          R0, [R0,#0x46]; jumptable 00407EDC cases 0-15
407F1C:  LSLS            R0, R0, #0x1A
407F1E:  BMI             loc_407F64
407F20:  MOVS            R0, #1; jumptable 00407EDC default case, cases 17,41-48,53
407F22:  BX              LR
407F24:  LDRB.W          R0, [R0,#0x46]; jumptable 00407EDC cases 22-34,38,52
407F28:  LSLS            R0, R0, #0x1D
407F2A:  BPL             loc_407F36
407F2C:  B               loc_407F64
407F2E:  LDRB.W          R0, [R0,#0x46]; jumptable 00407EDC cases 16,19-21,35,36,39,40,51
407F32:  LSLS            R0, R0, #0x18
407F34:  BMI             loc_407F64
407F36:  CMP             R2, #0
407F38:  ITTTT NE
407F3A:  MOVNE           R0, #1
407F3C:  STRBNE          R0, [R2]
407F3E:  MOVNE           R0, #1
407F40:  BXNE            LR
407F42:  MOVS            R0, #1
407F44:  BX              LR
407F46:  LDRB.W          R0, [R0,#0x46]; jumptable 00407EDC cases 49,50,54
407F4A:  LSLS            R0, R0, #0x1B
407F4C:  BPL             def_407EDC; jumptable 00407EDC default case, cases 17,41-48,53
407F4E:  B               loc_407F64
407F50:  LDRB.W          R0, [R0,#0x46]; jumptable 00407EDC case 18
407F54:  TST.W           R0, #0x88
407F58:  BNE             loc_407F64
407F5A:  B               loc_407F36
407F5C:  LDRB.W          R0, [R0,#0x46]; jumptable 00407EDC case 37
407F60:  LSLS            R0, R0, #0x1C
407F62:  BPL             def_407EDC; jumptable 00407EDC default case, cases 17,41-48,53
407F64:  MOVS            R0, #0
407F66:  BX              LR
