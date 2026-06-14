; =========================================================
; Game Engine Function: sub_182EE6
; Address            : 0x182EE6 - 0x182F10
; =========================================================

182EE6:  PUSH            {R4,R5,R7,LR}
182EE8:  ADD             R7, SP, #8
182EEA:  SUB             SP, SP, #8
182EEC:  SUB.W           R2, R7, #-var_9
182EF0:  MOV             R5, R0
182EF2:  BL              sub_182454
182EF6:  MOV             R4, R0
182EF8:  LDRB.W          R0, [R7,#var_9]
182EFC:  CBZ             R0, loc_182F08
182EFE:  MOV             R0, R5
182F00:  MOV             R1, R4
182F02:  BL              sub_186EE8
182F06:  B               loc_182F0A
182F08:  MOVS            R4, #0
182F0A:  MOV             R0, R4
182F0C:  ADD             SP, SP, #8
182F0E:  POP             {R4,R5,R7,PC}
