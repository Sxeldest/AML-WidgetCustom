; =========================================================
; Game Engine Function: sub_154EF2
; Address            : 0x154EF2 - 0x154F18
; =========================================================

154EF2:  PUSH            {R4,R6,R7,LR}
154EF4:  ADD             R7, SP, #8
154EF6:  MOV             R4, R0
154EF8:  LDR.W           R1, [R0,#0x58]!
154EFC:  MOVS            R2, #0
154EFE:  STR             R2, [R0]
154F00:  CBZ             R1, loc_154F06
154F02:  BL              sub_1561D2
154F06:  LDR             R0, [R4,#0x5C]
154F08:  BL              sub_157E92
154F0C:  ADD.W           R0, R4, #0x14
154F10:  POP.W           {R4,R6,R7,LR}
154F14:  B.W             sub_15BE94
