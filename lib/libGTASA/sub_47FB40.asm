; =========================================================
; Game Engine Function: sub_47FB40
; Address            : 0x47FB40 - 0x47FB60
; =========================================================

47FB40:  PUSH            {R4,R6,R7,LR}
47FB42:  ADD             R7, SP, #8
47FB44:  LDRB.W          R1, [R0,#0x4A]
47FB48:  LDR.W           R4, [R0,#0x180]
47FB4C:  CMP             R1, #0
47FB4E:  ITTT NE
47FB50:  LDRNE.W         R1, [R0,#0x1A8]
47FB54:  LDRNE           R1, [R1,#8]
47FB56:  BLXNE           R1
47FB58:  LDR             R0, [R4,#0xC]
47FB5A:  ADDS            R0, #1
47FB5C:  STR             R0, [R4,#0xC]
47FB5E:  POP             {R4,R6,R7,PC}
