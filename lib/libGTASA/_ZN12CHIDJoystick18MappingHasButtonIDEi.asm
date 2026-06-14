; =========================================================
; Game Engine Function: _ZN12CHIDJoystick18MappingHasButtonIDEi
; Address            : 0x28D4A2 - 0x28D4CC
; =========================================================

28D4A2:  LDR.W           R12, [R0,#8]
28D4A6:  CMP.W           R12, #0
28D4AA:  ITT EQ
28D4AC:  MOVEQ           R0, #0
28D4AE:  BXEQ            LR
28D4B0:  LDR             R0, [R0,#0xC]
28D4B2:  MOVS            R3, #0
28D4B4:  LDR             R2, [R0]
28D4B6:  CMP             R2, R1
28D4B8:  ITT EQ
28D4BA:  MOVEQ           R0, #1
28D4BC:  BXEQ            LR
28D4BE:  ADDS            R3, #1
28D4C0:  ADDS            R0, #0x14
28D4C2:  CMP             R3, R12
28D4C4:  ITT CS
28D4C6:  MOVCS           R0, #0
28D4C8:  BXCS            LR
28D4CA:  B               loc_28D4B4
