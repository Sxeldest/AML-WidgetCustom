; =========================================================
; Game Engine Function: _ZN12CHIDJoystick25InternalIsPressedNegativeE10HIDMapping
; Address            : 0x28D3CE - 0x28D418
; =========================================================

28D3CE:  LDR.W           R12, [R0,#8]
28D3D2:  CMP.W           R12, #0
28D3D6:  ITT EQ
28D3D8:  MOVEQ           R0, #0
28D3DA:  BXEQ            LR
28D3DC:  LDR             R0, [R0,#0xC]
28D3DE:  MOVS            R3, #0
28D3E0:  ADDS            R0, #0xC
28D3E2:  B               loc_28D3F0
28D3E4:  ADDS            R3, #1
28D3E6:  ADDS            R0, #0x14
28D3E8:  CMP             R3, R12
28D3EA:  ITT CS
28D3EC:  MOVCS           R0, #0
28D3EE:  BXCS            LR
28D3F0:  LDR.W           R2, [R0,#-8]
28D3F4:  CMP             R2, R1
28D3F6:  BNE             loc_28D3E4
28D3F8:  LDR.W           R2, [R0,#-0xC]
28D3FC:  CMP             R2, #0xF
28D3FE:  BLE             loc_28D3E4
28D400:  VMOV.F32        S0, #-0.5
28D404:  VLDR            S2, [R0]
28D408:  MOVS            R0, #0
28D40A:  VCMPE.F32       S2, S0
28D40E:  VMRS            APSR_nzcv, FPSCR
28D412:  IT LT
28D414:  MOVLT           R0, #1
28D416:  BX              LR
