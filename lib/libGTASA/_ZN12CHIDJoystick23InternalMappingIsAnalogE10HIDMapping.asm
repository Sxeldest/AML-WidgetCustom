; =========================================================
; Game Engine Function: _ZN12CHIDJoystick23InternalMappingIsAnalogE10HIDMapping
; Address            : 0x28D4CC - 0x28D4FA
; =========================================================

28D4CC:  LDR.W           R12, [R0,#8]
28D4D0:  CMP.W           R12, #0
28D4D4:  BEQ             loc_28D4F6
28D4D6:  LDR             R0, [R0,#0xC]
28D4D8:  MOVS            R3, #0
28D4DA:  ADDS            R0, #4
28D4DC:  LDR             R2, [R0]
28D4DE:  CMP             R2, R1
28D4E0:  BNE             loc_28D4EE
28D4E2:  LDR.W           R2, [R0,#-4]
28D4E6:  CMP             R2, #0xF
28D4E8:  ITT GT
28D4EA:  MOVGT           R0, #1
28D4EC:  BXGT            LR
28D4EE:  ADDS            R3, #1
28D4F0:  ADDS            R0, #0x14
28D4F2:  CMP             R3, R12
28D4F4:  BCC             loc_28D4DC
28D4F6:  MOVS            R0, #0
28D4F8:  BX              LR
