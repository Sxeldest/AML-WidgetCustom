; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard18InternalImplementsE10HIDMapping
; Address            : 0x29513E - 0x29516A
; =========================================================

29513E:  LDR.W           R12, [R0,#8]
295142:  CMP.W           R12, #0
295146:  ITT EQ
295148:  MOVEQ           R0, #0
29514A:  BXEQ            LR
29514C:  LDR             R0, [R0,#0xC]
29514E:  MOVS            R3, #0
295150:  ADDS            R0, #4
295152:  LDR             R2, [R0]
295154:  CMP             R2, R1
295156:  ITT EQ
295158:  MOVEQ           R0, #1
29515A:  BXEQ            LR
29515C:  ADDS            R3, #1
29515E:  ADDS            R0, #0x14
295160:  CMP             R3, R12
295162:  ITT CS
295164:  MOVCS           R0, #0
295166:  BXCS            LR
295168:  B               loc_295152
