; =========================================================
; Game Engine Function: sub_20E598
; Address            : 0x20E598 - 0x20E5B6
; =========================================================

20E598:  PUSH            {R4,R6,R7,LR}
20E59A:  ADD             R7, SP, #8
20E59C:  MOV             R4, R0
20E59E:  BL              sub_20E5C8
20E5A2:  LDR             R1, [R4]
20E5A4:  CBZ             R1, loc_20E5B2
20E5A6:  LDRD.W          R2, R0, [R4,#0xC]
20E5AA:  SUBS            R2, R2, R1
20E5AC:  ASRS            R2, R2, #2
20E5AE:  BL              sub_20E22A
20E5B2:  MOV             R0, R4
20E5B4:  POP             {R4,R6,R7,PC}
