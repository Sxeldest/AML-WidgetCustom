; =========================================================
; Game Engine Function: sub_152A9A
; Address            : 0x152A9A - 0x152ABA
; =========================================================

152A9A:  PUSH            {R7,LR}
152A9C:  MOV             R7, SP
152A9E:  SUB             SP, SP, #8
152AA0:  STRH.W          R1, [R7,#-2]
152AA4:  CBZ             R1, loc_152AB4
152AA6:  ADDS            R0, #0xC
152AA8:  SUBS            R1, R7, #2
152AAA:  BL              sub_15426C
152AAE:  CBZ             R0, loc_152AB4
152AB0:  LDR             R0, [R0,#0xC]
152AB2:  B               loc_152AB6
152AB4:  MOVS            R0, #0
152AB6:  ADD             SP, SP, #8
152AB8:  POP             {R7,PC}
