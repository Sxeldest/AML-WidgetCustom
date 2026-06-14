; =========================================================
; Game Engine Function: sub_E7238
; Address            : 0xE7238 - 0xE7264
; =========================================================

E7238:  LDRD.W          R2, R1, [R0,#0x14]
E723C:  MOVS            R3, #1
E723E:  STRB            R3, [R0,#0x10]
E7240:  SUB.W           R2, R2, #1
E7244:  STR             R2, [R0,#0x14]
E7246:  CBZ             R1, loc_E724E
E7248:  SUBS            R1, #1
E724A:  STR             R1, [R0,#0x18]
E724C:  B               loc_E7256
E724E:  LDR             R1, [R0,#0x1C]
E7250:  CBZ             R1, loc_E7256
E7252:  SUBS            R1, #1
E7254:  STR             R1, [R0,#0x1C]
E7256:  LDR             R1, [R0,#0xC]
E7258:  ADDS            R1, #1
E725A:  ITTT NE
E725C:  LDRNE           R1, [R0,#0x24]
E725E:  SUBNE           R1, #1
E7260:  STRNE           R1, [R0,#0x24]
E7262:  BX              LR
