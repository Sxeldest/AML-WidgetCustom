; =========================================================
; Game Engine Function: _ZN12CHIDJoystick18InternalImplementsE10HIDMapping
; Address            : 0x28CDCA - 0x28CDF6
; =========================================================

28CDCA:  LDR.W           R12, [R0,#8]
28CDCE:  CMP.W           R12, #0
28CDD2:  ITT EQ
28CDD4:  MOVEQ           R0, #0
28CDD6:  BXEQ            LR
28CDD8:  LDR             R0, [R0,#0xC]
28CDDA:  MOVS            R3, #0
28CDDC:  ADDS            R0, #4
28CDDE:  LDR             R2, [R0]
28CDE0:  CMP             R2, R1
28CDE2:  ITT EQ
28CDE4:  MOVEQ           R0, #1
28CDE6:  BXEQ            LR
28CDE8:  ADDS            R3, #1
28CDEA:  ADDS            R0, #0x14
28CDEC:  CMP             R3, R12
28CDEE:  ITT CS
28CDF0:  MOVCS           R0, #0
28CDF2:  BXCS            LR
28CDF4:  B               loc_28CDDE
