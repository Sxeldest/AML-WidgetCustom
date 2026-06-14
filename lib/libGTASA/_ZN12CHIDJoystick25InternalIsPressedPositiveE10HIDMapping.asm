; =========================================================
; Game Engine Function: _ZN12CHIDJoystick25InternalIsPressedPositiveE10HIDMapping
; Address            : 0x28D384 - 0x28D3CE
; =========================================================

28D384:  LDR.W           R12, [R0,#8]
28D388:  CMP.W           R12, #0
28D38C:  ITT EQ
28D38E:  MOVEQ           R0, #0
28D390:  BXEQ            LR
28D392:  LDR             R0, [R0,#0xC]
28D394:  MOVS            R3, #0
28D396:  ADDS            R0, #0xC
28D398:  B               loc_28D3A6
28D39A:  ADDS            R3, #1
28D39C:  ADDS            R0, #0x14
28D39E:  CMP             R3, R12
28D3A0:  ITT CS
28D3A2:  MOVCS           R0, #0
28D3A4:  BXCS            LR
28D3A6:  LDR.W           R2, [R0,#-8]
28D3AA:  CMP             R2, R1
28D3AC:  BNE             loc_28D39A
28D3AE:  LDR.W           R2, [R0,#-0xC]
28D3B2:  CMP             R2, #0xF
28D3B4:  BLE             loc_28D39A
28D3B6:  VMOV.F32        S0, #0.5
28D3BA:  VLDR            S2, [R0]
28D3BE:  MOVS            R0, #0
28D3C0:  VCMPE.F32       S2, S0
28D3C4:  VMRS            APSR_nzcv, FPSCR
28D3C8:  IT GT
28D3CA:  MOVGT           R0, #1
28D3CC:  BX              LR
