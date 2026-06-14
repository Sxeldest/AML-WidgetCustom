; =========================================================
; Game Engine Function: sub_108EF8
; Address            : 0x108EF8 - 0x108F28
; =========================================================

108EF8:  PUSH            {R4,R6,R7,LR}
108EFA:  ADD             R7, SP, #8
108EFC:  LDR             R1, =(aAxl - 0x108F08); "AXL" ...
108EFE:  MOV             R4, R0
108F00:  LDR             R2, =(aGamepreparetra - 0x108F0A); "GamePrepareTrain" ...
108F02:  MOVS            R0, #4; prio
108F04:  ADD             R1, PC; "AXL"
108F06:  ADD             R2, PC; "GamePrepareTrain"
108F08:  BLX             __android_log_print
108F0C:  LDR.W           R0, [R4,#0x464]
108F10:  CBZ             R0, locret_108F26
108F12:  LDR.W           R1, [R0,#0x59C]
108F16:  CMP             R1, #2
108F18:  BCC             locret_108F26
108F1A:  LDR             R1, [R0]
108F1C:  LDR             R1, [R1,#4]
108F1E:  BLX             R1
108F20:  MOVS            R0, #0
108F22:  STR.W           R0, [R4,#0x464]
108F26:  POP             {R4,R6,R7,PC}
