; =========================================================
; Game Engine Function: sub_F93B0
; Address            : 0xF93B0 - 0xF93EA
; =========================================================

F93B0:  PUSH            {R7,LR}
F93B2:  MOV             R7, SP
F93B4:  LDR             R1, =(aAxl - 0xF93BE); "AXL" ...
F93B6:  MOVS            R0, #4; prio
F93B8:  LDR             R2, =(aStartingGame - 0xF93C0); "Starting game.." ...
F93BA:  ADD             R1, PC; "AXL"
F93BC:  ADD             R2, PC; "Starting game.."
F93BE:  BLX             __android_log_print
F93C2:  LDR             R0, =(off_23494C - 0xF93D0)
F93C4:  MOV             R1, #0x2A7201
F93CC:  ADD             R0, PC; off_23494C
F93CE:  LDR             R0, [R0]; dword_23DF24
F93D0:  LDR             R0, [R0]
F93D2:  ADD             R0, R1
F93D4:  BLX             R0
F93D6:  BL              sub_F80FC
F93DA:  BL              sub_103978
F93DE:  BL              sub_107328
F93E2:  POP.W           {R7,LR}
F93E6:  B.W             sub_F84E4
