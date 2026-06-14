; =========================================================
; Game Engine Function: sub_F5398
; Address            : 0xF5398 - 0xF53CE
; =========================================================

F5398:  PUSH            {R4,R5,R7,LR}
F539A:  ADD             R7, SP, #8
F539C:  LDR             R4, =(dword_240084 - 0xF53A2)
F539E:  ADD             R4, PC; dword_240084
F53A0:  MOV             R5, R4
F53A2:  MOV             R0, R4
F53A4:  LDR.W           R1, [R5,#(dword_240088 - 0x240084)]!
F53A8:  BL              sub_F5474
F53AC:  LDR             R1, =(aAxl - 0xF53B8); "AXL" ...
F53AE:  MOVS            R3, #0
F53B0:  LDR             R2, =(aDefaulthandlin - 0xF53BC); "[DefaultHandling]: call install" ...
F53B2:  LDR             R0, =(byte_240090 - 0xF53BE)
F53B4:  ADD             R1, PC; "AXL"
F53B6:  STR             R3, [R5]
F53B8:  ADD             R2, PC; "[DefaultHandling]: call install"
F53BA:  ADD             R0, PC; byte_240090
F53BC:  STR             R3, [R4,#(dword_24008C - 0x240084)]
F53BE:  MOVS            R3, #1
F53C0:  STR             R5, [R4]
F53C2:  STRB            R3, [R0]
F53C4:  MOVS            R0, #3
F53C6:  POP.W           {R4,R5,R7,LR}
F53CA:  B.W             sub_2242C8
