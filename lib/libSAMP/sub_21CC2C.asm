; =========================================================
; Game Engine Function: sub_21CC2C
; Address            : 0x21CC2C - 0x21CC62
; =========================================================

21CC2C:  PUSH            {R4,R5,R7,LR}
21CC2E:  ADD             R7, SP, #8
21CC30:  MOV             R5, R0
21CC32:  LDR             R0, [R0,#8]
21CC34:  MOV             R4, R1
21CC36:  CBZ             R0, loc_21CC56
21CC38:  LDR             R1, [R0]
21CC3A:  LDR             R2, [R1,#0x10]
21CC3C:  MOV             R1, R4
21CC3E:  BLX             R2
21CC40:  LDR             R0, [R5,#8]
21CC42:  MOV             R1, R4
21CC44:  BL              sub_217AE2
21CC48:  CBNZ            R0, loc_21CC56
21CC4A:  LDR             R1, =(asc_84C32 - 0x21CC52); " " ...
21CC4C:  MOV             R0, R4
21CC4E:  ADD             R1, PC; " "
21CC50:  ADDS            R2, R1, #1
21CC52:  BL              sub_216F98
21CC56:  LDR             R0, [R5,#0xC]
21CC58:  MOV             R1, R4
21CC5A:  POP.W           {R4,R5,R7,LR}
21CC5E:  B.W             sub_2154CC
