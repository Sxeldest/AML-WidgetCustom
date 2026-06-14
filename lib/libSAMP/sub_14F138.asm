; =========================================================
; Game Engine Function: sub_14F138
; Address            : 0x14F138 - 0x14F160
; =========================================================

14F138:  PUSH            {R4,R5,R7,LR}
14F13A:  ADD             R7, SP, #8
14F13C:  MOVW            R1, #0x240C; n
14F140:  MOV             R4, R0
14F142:  BLX             sub_22178C
14F146:  ADD.W           R5, R4, #0x2400
14F14A:  MOV             R0, R5
14F14C:  MOV.W           R1, #0x900
14F150:  BL              sub_14F170
14F154:  BL              sub_108C20
14F158:  MOVS            R0, #0
14F15A:  STR             R0, [R5,#0xC]
14F15C:  MOV             R0, R4
14F15E:  POP             {R4,R5,R7,PC}
