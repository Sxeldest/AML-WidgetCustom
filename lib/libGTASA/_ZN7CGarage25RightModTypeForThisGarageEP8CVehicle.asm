; =========================================================
; Game Engine Function: _ZN7CGarage25RightModTypeForThisGarageEP8CVehicle
; Address            : 0x312F30 - 0x312FB0
; =========================================================

312F30:  CBZ             R1, loc_312F6E
312F32:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x312F3C)
312F34:  LDRSH.W         R1, [R1,#0x26]
312F38:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
312F3A:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
312F3C:  LDR.W           R2, [R2,R1,LSL#2]
312F40:  LDRB.W          R1, [R0,#0x4C]
312F44:  LDRB.W          R0, [R2,#0x62]
312F48:  CMP             R1, #0x26 ; '&'
312F4A:  BEQ             loc_312F72
312F4C:  CMP             R1, #0x25 ; '%'
312F4E:  BEQ             loc_312F92
312F50:  CMP             R1, #0x24 ; '$'
312F52:  BNE             loc_312F6E
312F54:  LDR             R1, =(mod_HandlingManager_ptr - 0x312F5E)
312F56:  RSB.W           R0, R0, R0,LSL#3
312F5A:  ADD             R1, PC; mod_HandlingManager_ptr
312F5C:  LDR             R1, [R1]; mod_HandlingManager
312F5E:  ADD.W           R0, R1, R0,LSL#5
312F62:  LDRB.W          R0, [R0,#0xE7]
312F66:  LSLS            R0, R0, #0x1E
312F68:  ITT MI
312F6A:  MOVMI           R0, #1
312F6C:  BXMI            LR
312F6E:  MOVS            R0, #0
312F70:  BX              LR
312F72:  LDR             R1, =(mod_HandlingManager_ptr - 0x312F7C)
312F74:  RSB.W           R0, R0, R0,LSL#3
312F78:  ADD             R1, PC; mod_HandlingManager_ptr
312F7A:  LDR             R1, [R1]; mod_HandlingManager
312F7C:  ADD.W           R0, R1, R0,LSL#5
312F80:  LDRB.W          R0, [R0,#0xE7]
312F84:  TST.W           R0, #6
312F88:  ITT EQ
312F8A:  MOVEQ           R0, #1
312F8C:  BXEQ            LR
312F8E:  MOVS            R0, #0
312F90:  BX              LR
312F92:  LDR             R1, =(mod_HandlingManager_ptr - 0x312F9C)
312F94:  RSB.W           R0, R0, R0,LSL#3
312F98:  ADD             R1, PC; mod_HandlingManager_ptr
312F9A:  LDR             R1, [R1]; mod_HandlingManager
312F9C:  ADD.W           R0, R1, R0,LSL#5
312FA0:  LDRB.W          R0, [R0,#0xE7]
312FA4:  LSLS            R0, R0, #0x1D
312FA6:  ITT MI
312FA8:  MOVMI           R0, #1
312FAA:  BXMI            LR
312FAC:  MOVS            R0, #0
312FAE:  BX              LR
