; =========================================================
; Game Engine Function: sub_F9444
; Address            : 0xF9444 - 0xF9470
; =========================================================

F9444:  PUSH            {R4,R5,R7,LR}
F9446:  ADD             R7, SP, #8
F9448:  LDR             R0, =(off_23494C - 0xF9456)
F944A:  MOV             R5, #0x2FE59D
F9452:  ADD             R0, PC; off_23494C
F9454:  LDR             R4, [R0]; dword_23DF24
F9456:  LDR             R0, [R4]
F9458:  ADD             R0, R5
F945A:  ADDS            R0, #0x84
F945C:  BLX             R0
F945E:  LDR             R0, [R4]
F9460:  ADD             R0, R5
F9462:  ADDS            R0, #0x1E
F9464:  BLX             R0
F9466:  LDR             R0, [R4]
F9468:  ADD             R0, R5
F946A:  POP.W           {R4,R5,R7,LR}
F946E:  BX              R0
